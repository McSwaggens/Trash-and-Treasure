/*
 * Copyright 2016 BurntGameProductions
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.pathtomani.entities.projectile;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.ContactImpulse;
import com.badlogic.gdx.physics.box2d.Fixture;
import com.pathtomani.game.*;
import com.pathtomani.managers.dra.Dra;
import com.pathtomani.gfx.particle.LightSrc;
import com.pathtomani.gfx.ManiColor;
import com.pathtomani.common.ManiMath;
import com.pathtomani.managers.dra.DraLevel;
import com.pathtomani.managers.dra.RectSprite;
import com.pathtomani.entities.item.Shield;
import com.pathtomani.gfx.particle.EffectConfig;
import com.pathtomani.gfx.particle.ParticleSrc;
import com.pathtomani.entities.ship.ManiShip;
import com.pathtomani.managers.sound.ManiSound;

import java.util.ArrayList;
import java.util.List;

public class
  Projectile implements ManiObject {

  private static final float MIN_ANGLE_TO_GUIDE = 2f;
  private final ArrayList<Dra> myDras;
  private final ProjectileBody myBody;
  private final Faction myFaction;
  private final ParticleSrc myBodyEffect;
  private final ParticleSrc myTrailEffect;
  private final LightSrc myLightSrc;
  private final ProjectileConfig myConfig;

  private boolean myShouldRemove;
  private ManiObject myObstacle;
  private boolean myDamageDealt;

  public Projectile(ManiGame game, float angle, Vector2 muzzlePos, Vector2 gunSpd, Faction faction,
                    ProjectileConfig config, boolean varySpd)
  {
    myDras = new ArrayList<Dra>();
    myConfig = config;

    Dra dra;
    if (myConfig.stretch) {
      dra = new MyDra(this, myConfig.tex, myConfig.texSz);
    } else {
      dra = new RectSprite(myConfig.tex, myConfig.texSz, myConfig.origin.x, myConfig.origin.y, new Vector2(), DraLevel.PROJECTILES, 0, 0, ManiColor.W, false);
    }
    myDras.add(dra);
    float spdLen = myConfig.spdLen;
    if (varySpd) spdLen *= ManiMath.rnd(.9f, 1.1f);
    if (myConfig.physSize > 0) {
      myBody = new BallProjectileBody(game, muzzlePos, angle, this, gunSpd, spdLen, myConfig);
    } else {
      myBody = new PointProjectileBody(angle, muzzlePos, gunSpd, spdLen, this, game, myConfig.acc);
    }
    myFaction = faction;
    myBodyEffect = buildEffect(game, myConfig.bodyEffect, DraLevel.PART_BG_0, null, true);
    myTrailEffect = buildEffect(game, myConfig.trailEffect, DraLevel.PART_BG_0, null, false);
    if (myConfig.lightSz > 0) {
      Color col = ManiColor.W;
      if (myBodyEffect != null) col = myConfig.bodyEffect.tint;
      myLightSrc = new LightSrc(game, myConfig.lightSz, true, 1f, new Vector2(), col);
      myLightSrc.collectDras(myDras);
    } else {
      myLightSrc = null;
    }
  }

  private ParticleSrc buildEffect(ManiGame game, EffectConfig ec, DraLevel draLevel, Vector2 pos, boolean inheritsSpd) {
    if (ec == null) return null;
    ParticleSrc res = new ParticleSrc(ec, -1, draLevel, new Vector2(), inheritsSpd, game, pos, myBody.getSpd(), 0);
    if (res.isContinuous()) {
      res.setWorking(true);
      myDras.add(res);
    } else {
      game.getPartMan().finish(game, res, pos);
    }
    return res;
  }

  @Override
  public void update(ManiGame game) {
    myBody.update(game);
    if (myObstacle != null) {
      if (!myDamageDealt) myObstacle.receiveDmg(myConfig.dmg, game, myBody.getPos(), myConfig.dmgType);
      if (myConfig.density > 0) {
        myObstacle = null;
        myDamageDealt = true;
      } else {
        collided(game);
        if (myConfig.emTime > 0 && myObstacle instanceof ManiShip) ((ManiShip) myObstacle).disableControls(myConfig.emTime, game);
        return;
      }
    }
    if (myLightSrc != null) myLightSrc.update(true, myBody.getAngle(), game);
    maybeGuide(game);
    ManiSound ws = myConfig.workSound;
    game.getSoundMan().play(game, ws, null, this);
  }

  private void maybeGuide(ManiGame game) {
    if (myConfig.guideRotSpd == 0) return;
    float ts = game.getTimeStep();
    ManiShip ne = game.getFactionMan().getNearestEnemy(game, this);
    if (ne == null) return;
    float desiredAngle = myBody.getDesiredAngle(ne);
    float angle = getAngle();
    float diffAngle = ManiMath.norm(desiredAngle - angle);
    if (ManiMath.abs(diffAngle) < MIN_ANGLE_TO_GUIDE) return;
    float rot = ts * myConfig.guideRotSpd;
    diffAngle = ManiMath.clamp(diffAngle, -rot, rot);
    myBody.changeAngle(diffAngle);
  }

  private void collided(ManiGame game) {
    myShouldRemove = true;
    Vector2 pos = myBody.getPos();
    buildEffect(game, myConfig.collisionEffect, DraLevel.PART_FG_1, pos, false);
    buildEffect(game, myConfig.collisionEffectBg, DraLevel.PART_FG_0, pos, false);
    if (myConfig.collisionEffectBg != null) {
      game.getPartMan().blinks(pos, game, myConfig.collisionEffectBg.sz);
    }
    game.getSoundMan().play(game, myConfig.collisionSound, null, this);
  }

  @Override
  public boolean shouldBeRemoved(ManiGame game) {
    return myShouldRemove;
  }

  @Override
  public void onRemove(ManiGame game) {
    Vector2 pos = myBody.getPos();
    if (myBodyEffect != null) game.getPartMan().finish(game, myBodyEffect, pos);
    if (myTrailEffect != null) game.getPartMan().finish(game, myTrailEffect, pos);
    myBody.onRemove(game);
  }

  @Override
  public void receiveDmg(float dmg, ManiGame game, Vector2 pos, DmgType dmgType) {
    if (myConfig.density > 0) return;
    collided(game);
  }

  @Override
  public boolean receivesGravity() {
    return !myConfig.massless;
  }

  @Override
  public void receiveForce(Vector2 force, ManiGame game, boolean acc) {
    myBody.receiveForce(force, game, acc);
  }

  @Override
  public Vector2 getPosition() {
    return myBody.getPos();
  }

  @Override
  public FarObj toFarObj() {
    return null;
  }

  @Override
  public List<Dra> getDras() {
    return myDras;
  }

  @Override
  public float getAngle() {
    return myBody.getAngle();
  }

  @Override
  public Vector2 getSpd() {
    return myBody.getSpd();
  }

  @Override
  public void handleContact(ManiObject other, ContactImpulse impulse, boolean isA, float absImpulse,
                            ManiGame game, Vector2 collPos)
  {
  }

  @Override
  public String toDebugString() {
    return null;
  }

  @Override
  public Boolean isMetal() {
    return null;
  }

  @Override
  public boolean hasBody() {
    return true;
  }

  public Faction getFaction() {
    return myFaction;
  }

  public boolean shouldCollide(ManiObject o, Fixture f, FactionManager factionManager) {
    if (o instanceof ManiShip) {
      ManiShip s = (ManiShip) o;
      if (!factionManager.areEnemies(s.getPilot().getFaction(), myFaction)) return false;
      if (s.getHull().getShieldFixture() == f) {
        if (myConfig.density > 0) return false;
        Shield shield = s.getShield();
        if (shield == null || !shield.canAbsorb(myConfig.dmgType)) return false;
      }
      return true;
    }
    if (o instanceof Projectile) {
      if (!factionManager.areEnemies(((Projectile) o).myFaction, myFaction)) return false;
    }
    return true;
  }

  public void setObstacle(ManiObject o, ManiGame game) {
    if (!shouldCollide(o, null, game.getFactionMan())) return; // happens for some reason when projectile is just created
    myObstacle = o;
  }

  public boolean isMassless() {
    return myConfig.massless;
  }

  public ProjectileConfig getConfig() {
    return myConfig;
  }


  private static class MyDra implements Dra {
    private final Projectile myProjectile;
    private final TextureAtlas.AtlasRegion myTex;
    private final float myWidth;

    public MyDra(Projectile projectile, TextureAtlas.AtlasRegion tex, float width) {
      myProjectile = projectile;
      myTex = tex;
      myWidth = width;
    }

    @Override
    public Texture getTex0() {
      return myTex.getTexture();
    }

    @Override
    public TextureAtlas.AtlasRegion getTex() {
      return myTex;
    }

    @Override
    public DraLevel getLevel() {
      return DraLevel.PROJECTILES;
    }

    @Override
    public void update(ManiGame game, ManiObject o) {
    }

    @Override
    public void prepare(ManiObject o) {
    }

    @Override
    public Vector2 getPos() {
      return myProjectile.getPosition();
    }

    @Override
    public Vector2 getRelPos() {
      return Vector2.Zero;
    }

    @Override
    public float getRadius() {
      return myProjectile.myConfig.texSz/2;
    }

    @Override
    public void draw(GameDrawer drawer, ManiGame game) {
      float h = myWidth;
      float minH = game.getCam().getRealLineWidth() * 3;
      if (h < minH) h = minH;
      Vector2 pos = myProjectile.getPosition();
      float w = myProjectile.getSpd().len() * game.getTimeStep();
      if (w < 4 * h) w = 4 * h;
      drawer.draw(myTex, w, h, w, h / 2, pos.x, pos.y, ManiMath.angle(myProjectile.getSpd()), ManiColor.LG);
    }

    @Override
    public boolean isEnabled() {
      return true;
    }

    @Override
    public boolean okToRemove() {
      return false;
    }

  }

}
