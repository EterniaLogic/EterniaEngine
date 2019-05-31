//-----------------------------------------------------------------------------
//  Copyright (C) 2013 Brent Clancy (EterniaLogic, dreadslicer)
//
//  Distributed under a Reference-only License.  The full license is in
//  the file COPYRIGHT, distributed as part of this software.
//----------------------------------------------------------------------------

// OVerwrite with another main_C_ to get around this.

#ifndef MAIN_H_
#define MAIN_H_
#include "App.h"

using namespace std;

int main(int argc, char** argv) {
    // Create the main window

    if (!(new App())->Initialize(argc, argv)) {
        printf("Failed to initialize! Perhaps your graphics card does not support OpenGL?");
        return 0;
    }

    cout << "Stopping..." << endl;
    return 0;
}

#endif
