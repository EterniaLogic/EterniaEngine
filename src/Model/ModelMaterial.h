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
#include <Eternia/Data/FileFormat/MTL.h>
#include <Eternia/Design/Model/IMaterial.h>
#include <Eternia/Parsing/SimpleParser.h>

#include <stdlib.h>
#include <GL/glew.h>
#include <GL/gl.h>
#include <GL/glext.h>
#include <vector>
#include <malloc.h>
#include <math.h>

//#include <fbxsdk.h>
#include "glsl.h"
#include <list>
#include "../Helper/AnimatedObject.h"
#include "../Sprite2D/Sprite2D.h"

using namespace Math;


class ModelMaterial : public AnimatedObject, public IMaterial {
    public:
        ModelMaterial();
        void draw(); // pre-draw this material before the model is loaded.
        
        
        // Animate ALL the map images, called by Model::animateTick
        void animateTick(long timeMillis);


        // 2D cubic Maps (loaded from ColorMap_loc, etc.)
        Sprite2D ColorMap, DiffuseMap, SpecularMap, EmitMap, AlphaMap, BumpMap, ShinyMap, MirrorMap;
};

#endif
