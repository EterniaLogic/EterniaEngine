#include "ModelFragment.h"

ModelFragment::ModelFragment(){
    indexbuffer = -1;
    vertexbuffer = -1;
}

void ModelFragment::addVertex(vertex* v) {
    //debugLogm("Add Model " << this << " Vertex: (" << v.x << ", "<< v.y <<"," << v.z<<")");
    this->verticies.add(v);
}


void ModelFragment::draw() {
    // Draw the model to the OpenGL Interface.
    //glPushMatrix();


    glScalef(scale.x,scale.y,scale.z);
    glTranslatef(offset.x, offset.y, offset.z);
    glRotatef(rotate_angle, rotate_axis.x, rotate_axis.y, rotate_axis.z);


    //_drawMaterial(); // load up the materials


    // Load up base shaders if not loaded
    //if(shader == 0x0)
    //    shader = SM.loadfromMemory((const char*)GEN_Shaders::Light_Vertex[0], "", (const char*)GEN_Shaders::Light_Fragment[0]);

    //shader->begin();
    material->draw();

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
        LinkedNode<vertex>* current = verticies.top();
        LinkedNode<vertex>* currentn = normals.top();
        LinkedNode<vertex>* currentt = textureCoordinates.top();

        debugLogm("Start Model Render: " << this);
        while(current != 0x0) {
            if(current->data != 0x0) {
                vertex* v = (vertex*)current->data;
                debugLogm("Model Vector: " << v << " Vertex: (" << v->x << ", "<< v->y <<"," << v->z<<")");
                // draw vertexs with their perspective offsets
                glVertex3f(v->x, v->y, v->z);

                if(currentt != 0x0) glTexCoord2f(((vertex*)currentt->data)->x,((vertex*)currentt->data)->y);
                if(currentn != 0x0) 
                    if(currentn->data != 0x0) 
                        glNormal3f(((vertex*)currentn->data)->x,((vertex*)currentn->data)->y,((vertex*)currentn->data)->z);

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


// Buffer the model
void ModelFragment::bufferModel() {
    //std::vector<double> indices;
    indices = (GLuint*)calloc(verticies.size(),sizeof(GLuint));
    pvertex = (GLfloat*)calloc(verticies.size()*8,sizeof(GLfloat));

    // fill "indices" as needed
    LinkedNode<vertex>* current = verticies.top();
    LinkedNode<vertex>* currentn = normals.top();
    LinkedNode<vertex>* currentt = textureCoordinates.top();
    int i=0, j=0, k=0;
    vertex* v;
    while(current != 0x0) {
        if(current->data != 0x0) {
            v = (vertex*)current->data;
            // draw vertexs with their perspective offsets

            indices[i] = i;

            // Geometry
            pvertex[j] = v->x;
            pvertex[j+1] = v->y;
            pvertex[j+2] = v->z;

            // normals
            if(currentn != 0x0) pvertex[j+3] = ((vertex*)currentn->data)->x;
            if(currentn != 0x0) pvertex[j+4] = ((vertex*)currentn->data)->y;
            if(currentn != 0x0) pvertex[j+5] = ((vertex*)currentn->data)->z;

            // texture
            if(currentt != 0x0) pvertex[j+6] = ((vertex*)currentt->data)->x;
            if(currentt != 0x0) pvertex[j+7] = ((vertex*)currentt->data)->y;


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

void ModelFragment::setOffset(vertex offset) {
    this->offset = offset;
}

void ModelFragment::setMaterial(ModelMaterial* material) {
    this->material = material;
}

void ModelFragment::setScale(vertex scale) {
    this->scale = scale;
}
