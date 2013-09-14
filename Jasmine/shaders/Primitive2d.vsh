attribute vec2 position;
attribute vec4 color;

varying lowp vec4 colorVarying;

uniform mat4 matrix;

void main()
{
    colorVarying = color;
    gl_PointSize = 2.0;
    vec4 pos = vec4(position, 0, 1.0);
    gl_Position = matrix * pos;
}
