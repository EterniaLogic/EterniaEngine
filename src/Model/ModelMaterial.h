#ifndef ModelMaterial_h
#define ModelMaterial_h

#define COUT_MAT_DEBUG

#ifdef COUT_MAT_DEBUG
	#define debugLogmm(s) cout << s << endl; cout.flush()
#else
	#define debugLogmm(s)  //nothing
#endif

#include "../Shaders.h"

#include <Eternia/Math/struct/vertex.h>
#include <Eternia/Data/CharString.h>
#include <Eternia/Data/LinkedList.hpp>
#include <Eternia/Data/LinkedListT.h>
#include <Eternia/Parsing/SimpleParser.h>

#include <stdlib.h>
#include <GL/glew.h>
#include <GL/gl.h>
#include <GL/glext.h>
#include <vector>
#include <malloc.h>
#include <math.h>

#define NULL_VERTEX1 vertex(9.0e99,9.0e99,9.0e99)

//#include <fbxsdk.h>
#include "glsl.h"
#include <list>
#include "../Helper/AnimatedObject.h"
#include "../Sprite2D/Sprite2D.h"

//using namespace Magick++;

class ModelMaterial : public AnimatedObject {
    public:
        ModelMaterial();
        static LinkedList<ModelMaterial>* loadFromMtl(CharString materialFile); // partnered with .obj
        void draw(); // pre-draw this material before the model is loaded.
        
        
        // Animate ALL the map images, called by Model::animateTick
        void animateTick(long timeMillis);

        CharString name;

        // direct values
        vertex AmbientColor, DiffuseColor, SpecularColor, EmitColor, ModelColor;

        double Shininess, Alpha;
        short Illumination; // illumination model

        // 2D cubic Maps
        Sprite2D ColorMap, DiffuseMap, SpecularMap, EmitMap, AlphaMap, BumpMap, ShinyMap, MirrorMap;
};

#endif
