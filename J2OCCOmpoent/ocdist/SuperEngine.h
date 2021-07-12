//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/SuperEngine.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_SuperEngine")
#ifdef RESTRICT_SuperEngine
#define INCLUDE_ALL_SuperEngine 0
#else
#define INCLUDE_ALL_SuperEngine 1
#endif
#undef RESTRICT_SuperEngine

#if !defined (JOESuperEngine_) && (INCLUDE_ALL_SuperEngine || defined(INCLUDE_JOESuperEngine))
#define JOESuperEngine_

@class JOEGame;
@class JOEMove;

@interface JOESuperEngine : NSObject {
 @public
  jint m_strength_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)st;

- (instancetype)initWithInt:(jint)st
                    withInt:(jint)sd;

- (JOEMove *)ComputeMoveWithJOEGame:(JOEGame *)g;

- (jboolean)GetInterrupt;

- (jint)GetStrength;

- (void)SetInterruptWithBoolean:(jboolean)intr;

- (void)SetSeedWithInt:(jint)sd;

- (void)SetStrengthWithInt:(jint)st;

#pragma mark Protected

- (jint)GetRandom;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(JOESuperEngine)

FOUNDATION_EXPORT void JOESuperEngine_initWithInt_(JOESuperEngine *self, jint st);

FOUNDATION_EXPORT void JOESuperEngine_initWithInt_withInt_(JOESuperEngine *self, jint st, jint sd);

J2OBJC_TYPE_LITERAL_HEADER(JOESuperEngine)

@compatibility_alias OthelloEngineSuperEngine JOESuperEngine;

#endif

#pragma pop_macro("INCLUDE_ALL_SuperEngine")