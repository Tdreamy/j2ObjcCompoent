//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/Position.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "Move.h"
#include "Position.h"
#include "Score.h"
#include "java/lang/System.h"

#if !__has_feature(objc_arc)
#error "Position must be compiled with ARC (-fobjc-arc)"
#endif

@interface JOEPosition () {
 @public
  IOSObjectArray *m_board_;
  JOEMove *m_last_move_;
  JOEScore *m_score_;
}

@end

J2OBJC_FIELD_SETTER(JOEPosition, m_board_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(JOEPosition, m_last_move_, JOEMove *)
J2OBJC_FIELD_SETTER(JOEPosition, m_score_, JOEScore *)

#line 1 "/Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/Position.java"


#line 15
@implementation JOEPosition

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 26
- (instancetype)init {
  JOEPosition_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 48
- (instancetype)initWithJOEPosition:(JOEPosition *)p
                        withJOEMove:(JOEMove *)m {
  JOEPosition_initWithJOEPosition_withJOEMove_(self, p, m);
  return self;
}


#line 93
- (jint)GetSquareWithInt:(jint)x
                 withInt:(jint)y {
  
#line 93
  return IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(m_board_), x)), y);
}

- (jint)GetScoreWithInt:(jint)player {
  
#line 100
  return [((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:player];
}


#line 107
- (JOEMove *)GetLastMove {
  
#line 107
  return m_last_move_;
}


#line 114
- (jboolean)MoveIsLegalWithJOEMove:(JOEMove *)m {
  
#line 116
  if (IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(m_board_), [((JOEMove *) nil_chk(m)) GetX])), [m GetY]) != JOEScore_NOBODY) return false;
  
#line 118
  jint player = [m GetPlayer];
  jint opponent = JOEScore_GetOpponentWithInt_(player);
  
#line 121
  for (jint xinc = -1; xinc <= 1; xinc++)
#line 122
  for (jint yinc = -1; yinc <= 1; yinc++)
#line 123
  if (xinc != 0 || yinc != 0) {
    
#line 125
    jint x;
    
#line 125
    jint y;
    
#line 127
    for (x = [m GetX] + xinc, y = [m GetY] + yinc; IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(m_board_), x)), y) == opponent;
#line 128
    x += xinc, y += yinc)
#line 129
    
    ;
    if (IOSIntArray_Get(nil_chk(IOSObjectArray_Get(m_board_, x)), y) == player &&
#line 132
    (x - xinc != [m GetX] || y - yinc != [m GetY]))
#line 133
    return true;
  }
  
#line 136
  return false;
}


#line 144
- (jboolean)MoveIsPossibleWithInt:(jint)player {
  
#line 146
  for (jint i = 1; i < 9; i++)
#line 147
  for (jint j = 1; j < 9; j++)
#line 148
  if ([self MoveIsLegalWithJOEMove:new_JOEMove_initWithInt_withInt_withInt_(i, j, player)]) return true;
  
#line 150
  return false;
}


#line 158
- (jboolean)MoveIsAtAllPossible {
  
#line 160
  return [self MoveIsPossibleWithInt:JOEScore_WHITE] || [self MoveIsPossibleWithInt:JOEScore_BLACK];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LJOEMove;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithJOEPosition:withJOEMove:);
  methods[2].selector = @selector(GetSquareWithInt:withInt:);
  methods[3].selector = @selector(GetScoreWithInt:);
  methods[4].selector = @selector(GetLastMove);
  methods[5].selector = @selector(MoveIsLegalWithJOEMove:);
  methods[6].selector = @selector(MoveIsPossibleWithInt:);
  methods[7].selector = @selector(MoveIsAtAllPossible);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "m_board_", "[[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_last_move_", "LJOEMove;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_score_", "LJOEScore;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJOEPosition;LJOEMove;", "GetSquare", "II", "GetScore", "I", "MoveIsLegal", "LJOEMove;", "MoveIsPossible" };
  static const J2ObjcClassInfo _JOEPosition = { "Position", "Othello.Engine", ptrTable, methods, fields, 7, 0x1, 8, 3, -1, -1, -1, -1, -1 };
  return &_JOEPosition;
}

@end


#line 26
void JOEPosition_init(JOEPosition *self) {
  NSObject_init(self);
  self->m_board_ = [IOSIntArray newArrayWithDimensions:2 lengths:(jint[]){ 10, 10 }];
  self->m_score_ = new_JOEScore_initWithInt_withInt_(2, 2);
  self->m_last_move_ = nil;
  
#line 32
  for (jint i = 0; i < 10; i++)
#line 33
  for (jint j = 0; j < 10; j++)
#line 34
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), i)), j) = JOEScore_NOBODY;
  
#line 36
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), 4)), 4) = JOEScore_WHITE;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_board_, 5)), 5) = JOEScore_WHITE;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_board_, 5)), 4) = JOEScore_BLACK;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_board_, 4)), 5) = JOEScore_BLACK;
}


#line 26
JOEPosition *new_JOEPosition_init() {
  J2OBJC_NEW_IMPL(JOEPosition, init)
}


#line 26
JOEPosition *create_JOEPosition_init() {
  J2OBJC_CREATE_IMPL(JOEPosition, init)
}


#line 48
void JOEPosition_initWithJOEPosition_withJOEMove_(JOEPosition *self, JOEPosition *p, JOEMove *m) {
  NSObject_init(self);
  self->m_board_ = [IOSIntArray newArrayWithDimensions:2 lengths:(jint[]){ 10, 10 }];
  self->m_score_ = new_JOEScore_init();
  
#line 53
  for (jint i = 0; i < 10; i++)
#line 54
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(IOSObjectArray_Get(nil_chk(((JOEPosition *) nil_chk(p))->m_board_), i), 0, IOSObjectArray_Get(self->m_board_, i), 0, 10);
  
#line 56
  [((JOEScore *) nil_chk(self->m_score_)) ScoreCopyWithJOEScore:((JOEPosition *) nil_chk(p))->m_score_];
  
#line 58
  jint player = [((JOEMove *) nil_chk(m)) GetPlayer];
  jint opponent = JOEScore_GetOpponentWithInt_(player);
  
#line 61
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), [m GetX])), [m GetY]) = player;
  [((JOEScore *) nil_chk(self->m_score_)) ScoreAddWithInt:player withInt:1];
  
#line 64
  for (jint xinc = -1; xinc <= 1; xinc++)
#line 65
  for (jint yinc = -1; yinc <= 1; yinc++)
#line 66
  if (xinc != 0 || yinc != 0) {
    
#line 68
    jint x;
    
#line 68
    jint y;
    
#line 70
    for (x = [m GetX] + xinc, y = [m GetY] + yinc; IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), x)), y) == opponent;
#line 71
    x += xinc, y += yinc)
#line 72
    
    ;
    if (IOSIntArray_Get(nil_chk(IOSObjectArray_Get(self->m_board_, x)), y) == player)
#line 75
    for (x -= xinc, y -= yinc; x != [m GetX] || y != [m GetY];
#line 76
    x -= xinc, y -= yinc) {
      
#line 78
      *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), x)), y) = player;
      [((JOEScore *) nil_chk(self->m_score_)) ScoreAddWithInt:player withInt:1];
      [((JOEScore *) nil_chk(self->m_score_)) ScoreSubtractWithInt:opponent withInt:1];
    }
  }
  
#line 84
  self->m_last_move_ = new_JOEMove_initWithJOEMove_(m);
}


#line 48
JOEPosition *new_JOEPosition_initWithJOEPosition_withJOEMove_(JOEPosition *p, JOEMove *m) {
  J2OBJC_NEW_IMPL(JOEPosition, initWithJOEPosition_withJOEMove_, p, m)
}


#line 48
JOEPosition *create_JOEPosition_initWithJOEPosition_withJOEMove_(JOEPosition *p, JOEMove *m) {
  J2OBJC_CREATE_IMPL(JOEPosition, initWithJOEPosition_withJOEMove_, p, m)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JOEPosition)

J2OBJC_NAME_MAPPING(JOEPosition, "Othello.Engine", "JOE")
