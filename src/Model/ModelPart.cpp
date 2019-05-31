#include "ModelPart.h"

ModelPart::ModelPart(){
    indexbuffer = -1;
    vertexbuffer = -1;
}


void ModelPart::draw() {
    // Draw the model to the OpenGL Interface.
    //glPushMatrix();


    glScalef(scale.x,scale.y,scale.z);
    glTranslatef(offset.x, offset.y, offset.z);
    glRotatef(rotate_angle, rotate_axis.x, rotate_axis.y, rotate_axis.z);

    // Load up base shaders if not loaded
    //if(shader == 0x0)
    //    shader = SM.loadfromMemory((const char*)GEN_Shaders::Light_Vertex[0], "", (const char*)GEN_Shaders::Light_Fragment[0]);

    //shader->begin();
    drawMaterial();

    if(buffered) {
        // using VBOs to draw the verticies
        //Render
        // Step 1

        glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, indexbuffer);

        // Step 2
        glEnableClientState(GL_TEXTURE_COORD_ARRAY);
        glEnableClientState(GL_NORMAL_ARRAY);
        glEnableClientState(GL_VERTEX_ARRAY);

        // Step 3
        glTexCoordPointer(3, GL_FLOAT, sizeof(GLfloat)*8, (float*)(sizeof(GLfloat)*5));
        glNormalPointer(GL_FLOAT, sizeof(GLfloat)*8, (float*)(sizeof(GLfloat)*3));
        glVertexPointer(3, GL_FLOAT, sizeof(GLfloat)*8, NULL);

        // Step 4
        glDrawElements(rendermode, vbosize, GL_UNSIGNED_INT, NULL);

        // Step 5
        glDisableClientState(GL_VERTEX_ARRAY);
        glDisableClientState(GL_NORMAL_ARRAY);
        glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    } else {
        glBegin(rendermode); // <-- changes based on model input
        //_drawMaterial();
        


        // Draw verticies
        // loop through Vertex3ds
        LinkedNode<Math::vertex>* current = verticies.top();
        LinkedNode<Math::vertex>* currentn = normals.top();
        LinkedNode<Math::vertex>* currentt = textureCoordinates.top();

        debugLogm("Start Model Render: " << this);
        Math::vertex v;
        while(current != 0x0) {
            if(current->data != 0x0) {
                v = (Math::vertex)current->data;
                debugLogm("Model Vector: " << v << " Vertex: (" << v.x << ", "<< v.y <<"," << v.z<<")");
                // draw Math::vertexs with their perspective offsets
                glVertex3f(v.x, v.y, v.z);

                if(currentt != 0x0) glTexCoord2f(((Math::vertex)currentt->data).x,((Math::vertex)currentt->data).y);
                if(currentn != 0x0) 
                    if(currentn->data != 0x0) 
                        glNormal3f(((Math::vertex)currentn->data).x,((Math::vertex)currentn->data).y,((Math::vertex)currentn->data).z);

                debugLogm("End Vector: " << v);
            }
            current = current->next;
            if(currentt != 0x0) currentt = currentt->next;
            if(currentn != 0x0) currentn = currentn->next;
        }

        glEnd();
    }


    //shader->end();
    //glPopMatrix();
}

#define __draw3DMaterial(MAP, NUM) if(MAP != 0x0 && ((Sprite2D*)MAP)->isLoaded()) ((Sprite2D*)MAP)->draw3D(NUM);

void ModelPart::drawMaterial(){
    // Set color
    // glVertex3f();

    //glBindTexture(GL_TEXTURE_2D, texture);
    glColorMaterial ( GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE ) ;

    __draw3DMaterial(material.ColorMap, 0);
    __draw3DMaterial(material.DiffuseMap, 1);
    __draw3DMaterial(material.SpecularMap, 2);
    __draw3DMaterial(material.AlphaMap, 3);
    __draw3DMaterial(material.ShinyMap, 4);
    __draw3DMaterial(material.BumpMap, 5);
    __draw3DMaterial(material.EmitMap, 6);
    __draw3DMaterial(material.MirrorMap, 7);


    glMaterialf(GL_FRONT_AND_BACK, GL_SHININESS, material.Shininess);

    // set
    if(material.AmbientColor != NULL_VERTEX) {
        /*GLint loc = glGetUniformLocation(shaderx, "ambient");
        if (loc != -1) glUniform3f(loc, , AmbientColor.y, AmbientColor.z);*/

        GLfloat material_Ka[] = {material.AmbientColor.x, material.AmbientColor.y, material.AmbientColor.z, 1.0f};
        glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT, material_Ka);

        // set color
        glColor3f(material_Ka[0], material_Ka[1], material_Ka[2]);

        //free(amb_light);
        //cout << "ambient" << amb_light[0] << amb_light[1] << endl;
    }

    if(material.DiffuseColor != NULL_VERTEX) {
        /*GLint loc = glGetUniformLocation(shaderx, "diffuse");
        if (loc != -1) glUniform3f(loc, AmbientDiffuse.x, AmbientDiffuse.y, AmbientDiffuse.z);*/

        GLfloat material_Kd[] = {material.DiffuseColor.x, material.DiffuseColor.y, material.DiffuseColor.z, 1.0f};
        glMaterialfv(GL_FRONT_AND_BACK, GL_DIFFUSE, material_Kd);
    }

    if(material.SpecularColor != NULL_VERTEX) {
        /*GLint loc = glGetUniformLocation(shaderx, "specc");
        if (loc != -1) glUniform3f(loc, SpecularColor.x, SpecularColor.y, SpecularColor.z);*/

        GLfloat material_Ks[] = {material.SpecularColor.x, material.SpecularColor.y, material.SpecularColor.z, 1.0f};
        glMaterialfv(GL_FRONT_AND_BACK, GL_SPECULAR, material_Ks);
    }

    if(material.EmitColor != NULL_VERTEX) {
        GLfloat material_Ke[] = {material.EmitColor.x, material.EmitColor.y, material.EmitColor.z, 0.0f};
        glMaterialfv(GL_FRONT_AND_BACK, GL_EMISSION, material_Ke);
    }



    glClearDepth(1.f);
}


// Buffer the model
void ModelPart::bufferModel() {
    //std::vector<double> indices;
    indices = (GLuint*)calloc(verticies.size(),sizeof(GLuint));
    pvertex = (GLfloat*)calloc(verticies.size()*8,sizeof(GLfloat));

    // fill "indices" as needed
    LinkedNode<Math::vertex>* current = verticies.top();
    LinkedNode<Math::vertex>* currentn = normals.top();
    LinkedNode<Math::vertex>* currentt = textureCoordinates.top();
    int i=0, j=0, k=0;
    Math::vertex v;
    while(current != 0x0) {
        if(current->data != 0x0) {
            v = (Math::vertex)current->data;
            // draw Math::vertexs with their perspective offsets

            indices[i] = i;

            // Geometry
            pvertex[j] = v.x;
            pvertex[j+1] = v.y;
            pvertex[j+2] = v.z;

            // normals
            if(currentn != 0x0) pvertex[j+3] = ((Math::vertex)currentn->data).x;
            if(currentn != 0x0) pvertex[j+4] = ((Math::vertex)currentn->data).y;
            if(currentn != 0x0) pvertex[j+5] = ((Math::vertex)currentn->data).z;

            // texture
            if(currentt != 0x0) pvertex[j+6] = ((Math::vertex)currentt->data).x;
            if(currentt != 0x0) pvertex[j+7] = ((Math::vertex)currentt->data).y;


            j+=8;
            i++;
        }
        current = current->next;
        if(currentn != 0x0) currentn = currentn->next;
        if(currentt != 0x0) currentt = currentt->next;

    }
    vbosize = verticies.size();

    // Generate a buffer for the indices
    if(vertexbuffer == -1) glGenBuffers(1, &vertexbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat)*8*vbosize, NULL, GL_DYNAMIC_DRAW);
    glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(GLfloat)*8*vbosize, pvertex);

    if(indexbuffer == -1) glGenBuffers(1, &indexbuffer);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, indexbuffer);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(GLuint)*vbosize, NULL, GL_STATIC_DRAW);
    glBufferSubData(GL_ELEMENT_ARRAY_BUFFER, 0, sizeof(GLuint)*vbosize, indices);

    buffered=true;
}
