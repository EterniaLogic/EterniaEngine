#ifndef DEVCONFIG_H_
#define DEVCONFIG_H_

#include <Eternia/Math/struct/vertex.h>

// The Dev config is just a file full of colorization options.
//  May be exported to user-specific values

namespace DEVCONF{
    // Generic GUI colors
    const vertex GUI_ForeColor(0.f,0.f,0.f);
    const vertex GUI_BackColor(1.f,1.f,1.f);
    const vertex GUI_Gradient_BackColor(1.f,1.f,1.f); // Linear gradient colors
    const vertex GUI_GradientTo_BackColor(0.9f,0.9f,1.0f);
    const vertex GUI_Menu_Gradient_BackColor(0.9f,0.9f,0.9f); // Linear gradient colors
    const vertex GUI_Menu_GradientTo_BackColor(0.5f,0.5f,0.5f);

    // Top menu
    const vertex Menu_BackColor(0.9f,0.9f,0.9f); // 0-1.f colors
    const vertex MenuItem_ForeColor(0.f,0.f,0.f);
    const vertex MenuItem_HoverBackColor(0.9f,0.9f,0.9f); // Otherwise, same as Menu_BackColor
    
    // Console GUI
    const vertex Console_BackColor(0.f,0.f,0.f);
    const vertex Console_ForeColor(1.f,1.f,1.f);
    
    
    // 3D editor background
    const bool Grid3DMeters = true; // 3D grid to show size in meters
    const vertex Editor3D_Grid_ForeColor(0.f,0.f,0.f); // Grid-lines color, possibly floating text to denote size.
    const vertex Editor3D_BackColor(0.f,0.f,0.f);
    const vertex Editor3D_ForeColor(0.5f,0.5f,0.f);  // yellow for floating text
    
    
    // default GUI sizes
    const float LeftGUI_width = 300.f;
    const float RightGUI_width = 300.f;
    const float BottomGUI_height = 300.f;
};

#endif
