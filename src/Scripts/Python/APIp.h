#ifndef APIP_H_
#define APIP_H_





// Standard derivatives used for other languages
#define INIT_CLASS(cname) PyModule_AddObject(m, "Test", (PyObject *)&mytest_MyTestType);




#define DEF_CLASS(cname) 


// Define a method
#define DEF_METHOD(funcname, ret, arg_list)                                     \
static PyObject *Method_##funcname (PyObject *UNUSED(self), PyObject *args)   \
{                                                                             \
	arg_def arg_list;                                                         \
	ret_def_##ret;                                                            \
	if (!PyArg_ParseTuple(args, arg_str arg_list, arg_ref arg_list)) {        \
		return NULL;                                                          \
	}                                                                         \
	ret_set_##ret gl##funcname (arg_var arg_list);                            \
	ret_ret_##ret;                                                            \
}




#endif
