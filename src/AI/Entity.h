#ifndef ENTITY_H
#define ENTITY_H

#include "../Sound/SoundEntity.h"
#include "../Model/Model.h"
#include "AICore.h"

// An entity describes anything that "Moves".
// Players are entities; Vehicles are entities; Ships are entities;
// Enemies are entities.
class Entity {
    public:
        Entity();

        void kill(); // kill this entity
        void setLocation(); // set entity location

        Model* model; // model that is attached to this entity
        AICore* ai; // AI that controls this entity
        EntitySound* sounds; // sound bank for this Entity
};

#endif
