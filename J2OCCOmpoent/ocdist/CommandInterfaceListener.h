//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/CommandInterfaceListener.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CommandInterfaceListener")
#ifdef RESTRICT_CommandInterfaceListener
#define INCLUDE_ALL_CommandInterfaceListener 0
#else
#define INCLUDE_ALL_CommandInterfaceListener 1
#endif
#undef RESTRICT_CommandInterfaceListener

#if !defined (JOECommandInterfaceListener_) && (INCLUDE_ALL_CommandInterfaceListener || defined(INCLUDE_JOECommandInterfaceListener))
#define JOECommandInterfaceListener_

@class JOEMove;

@protocol JOECommandInterfaceListener < JavaObject >

- (void)ComputationFinishedWithJOEMove:(JOEMove *)m;

@end

J2OBJC_EMPTY_STATIC_INIT(JOECommandInterfaceListener)

J2OBJC_TYPE_LITERAL_HEADER(JOECommandInterfaceListener)

#define OthelloEngineCommandInterfaceListener JOECommandInterfaceListener

#endif

#pragma pop_macro("INCLUDE_ALL_CommandInterfaceListener")
