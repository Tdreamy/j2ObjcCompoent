//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/Move.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Move")
#ifdef RESTRICT_Move
#define INCLUDE_ALL_Move 0
#else
#define INCLUDE_ALL_Move 1
#endif
#undef RESTRICT_Move

#if !defined (JOEMove_) && (INCLUDE_ALL_Move || defined(INCLUDE_JOEMove))
#define JOEMove_

@interface JOEMove : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)x
                    withInt:(jint)y
                    withInt:(jint)player;

- (instancetype)initWithJOEMove:(JOEMove *)m;

- (jint)GetPlayer;

- (jint)GetX;

- (jint)GetY;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(JOEMove)

FOUNDATION_EXPORT void JOEMove_initWithJOEMove_(JOEMove *self, JOEMove *m);

FOUNDATION_EXPORT JOEMove *new_JOEMove_initWithJOEMove_(JOEMove *m) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JOEMove *create_JOEMove_initWithJOEMove_(JOEMove *m);

FOUNDATION_EXPORT void JOEMove_initWithInt_withInt_withInt_(JOEMove *self, jint x, jint y, jint player);

FOUNDATION_EXPORT JOEMove *new_JOEMove_initWithInt_withInt_withInt_(jint x, jint y, jint player) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JOEMove *create_JOEMove_initWithInt_withInt_withInt_(jint x, jint y, jint player);

J2OBJC_TYPE_LITERAL_HEADER(JOEMove)

@compatibility_alias OthelloEngineMove JOEMove;

#endif

#pragma pop_macro("INCLUDE_ALL_Move")