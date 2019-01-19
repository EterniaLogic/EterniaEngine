#include "Model.h"



void Model::loadFromObj(CharString objFile) {
    IModel* m = OBJ::loadFromFile(objFile);
    //*this = *m;
}


// Obj Schema:
/*       # www.blender.org                  << Comment line
         mtllib untitled.mtl                << material file relative to object file
         o Cube
         v 1.000000 -1.000000 -1.000000       Vertex 1
         v 1.000000 -1.000000 1.000000        Vertex 2
         v -1.000000 -1.000000 1.000000       Vertex 3
         v -1.000000 -1.000000 -1.000000      Vertex 4
         v 1.000000 1.000000 -0.999999        Vertex 5
         v 0.999999 1.000000 1.000001         Vertex 6
         v -1.000000 1.000000 1.000000        Vertex 7
         v -1.000000 1.000000 -1.000000       Vertex 8
         usemtl Material                     << usemtl from the mtllib
         s off
         f 1 2 3 4                           << Face for vertex 1, 2, 3 and 4
         f 5 8 7 6                           << Face for vertex 5, 8, 7 and 6
         f 1 5 6 2
         f 2 6 7 3
         f 3 7 8 4
         f 5 1 4 8


         vt 0.500 1 [0]                      << Texture coordiante
 */
