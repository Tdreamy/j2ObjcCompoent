//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/Score.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "Score.h"

#if !__has_feature(objc_arc)
#error "Score must be compiled with ARC (-fobjc-arc)"
#endif

@interface JOEScore () {
 @public
  IOSIntArray *m_score_;
}

@end

J2OBJC_FIELD_SETTER(JOEScore, m_score_, IOSIntArray *)

#line 1 "/Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/Score.java"


#line 17
@implementation JOEScore

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 25
- (instancetype)init {
  JOEScore_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 28
- (instancetype)initWithInt:(jint)whitescore
                    withInt:(jint)blackscore {
  JOEScore_initWithInt_withInt_(self, whitescore, blackscore);
  return self;
}


#line 36
+ (jint)GetOpponentWithInt:(jint)player {
  return JOEScore_GetOpponentWithInt_(player);
}


#line 39
- (void)ScoreCopyWithJOEScore:(JOEScore *)s {
  
#line 41
  *IOSIntArray_GetRef(nil_chk(m_score_), 0) = IOSIntArray_Get(((JOEScore *) nil_chk(s))->m_score_, 0);
  *IOSIntArray_GetRef(m_score_, 1) = IOSIntArray_Get(s->m_score_, 1);
}

- (jint)GetScoreWithInt:(jint)player {
  
#line 46
  return IOSIntArray_Get(nil_chk(m_score_), player - 1);
}


#line 49
- (void)SetScoreWithInt:(jint)player
                withInt:(jint)score {
  
#line 49
  *IOSIntArray_GetRef(nil_chk(m_score_), player - 1) = score;
}


#line 52
- (void)ScoreAddWithInt:(jint)player
                withInt:(jint)amount {
  *IOSIntArray_GetRef(nil_chk(m_score_), player - 1) += amount;
}


#line 58
- (void)ScoreSubtractWithInt:(jint)player
                     withInt:(jint)amount {
  *IOSIntArray_GetRef(nil_chk(m_score_), player - 1) -= amount;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 7, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 8, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:withInt:);
  methods[2].selector = @selector(GetOpponentWithInt:);
  methods[3].selector = @selector(ScoreCopyWithJOEScore:);
  methods[4].selector = @selector(GetScoreWithInt:);
  methods[5].selector = @selector(SetScoreWithInt:withInt:);
  methods[6].selector = @selector(ScoreAddWithInt:withInt:);
  methods[7].selector = @selector(ScoreSubtractWithInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "m_score_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "NOBODY", "I", .constantValue.asInt = JOEScore_NOBODY, 0x19, -1, -1, -1, -1 },
    { "WHITE", "I", .constantValue.asInt = JOEScore_WHITE, 0x19, -1, -1, -1, -1 },
    { "BLACK", "I", .constantValue.asInt = JOEScore_BLACK, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "GetOpponent", "I", "ScoreCopy", "LJOEScore;", "GetScore", "SetScore", "ScoreAdd", "ScoreSubtract" };
  static const J2ObjcClassInfo _JOEScore = { "Score", "Othello.Engine", ptrTable, methods, fields, 7, 0x1, 8, 4, -1, -1, -1, -1, -1 };
  return &_JOEScore;
}

@end


#line 25
void JOEScore_init(JOEScore *self) {
  NSObject_init(self);
  
#line 25
  self->m_score_ = [IOSIntArray newArrayWithLength:2];
  
#line 25
  *IOSIntArray_GetRef(self->m_score_, 0) = 0;
  
#line 25
  *IOSIntArray_GetRef(self->m_score_, 1) = 0;
}


#line 25
JOEScore *new_JOEScore_init() {
  J2OBJC_NEW_IMPL(JOEScore, init)
}


#line 25
JOEScore *create_JOEScore_init() {
  J2OBJC_CREATE_IMPL(JOEScore, init)
}


#line 28
void JOEScore_initWithInt_withInt_(JOEScore *self, jint whitescore, jint blackscore) {
  NSObject_init(self);
  self->m_score_ = [IOSIntArray newArrayWithLength:2];
  *IOSIntArray_GetRef(self->m_score_, JOEScore_WHITE - 1) = whitescore;
  *IOSIntArray_GetRef(self->m_score_, JOEScore_BLACK - 1) = blackscore;
}


#line 28
JOEScore *new_JOEScore_initWithInt_withInt_(jint whitescore, jint blackscore) {
  J2OBJC_NEW_IMPL(JOEScore, initWithInt_withInt_, whitescore, blackscore)
}


#line 28
JOEScore *create_JOEScore_initWithInt_withInt_(jint whitescore, jint blackscore) {
  J2OBJC_CREATE_IMPL(JOEScore, initWithInt_withInt_, whitescore, blackscore)
}


#line 36
jint JOEScore_GetOpponentWithInt_(jint player) {
  JOEScore_initialize();
  
#line 36
  return JreIntMod(player, 2) + 1;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JOEScore)

J2OBJC_NAME_MAPPING(JOEScore, "Othello.Engine", "JOE")