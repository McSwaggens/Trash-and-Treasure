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

package com.pathtomani.entities.item;

import com.badlogic.gdx.graphics.Color;
import com.pathtomani.managers.sound.ManiSound;

public class ManiItemType {
  public final Color color;
  public final ManiSound pickUpSound;
  public final Color uiColor;
  public final float sz;

  public ManiItemType(Color color, ManiSound pickUpSound, float sz) {
    this.color = color;
    this.sz = sz;
    uiColor = new Color(color);
    uiColor.a = .3f;
    this.pickUpSound = pickUpSound;
  }

}
