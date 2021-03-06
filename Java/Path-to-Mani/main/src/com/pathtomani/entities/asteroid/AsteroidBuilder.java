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

package com.pathtomani.entities.asteroid;

import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.BodyDef;
import com.badlogic.gdx.physics.box2d.CircleShape;
import com.badlogic.gdx.physics.box2d.FixtureDef;
import com.pathtomani.common.ManiMath;
import com.pathtomani.game.ManiGame;
import com.pathtomani.game.RemoveController;
import com.pathtomani.managers.dra.Dra;
import com.pathtomani.common.Const;
import com.pathtomani.gfx.TextureManager;
import com.pathtomani.gfx.ManiColor;
import com.pathtomani.game.PathLoader;
import com.pathtomani.managers.dra.DraLevel;
import com.pathtomani.managers.dra.RectSprite;

import java.util.ArrayList;

public class AsteroidBuilder {
  private static final float MAX_A_ROT_SPD = .5f;
  private static final float MAX_BALL_SZ = .2f;
  public static final float DENSITY = 10f;

  private final PathLoader myPathLoader;
  private final ArrayList<TextureAtlas.AtlasRegion> myTexs;

  public AsteroidBuilder(TextureManager textureManager) {
    myPathLoader = new PathLoader("asteroids");
    myTexs = textureManager.getPack("asteroids/sys", null);
  }

  // doesn't consume pos
  public Asteroid buildNew(ManiGame game, Vector2 pos, Vector2 spd, float sz, RemoveController removeController) {
    float rotSpd = ManiMath.rnd(MAX_A_ROT_SPD);
    return build(game, pos, ManiMath.elemRnd(myTexs), sz, ManiMath.rnd(180), rotSpd, spd, removeController);
  }

  // doesn't consume pos
  public FarAsteroid buildNewFar(Vector2 pos, Vector2 spd, float sz, RemoveController removeController) {
    float rotSpd = ManiMath.rnd(MAX_A_ROT_SPD);
    return new FarAsteroid(ManiMath.elemRnd(myTexs), new Vector2(pos), ManiMath.rnd(180), removeController, sz, new Vector2(spd), rotSpd);
  }

  // doesn't consume pos
  public Asteroid build(ManiGame game, Vector2 pos, TextureAtlas.AtlasRegion tex, float sz, float angle, float rotSpd, Vector2 spd, RemoveController removeController) {

    ArrayList<Dra> dras = new ArrayList<Dra>();
    Body body;
    if (MAX_BALL_SZ < sz) {
      body = myPathLoader.getBodyAndSprite(game, "asteroids", removePath(tex.name) + "_" + tex.index, sz,
        BodyDef.BodyType.DynamicBody, pos, angle, dras, DENSITY, DraLevel.BODIES, tex);
    } else {
      body = buildBall(game, pos, angle, sz/2, DENSITY, false);
      RectSprite s = new RectSprite(tex, sz, 0, 0, new Vector2(), DraLevel.BODIES, 0, 0, ManiColor.W, false);
      dras.add(s);
    }
    body.setAngularVelocity(rotSpd);
    body.setLinearVelocity(spd);

    Asteroid res = new Asteroid(game, tex, body, sz, removeController, dras);
    body.setUserData(res);
    return res;
  }

  public static String removePath(String name) {
    String[] parts = name.split("[/\\\\]");
    return parts[parts.length - 1];
  }

  public static Body buildBall(ManiGame game, Vector2 pos, float angle, float rad, float density, boolean sensor) {
    BodyDef bd = new BodyDef();
    bd.type = BodyDef.BodyType.DynamicBody;
    bd.angle = angle * ManiMath.degRad;
    bd.angularDamping = 0;
    bd.position.set(pos);
    bd.linearDamping = 0;
    Body body = game.getObjMan().getWorld().createBody(bd);
    FixtureDef fd = new FixtureDef();
    fd.density = density;
    fd.friction = Const.FRICTION;
    fd.shape = new CircleShape();
    fd.shape.setRadius(rad);
    fd.isSensor = sensor;
    body.createFixture(fd);
    fd.shape.dispose();
    return body;
  }
}
