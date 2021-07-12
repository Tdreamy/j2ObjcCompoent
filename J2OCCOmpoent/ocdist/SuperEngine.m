//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/SuperEngine.java
//

#include "Game.h"
#include "J2ObjC_source.h"
#include "Move.h"
#include "SuperEngine.h"
#include "java/util/Random.h"

#if !__has_feature(objc_arc)
#error "SuperEngine must be compiled with ARC (-fobjc-arc)"
#endif

@interface JOESuperEngine () {
 @public
  JavaUtilRandom *m_random_;
  jboolean m_interrupt_;
}

@end

J2OBJC_FIELD_SETTER(JOESuperEngine, m_random_, JavaUtilRandom *)

#line 1 "/Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/SuperEngine.java"


#line 28
@implementation JOESuperEngine


#line 62
- (instancetype)initWithInt:(jint)st {
  JOESuperEngine_initWithInt_(self, st);
  return self;
}


#line 76
- (instancetype)initWithInt:(jint)st
                    withInt:(jint)sd {
  JOESuperEngine_initWithInt_withInt_(self, st, sd);
  return self;
}


#line 90
- (void)SetInterruptWithBoolean:(jboolean)intr {
  @synchronized(self) {
    m_interrupt_ = intr;
  }
}


#line 101
- (jboolean)GetInterrupt {
  @synchronized(self) {
    
#line 101
    return m_interrupt_;
  }
}


#line 108
- (void)SetStrengthWithInt:(jint)st {
  
#line 108
  m_strength_ = st;
}


#line 116
- (jint)GetStrength {
  
#line 116
  return m_strength_;
}


#line 123
- (void)SetSeedWithInt:(jint)sd {
  
#line 123
  m_random_ = new_JavaUtilRandom_initWithLong_(sd);
}


#line 130
- (jint)GetRandom {
  
#line 130
  return [((JavaUtilRandom *) nil_chk(m_random_)) nextInt];
}


#line 138
- (JOEMove *)ComputeMoveWithJOEGame:(JOEGame *)g {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x31, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x31, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJOEMove;", 0x401, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(initWithInt:withInt:);
  methods[2].selector = @selector(SetInterruptWithBoolean:);
  methods[3].selector = @selector(GetInterrupt);
  methods[4].selector = @selector(SetStrengthWithInt:);
  methods[5].selector = @selector(GetStrength);
  methods[6].selector = @selector(SetSeedWithInt:);
  methods[7].selector = @selector(GetRandom);
  methods[8].selector = @selector(ComputeMoveWithJOEGame:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "m_strength_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "m_random_", "LJavaUtilRandom;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_interrupt_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "II", "SetInterrupt", "Z", "SetStrength", "SetSeed", "ComputeMove", "LJOEGame;" };
  static const J2ObjcClassInfo _JOESuperEngine = { "SuperEngine", "Othello.Engine", ptrTable, methods, fields, 7, 0x401, 9, 3, -1, -1, -1, -1, -1 };
  return &_JOESuperEngine;
}

@end


#line 62
void JOESuperEngine_initWithInt_(JOESuperEngine *self, jint st) {
  NSObject_init(self);
  self->m_strength_ = st;
  self->m_random_ = new_JavaUtilRandom_init();
  self->m_interrupt_ = false;
}


#line 76
void JOESuperEngine_initWithInt_withInt_(JOESuperEngine *self, jint st, jint sd) {
  NSObject_init(self);
  self->m_strength_ = st;
  self->m_random_ = new_JavaUtilRandom_initWithLong_(sd);
  self->m_interrupt_ = false;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JOESuperEngine)

J2OBJC_NAME_MAPPING(JOESuperEngine, "Othello.Engine", "JOE")