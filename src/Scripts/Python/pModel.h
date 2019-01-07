#ifndef pMODEL_H_
#define pMODEL_H_

#include "APIp.h"

// defines out the Model for Python external use.

#define MethodDefu(func) {"glu"#func, Method_##func, METH_VARARGS, NULL}

static struct PyMethodDef model_methods[] = {
	MethodDefu(Perspective),
	MethodDefu(LookAt),
	MethodDefu(Ortho2D),
	MethodDefu(PickMatrix),
	MethodDefu(Project),
	MethodDefu(UnProject),
	{NULL, NULL, 0, NULL}
};

#undef MethodDefu


static struct PyModuleDef BGL_module_def = {
	PyModuleDef_HEAD_INIT,
	"model",  /* m_name */
	NULL,  /* m_doc */
	0,  /* m_size */
	model_methods,  /* m_methods */
	NULL,  /* m_reload */
	NULL,  /* m_traverse */
	NULL,  /* m_clear */
	NULL,  /* m_free */
};


#endif
