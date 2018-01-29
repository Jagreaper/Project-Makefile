#pragma once

#ifdef WIN32
    #ifdef JAGERTS_GEOMETRY_DLL
        #define JAGERTS_GEOMETRY_API __delspec(dllexport)
    #else
        #define JAGERTS_GEOMETRY_API __delspec(dllimport)
    #endif
#else
    #define JAGERTS_GEOMETRY_API
#endif