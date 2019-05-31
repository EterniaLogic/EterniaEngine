#include "App.h"
#if defined(__LINUX__) || defined(__UNIX__)
#include <execinfo.h>


// will definitely not help memory of the process, but will let it continue.
void unmask_SIGSEGV(){
    void *array[10];
    size_t size;

    // get void*'s for all entries on the stack
    size = backtrace(array, 10);
    backtrace_symbols_fd(array, size, STDERR_FILENO);


    sigset_t signal_set;
    sigemptyset(&signal_set);
    sigaddset(&signal_set, SIGSEGV); 
    sigprocmask(SIG_UNBLOCK, &signal_set, NULL); 
}


void basic_error_handler(int errorcode){
    cout << "ERROR: Handled " << errorcode << endl;
    
    appInstance->Stop();
}

void basic_close_handler(int param){
    cout << "SIGNAL end: " << param << endl;
    
    switch(param){
        case SIGSEGV: // recover from SIGSEGV
                unmask_SIGSEGV();
            break;
        default:
            appInstance->close();
    }
    
    
    exit(param);
}


void App::InitErrorSignals(){
    /*App::SIGABRT_Handler = signal(SIGABRT, basic_error_handler);
    App::SIGFPE_Handler = signal(SIGFPE, basic_error_handler);
    App::SIGILL_Handler = signal(SIGILL, basic_error_handler);
    App::SIGINT_Handler = signal(SIGINT, basic_close_handler);
    App::SIGSEGV_Handler = signal(SIGSEGV, basic_error_handler);
    App::SIGTERM_Handler = signal(SIGTERM, basic_close_handler);*/
    
    signal(SIGABRT, basic_error_handler);
    signal(SIGFPE, basic_error_handler);
    signal(SIGILL, basic_error_handler);
    signal(SIGINT, basic_close_handler);
    signal(SIGSEGV, basic_close_handler);
    signal(SIGTERM, basic_close_handler);
}

#else
void App::InitErrorSignals(){

}	
#endif
