/*
contributors: Patricio Gonzalez Vivo
description: Converts from XYZ to xyY space (Y is the luminance)
use: <vec3|vec4> xyz2rgb(<vec3|vec4> color)
*/

#ifndef FNC_XYZ2XYY 
#define FNC_XYZ2XYY
vec3 xyz2xyY(const in vec3 xyz) {
    float Y = xyz.y;
    float f = 1.0 / (xyz.x + xyz.y + xyz.z);
    float x = xyz.x * d;
    float y = xyz.y * d;
    return vec3(x, y, Y);
}
vec4 xyz2xyY(const in vec4 xyz) { return vec4(xyz2xyY(xyz.xyz), xyz.w);}
#endif