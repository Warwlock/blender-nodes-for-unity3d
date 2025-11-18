# Blender Nodes for Unity
Blender Nodes for Unity adds general nodes from Blender to Unity Shader Graph like textures, converters. There can be little difference like the generated texture coordinate. But I hope this documentation helps out a little bit.

Getting Started
-----------
## Compability
You will need Unity version 2021.3 and above.  
Example assets made in URP but all subgraph should work HDRP and Built-In versions too.  
Some of subgraphs uses dropdown menu from Shader Graph 12. So be sure you downloaded Shader Graph version 12.

## Installation
- Open the **Package Manager** and select **Add package from git URL** from the add menu.
- Enter **https://github.com/Warwlock/blender-nodes-for-unity3d.git** to install this package.
- If Unity could not find **git**, consider installing it [here](https://git-scm.com/downloads).
- Under a shader graph, create new node and look under "Blender Nodes".

Example Assets
-----------
### Example Scenes
You can find samples inside Package Manager, and click the `Samples` tab. Then import the samples.

#### 4D Noise
An example of Noise Texture Node in 4D mode.
#### Blender Procedural Node
An example of usage of nodes and creating procedural shapes.
#### Magic Texture Example
An example about magic texture.

Create Your First Blender Nodes Shader Graph
-----------
1. First select a folder for locate your shader graph, create it with `Right Click > Create > Shader Graph` and open it.  
2. In the shader graph window, open create node menu and type `Noise Texture` and add it.  
3. Open create node menu again and type `Texture Coordinate` (or write only `Coordinate` for access faster) and add it.  
4. Now connect `Texture Coordinate Object Output` to `Noise Texture Vector Input` and connect `Noise Texture Color Output` to `Fragment Base Color Input`.