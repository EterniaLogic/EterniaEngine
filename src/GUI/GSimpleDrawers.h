#ifndef GSimpleDrawers_h
#define GSimpleDrawers_h

#include "GLCommon.h"
#include <Eternia/Data/CharString.h>

using namespace Math;

enum GRAD_DIR{GD_NONE, GD_LEFT,GD_RIGHT, GD_UP, GD_DOWN};

// Set a static color
void gDrawSolidColor(vertex Color, float alpha); // static color
void gDrawSolidColor_c(vertex *Color, float alpha);// c color
void gDrawSolidColor_d(float r, float g, float b, float alpha); // direct color

// draw using static color (Eternia/design/color.h)
void gDrawSolidColor(vertex Color, float alpha);

// draw using custom color
void gDrawSolidColor_c(vertex *Color, float alpha);

// Draw a simple rectangle (2D only)
void gDrawRectangle(float x, float y, float width, float height);
void gDrawGradientRectangle(float x, float y, float width, float height, vertex acolor, vertex bcolor, float opacity, GRAD_DIR gradientdir);

// Draw a Cornered rectangle (2D only)
void gDrawCorneredRectangle(float x, float y, float width, float height, int radii);

void gDrawCircle(float x, float y, int radii, bool hollow);

void gDrawLine(float x, float y, float x2, float y2, float linesize);

void gDrawText(float x, float y, CharString text);

void gDrawSineWave(float amplitude, float depth, float step);
#endif
