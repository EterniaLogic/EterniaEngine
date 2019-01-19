#ifndef pMODEL_H_
#define pMODEL_H_

#include "APIp.h"

#include <GL/glew.h>
#include <GL/gl.h>
#include <GL/freeglut.h>
#include <GL/glut.h>

// defines out the Model for Python external use.
#define NULL 0x0
#define MethodDefu(func, METH_VARARGS) {"glu"#func, glu##func, METH_VARARGS, NULL}

/*static struct PyMethodDef[] model_methods = {
// GLU
	MethodDefu(Perspective, 3),
	MethodDefu(LookAt, 6),
	MethodDefu(Ortho2D, 0),
	MethodDefu(PickMatrix, 3),
	MethodDefu(Project, 3),
	MethodDefu(UnProject, 3),
// GL
	{NULL, NULL, 0, NULL}
};*/

#undef MethodDefu


/*static struct PyModuleDef BGL_module_def = {
	PyModuleDef_HEAD_INIT,
	"model",  // m_name
	NULL,  // m_doc
	0,  // m_size
	model_methods,  // m_methods
	NULL,  // m_reload
	NULL,  // m_traverse
	NULL,  // m_clear
	NULL,  // m_free
};*/


#endif
