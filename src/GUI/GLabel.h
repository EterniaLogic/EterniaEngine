#ifndef GLABEL_H
#define GLABEL_H

#include <Eternia/Data/CharString.h>
#include "GObject.h"
#include <cstring>

// A label just draws
class GLabel : public GObject {
    public:
        GLabel();
        virtual ~GLabel();

        void draw();
        void update();

        // automatically updated
        std::string text;
};

#endif
