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

package com.pathtomani.entities.maze;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.pathtomani.managers.files.HullConfigManager;
import com.pathtomani.gfx.TextureManager;
import com.pathtomani.managers.files.FileManager;
import com.pathtomani.entities.item.ItemManager;

import java.util.ArrayList;
import java.util.List;

public class MazeConfigs {
  public final List<MazeConfig> configs;

  public MazeConfigs(TextureManager textureManager, HullConfigManager hullConfigs, ItemManager itemManager) {
    configs = new ArrayList<MazeConfig>();

    JsonReader r = new JsonReader();
    FileHandle configFile = FileManager.getInstance().getConfigDirectory().child("mazes.json");
    JsonValue mazesNode = r.parse(configFile);
    for (JsonValue mazeNode : mazesNode) {
      MazeConfig c = MazeConfig.load(textureManager, hullConfigs, mazeNode, configFile, itemManager);
      configs.add(c);
    }
  }
}
