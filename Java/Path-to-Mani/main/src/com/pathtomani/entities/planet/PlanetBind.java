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

package com.pathtomani.entities.planet;

import com.badlogic.gdx.math.Vector2;
import com.pathtomani.common.ManiMath;
import com.pathtomani.game.ManiGame;

public class PlanetBind {
  private final Planet myPlanet;
  private final Vector2 myRelPos;
  private final float myRelAngle;

  public PlanetBind(Planet planet, Vector2 pos, float angle) {
    myPlanet = planet;
    myRelPos = new Vector2();
    float planetAngle = planet.getAngle();
    ManiMath.toRel(pos, myRelPos, planetAngle, planet.getPos());
    myRelAngle = angle - planetAngle;
  }

  public void setDiff(Vector2 diff, Vector2 pos, boolean precise) {
    ManiMath.toWorld(diff, myRelPos, myPlanet.getAngle(), myPlanet.getPos(), precise);
    diff.sub(pos);
  }

  public float getDesiredAngle() {
    return myPlanet.getAngle() + myRelAngle;
  }

  public static PlanetBind tryBind(ManiGame game, Vector2 pos, float angle) {
    Planet np = game.getPlanetMan().getNearestPlanet(pos);
    if (!np.isNearGround(pos)) return null;
    return new PlanetBind(np, pos, angle);
  }

  public Planet getPlanet() {
    return myPlanet;
  }
}
