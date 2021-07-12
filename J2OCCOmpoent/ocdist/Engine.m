//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/Engine.java
//

#include "Engine.h"
#include "Game.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "Move.h"
#include "Score.h"
#include "SuperEngine.h"

#if !__has_feature(objc_arc)
#error "Engine must be compiled with ARC (-fobjc-arc)"
#endif

@interface JOESquareStack () {
 @public
  IOSObjectArray *m_squarestack_;
  jint m_top_;
}

- (void)growWithInt:(jint)size;

@end

J2OBJC_FIELD_SETTER(JOESquareStack, m_squarestack_, IOSObjectArray *)

__attribute__((unused)) static JOESquareStackEntry *JOESquareStack_Pop(JOESquareStack *self);

__attribute__((unused)) static void JOESquareStack_PushWithInt_withInt_(JOESquareStack *self, jint x, jint y);

__attribute__((unused)) static void JOESquareStack_growWithInt_(JOESquareStack *self, jint size);

@interface JOEEngine () {
 @public
  IOSObjectArray *m_board_;
  IOSObjectArray *m_bc_board_;
  JOEScore *m_score_;
  JOEScore *m_bc_score_;
  JOESquareStack *m_squarestack_;
  jint m_depth_;
  jint m_coeff_;
  jint m_nodes_searched_;
  jboolean m_exhaustive_;
  IOSObjectArray *m_coord_bit_;
  IOSObjectArray *m_neighbor_bits_;
}

- (JOEMove *)ComputeFirstMoveWithJOEGame:(JOEGame *)g;

- (jint)ComputeMove2WithInt:(jint)xplay
                    withInt:(jint)yplay
                    withInt:(jint)player
                    withInt:(jint)level
                    withInt:(jint)cutoffval
                   withLong:(jlong)playerbits
                   withLong:(jlong)opponentbits;

- (jint)TryAllMovesWithInt:(jint)opponent
                   withInt:(jint)level
                   withInt:(jint)cutoffval
                  withLong:(jlong)opponentbits
                  withLong:(jlong)playerbits;

- (jint)EvaluatePositionWithInt:(jint)player;

- (void)SetupBcBoard;

- (void)SetupBits;

- (jint)CalcBcScoreWithInt:(jint)player;

- (jlong)ComputeOccupiedBitsWithInt:(jint)player;

@end

J2OBJC_FIELD_SETTER(JOEEngine, m_board_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(JOEEngine, m_bc_board_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(JOEEngine, m_score_, JOEScore *)
J2OBJC_FIELD_SETTER(JOEEngine, m_bc_score_, JOEScore *)
J2OBJC_FIELD_SETTER(JOEEngine, m_squarestack_, JOESquareStack *)
J2OBJC_FIELD_SETTER(JOEEngine, m_coord_bit_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(JOEEngine, m_neighbor_bits_, IOSObjectArray *)

inline jint JOEEngine_get_LARGEINT(void);
#define JOEEngine_LARGEINT 99999
J2OBJC_STATIC_FIELD_CONSTANT(JOEEngine, LARGEINT, jint)

inline jint JOEEngine_get_ILLEGAL_VALUE(void);
#define JOEEngine_ILLEGAL_VALUE 888888
J2OBJC_STATIC_FIELD_CONSTANT(JOEEngine, ILLEGAL_VALUE, jint)

inline jint JOEEngine_get_BC_WEIGHT(void);
#define JOEEngine_BC_WEIGHT 3
J2OBJC_STATIC_FIELD_CONSTANT(JOEEngine, BC_WEIGHT, jint)

__attribute__((unused)) static JOEMove *JOEEngine_ComputeFirstMoveWithJOEGame_(JOEEngine *self, JOEGame *g);

__attribute__((unused)) static jint JOEEngine_ComputeMove2WithInt_withInt_withInt_withInt_withInt_withLong_withLong_(JOEEngine *self, jint xplay, jint yplay, jint player, jint level, jint cutoffval, jlong playerbits, jlong opponentbits);

__attribute__((unused)) static jint JOEEngine_TryAllMovesWithInt_withInt_withInt_withLong_withLong_(JOEEngine *self, jint opponent, jint level, jint cutoffval, jlong opponentbits, jlong playerbits);

__attribute__((unused)) static jint JOEEngine_EvaluatePositionWithInt_(JOEEngine *self, jint player);

__attribute__((unused)) static void JOEEngine_SetupBcBoard(JOEEngine *self);

__attribute__((unused)) static void JOEEngine_SetupBits(JOEEngine *self);

__attribute__((unused)) static jint JOEEngine_CalcBcScoreWithInt_(JOEEngine *self, jint player);

__attribute__((unused)) static jlong JOEEngine_ComputeOccupiedBitsWithInt_(JOEEngine *self, jint player);

#line 1 "/Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/Engine.java"


#line 15
@implementation JOESquareStackEntry


#line 19
- (instancetype)initPackagePrivate {
  JOESquareStackEntry_initPackagePrivate(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivate);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "m_x_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "m_y_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const J2ObjcClassInfo _JOESquareStackEntry = { "SquareStackEntry", "Othello.Engine", NULL, methods, fields, 7, 0x0, 1, 2, -1, -1, -1, -1, -1 };
  return &_JOESquareStackEntry;
}

@end


#line 19
void JOESquareStackEntry_initPackagePrivate(JOESquareStackEntry *self) {
  NSObject_init(self);
  
#line 19
  self->m_x_ = 0;
  
#line 19
  self->m_y_ = 0;
}


#line 19
JOESquareStackEntry *new_JOESquareStackEntry_initPackagePrivate() {
  J2OBJC_NEW_IMPL(JOESquareStackEntry, initPackagePrivate)
}


#line 19
JOESquareStackEntry *create_JOESquareStackEntry_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(JOESquareStackEntry, initPackagePrivate)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JOESquareStackEntry)

#line 1 "/Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/Engine.java"


#line 29
@implementation JOESquareStack


#line 34
- (instancetype)initPackagePrivateWithInt:(jint)size {
  JOESquareStack_initPackagePrivateWithInt_(self, size);
  return self;
}


#line 42
- (JOESquareStackEntry *)Pop {
  return JOESquareStack_Pop(self);
}


#line 45
- (void)PushWithInt:(jint)x
            withInt:(jint)y {
  JOESquareStack_PushWithInt_withInt_(self, x, y);
}


#line 54
- (void)growWithInt:(jint)size {
  JOESquareStack_growWithInt_(self, size);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJOESquareStackEntry;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x12, 3, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithInt:);
  methods[1].selector = @selector(Pop);
  methods[2].selector = @selector(PushWithInt:withInt:);
  methods[3].selector = @selector(growWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "m_squarestack_", "[LJOESquareStackEntry;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_top_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "Push", "II", "grow" };
  static const J2ObjcClassInfo _JOESquareStack = { "SquareStack", "Othello.Engine", ptrTable, methods, fields, 7, 0x0, 4, 2, -1, -1, -1, -1, -1 };
  return &_JOESquareStack;
}

@end


#line 34
void JOESquareStack_initPackagePrivateWithInt_(JOESquareStack *self, jint size) {
  NSObject_init(self);
  self->m_squarestack_ = [IOSObjectArray newArrayWithLength:size type:JOESquareStackEntry_class_()];
  self->m_top_ = 0;
  
#line 39
  for (jint i = 0; i < size; i++) (void) IOSObjectArray_SetAndConsume(nil_chk(self->m_squarestack_), i, new_JOESquareStackEntry_initPackagePrivate());
}


#line 34
JOESquareStack *new_JOESquareStack_initPackagePrivateWithInt_(jint size) {
  J2OBJC_NEW_IMPL(JOESquareStack, initPackagePrivateWithInt_, size)
}


#line 34
JOESquareStack *create_JOESquareStack_initPackagePrivateWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(JOESquareStack, initPackagePrivateWithInt_, size)
}


#line 42
JOESquareStackEntry *JOESquareStack_Pop(JOESquareStack *self) {
  
#line 42
  return IOSObjectArray_Get(nil_chk(self->m_squarestack_), --self->m_top_);
}


#line 45
void JOESquareStack_PushWithInt_withInt_(JOESquareStack *self, jint x, jint y) {
  
#line 47
  if (((IOSObjectArray *) nil_chk(self->m_squarestack_))->size_ <= self->m_top_) JOESquareStack_growWithInt_(self, self->m_squarestack_->size_ * 2);
  
#line 49
  ((JOESquareStackEntry *) nil_chk(IOSObjectArray_Get(nil_chk(self->m_squarestack_), self->m_top_)))->m_x_ = x;
  ((JOESquareStackEntry *) nil_chk(IOSObjectArray_Get(self->m_squarestack_, self->m_top_++)))->m_y_ = y;
}


#line 54
void JOESquareStack_growWithInt_(JOESquareStack *self, jint size) {
  
#line 56
  if (((IOSObjectArray *) nil_chk(self->m_squarestack_))->size_ >= size) return;
  
#line 58
  IOSObjectArray *tmp_squarestack;
  tmp_squarestack = [IOSObjectArray newArrayWithLength:size type:JOESquareStackEntry_class_()];
  
#line 61
  jint i = 0;
  
#line 63
  for (i = 0; i < self->m_squarestack_->size_; i++)
#line 64
  (void) IOSObjectArray_Set(tmp_squarestack, i, IOSObjectArray_Get(self->m_squarestack_, i));
  
#line 66
  self->m_squarestack_ = tmp_squarestack;
  
#line 68
  for (; i < size; i++)
#line 69
  (void) IOSObjectArray_SetAndConsume(nil_chk(self->m_squarestack_), i, new_JOESquareStackEntry_initPackagePrivate());
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JOESquareStack)

#line 1 "/Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/Engine.java"


#line 81
@implementation JOEMoveAndValue


#line 85
- (instancetype)initPackagePrivateWithInt:(jint)x
                                  withInt:(jint)y
                                  withInt:(jint)value {
  JOEMoveAndValue_initPackagePrivateWithInt_withInt_withInt_(self, x, y, value);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithInt:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "m_x_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "m_y_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "m_value_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "III" };
  static const J2ObjcClassInfo _JOEMoveAndValue = { "MoveAndValue", "Othello.Engine", ptrTable, methods, fields, 7, 0x0, 1, 3, -1, -1, -1, -1, -1 };
  return &_JOEMoveAndValue;
}

@end


#line 85
void JOEMoveAndValue_initPackagePrivateWithInt_withInt_withInt_(JOEMoveAndValue *self, jint x, jint y, jint value) {
  NSObject_init(self);
  self->m_x_ = x;
  
#line 87
  self->m_y_ = y;
  
#line 87
  self->m_value_ = value;
}


#line 85
JOEMoveAndValue *new_JOEMoveAndValue_initPackagePrivateWithInt_withInt_withInt_(jint x, jint y, jint value) {
  J2OBJC_NEW_IMPL(JOEMoveAndValue, initPackagePrivateWithInt_withInt_withInt_, x, y, value)
}


#line 85
JOEMoveAndValue *create_JOEMoveAndValue_initPackagePrivateWithInt_withInt_withInt_(jint x, jint y, jint value) {
  J2OBJC_CREATE_IMPL(JOEMoveAndValue, initPackagePrivateWithInt_withInt_withInt_, x, y, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JOEMoveAndValue)

#line 1 "/Users/dfg/Desktop/j2oc/j2ObjcCompoent/J2OCCOmpoent/java/src/Othello/Engine/Engine.java"


#line 128
@implementation JOEEngine


#line 207
- (instancetype)initWithInt:(jint)st
                    withInt:(jint)sd {
  JOEEngine_initWithInt_withInt_(self, st, sd);
  return self;
}


#line 210
- (instancetype)initWithInt:(jint)st {
  JOEEngine_initWithInt_(self, st);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 213
- (instancetype)init {
  JOEEngine_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 222
- (JOEMove *)ComputeMoveWithJOEGame:(JOEGame *)g {
  
#line 224
  m_exhaustive_ = false;
  
#line 226
  jint player = [((JOEGame *) nil_chk(g)) GetWhoseTurn];
  
#line 228
  if (player == JOEScore_NOBODY) return nil;
  
#line 230
  m_score_ = new_JOEScore_initWithInt_withInt_([g GetScoreWithInt:JOEScore_WHITE], [g GetScoreWithInt:JOEScore_BLACK]);
  if ([m_score_ GetScoreWithInt:JOEScore_WHITE] + [((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_BLACK] == 4)
#line 232
  return JOEEngine_ComputeFirstMoveWithJOEGame_(self, g);
  
#line 234
  m_board_ = [IOSIntArray newArrayWithDimensions:2 lengths:(jint[]){ 10, 10 }];
  m_squarestack_ = new_JOESquareStack_initPackagePrivateWithInt_(200);
  m_depth_ = m_strength_;
  if (m_depth_ == 0) m_depth_ = 1;
  
#line 239
  if ([((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_WHITE] + [((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_BLACK] +
#line 240
  m_depth_ + 4 >= 64)
#line 241
  m_depth_ =
#line 242
  64 - [((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_WHITE] - [((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_BLACK];
  else if ([((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_WHITE] + [((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_BLACK] +
#line 244
  m_depth_ + 7 >= 64)
#line 245
  m_depth_ += 3;
  else if ([((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_WHITE] + [((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_BLACK] +
#line 247
  m_depth_ + 9 >= 64)
#line 248
  m_depth_ += 2;
  else if ([((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_WHITE] + [((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_BLACK] +
#line 250
  m_depth_ + 11 >= 64)
#line 251
  m_depth_++;
  
#line 253
  if ([((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_WHITE] + [((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_BLACK] +
#line 254
  m_depth_ >= 64) m_exhaustive_ = true;
  
#line 256
  m_coeff_ =
#line 257
  100 - JreIntDiv((100 *
#line 258
  ([((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_WHITE] + [((JOEScore *) nil_chk(m_score_)) GetScoreWithInt:JOEScore_BLACK] +
#line 259
  m_depth_ - 4)), 60);
  
#line 261
  m_nodes_searched_ = 0;
  
#line 263
  for (jint x = 0; x < 10; x++)
#line 264
  for (jint y = 0; y < 10; y++)
#line 265
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(m_board_), x)), y) = JOEScore_NOBODY;
  
#line 267
  for (jint x = 1; x < 9; x++)
#line 268
  for (jint y = 1; y < 9; y++)
#line 269
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(m_board_), x)), y) = [g GetSquareWithInt:x withInt:y];
  
#line 271
  m_bc_score_ = new_JOEScore_initWithInt_withInt_(JOEEngine_CalcBcScoreWithInt_(self, JOEScore_WHITE), JOEEngine_CalcBcScoreWithInt_(self, JOEScore_BLACK));
  
#line 273
  jlong playerbits = JOEEngine_ComputeOccupiedBitsWithInt_(self, player);
  jlong opponentbits = JOEEngine_ComputeOccupiedBitsWithInt_(self, JOEScore_GetOpponentWithInt_(player));
  
#line 276
  jint maxval = -JOEEngine_LARGEINT;
  jint max_x = 0;
  jint max_y = 0;
  
#line 287
  IOSObjectArray *moves = [IOSObjectArray newArrayWithLength:60 type:JOEMoveAndValue_class_()];
  jint number_of_moves = 0;
  jint number_of_maxval = 0;
  
#line 291
  [self SetInterruptWithBoolean:false];
  
#line 295
  for (jint x = 1; x < 9; x++)
#line 296
  for (jint y = 1; y < 9; y++)
#line 297
  if (IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(m_board_), x)), y) == JOEScore_NOBODY &&
#line 298
  (IOSLongArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(m_neighbor_bits_), x)), y) & opponentbits) != 0) {
    
#line 300
    jint val = JOEEngine_ComputeMove2WithInt_withInt_withInt_withInt_withInt_withLong_withLong_(self, x, y, player, 1, maxval, playerbits, opponentbits);
    
#line 302
    if (val != JOEEngine_ILLEGAL_VALUE) {
      
#line 304
      (void) IOSObjectArray_SetAndConsume(moves, number_of_moves++, new_JOEMoveAndValue_initPackagePrivateWithInt_withInt_withInt_(x, y, val));
      
#line 306
      if (val > maxval) {
        
#line 308
        maxval = val;
        max_x = x;
        max_y = y;
        number_of_maxval = 1;
      }
      else if (val == maxval) number_of_maxval++;
    }
    
#line 316
    if ([self GetInterrupt]) break;
  }
  
#line 321
  if (number_of_maxval > 1) {
    
#line 323
    jint r = 0;
    
#line 327
    if (m_strength_ != 0)
#line 328
    r = JreIntMod([self GetRandom], number_of_maxval) + 1;
    else
#line 330
    r = JreIntMod([self GetRandom], number_of_moves) + 1;
    
#line 332
    jint i;
    
#line 334
    for (i = 0; i < number_of_moves; i++)
#line 335
    if ((m_strength_ == 0 || ((JOEMoveAndValue *) nil_chk(IOSObjectArray_Get(moves, i)))->m_value_ == maxval) && --r <= 0) break;
    
#line 337
    max_x = ((JOEMoveAndValue *) nil_chk(IOSObjectArray_Get(moves, i)))->m_x_;
    max_y = ((JOEMoveAndValue *) nil_chk(IOSObjectArray_Get(moves, i)))->m_y_;
  }
  
#line 361
  if ([self GetInterrupt]) return nil;
  else if (maxval != -JOEEngine_LARGEINT) return new_JOEMove_initWithInt_withInt_withInt_(max_x, max_y, player);
  else return nil;
}


#line 367
- (JOEMove *)ComputeFirstMoveWithJOEGame:(JOEGame *)g {
  return JOEEngine_ComputeFirstMoveWithJOEGame_(self, g);
}


#line 391
- (jint)ComputeMove2WithInt:(jint)xplay
                    withInt:(jint)yplay
                    withInt:(jint)player
                    withInt:(jint)level
                    withInt:(jint)cutoffval
                   withLong:(jlong)playerbits
                   withLong:(jlong)opponentbits {
  return JOEEngine_ComputeMove2WithInt_withInt_withInt_withInt_withInt_withLong_withLong_(self, xplay, yplay, player, level, cutoffval, playerbits, opponentbits);
}


#line 507
- (jint)TryAllMovesWithInt:(jint)opponent
                   withInt:(jint)level
                   withInt:(jint)cutoffval
                  withLong:(jlong)opponentbits
                  withLong:(jlong)playerbits {
  return JOEEngine_TryAllMovesWithInt_withInt_withInt_withLong_withLong_(self, opponent, level, cutoffval, opponentbits, playerbits);
}


#line 536
- (jint)EvaluatePositionWithInt:(jint)player {
  return JOEEngine_EvaluatePositionWithInt_(self, player);
}


#line 557
- (void)SetupBcBoard {
  JOEEngine_SetupBcBoard(self);
}


#line 584
- (void)SetupBits {
  JOEEngine_SetupBits(self);
}


#line 612
- (jint)CalcBcScoreWithInt:(jint)player {
  return JOEEngine_CalcBcScoreWithInt_(self, player);
}


#line 624
- (jlong)ComputeOccupiedBitsWithInt:(jint)player {
  return JOEEngine_ComputeOccupiedBitsWithInt_(self, player);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJOEMove;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LJOEMove;", 0x2, 4, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x12, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x12, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x12, 9, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x12, 10, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x2, 11, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:withInt:);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(init);
  methods[3].selector = @selector(ComputeMoveWithJOEGame:);
  methods[4].selector = @selector(ComputeFirstMoveWithJOEGame:);
  methods[5].selector = @selector(ComputeMove2WithInt:withInt:withInt:withInt:withInt:withLong:withLong:);
  methods[6].selector = @selector(TryAllMovesWithInt:withInt:withInt:withLong:withLong:);
  methods[7].selector = @selector(EvaluatePositionWithInt:);
  methods[8].selector = @selector(SetupBcBoard);
  methods[9].selector = @selector(SetupBits);
  methods[10].selector = @selector(CalcBcScoreWithInt:);
  methods[11].selector = @selector(ComputeOccupiedBitsWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LARGEINT", "I", .constantValue.asInt = JOEEngine_LARGEINT, 0x1a, -1, -1, -1, -1 },
    { "ILLEGAL_VALUE", "I", .constantValue.asInt = JOEEngine_ILLEGAL_VALUE, 0x1a, -1, -1, -1, -1 },
    { "BC_WEIGHT", "I", .constantValue.asInt = JOEEngine_BC_WEIGHT, 0x1a, -1, -1, -1, -1 },
    { "m_board_", "[[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_bc_board_", "[[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_score_", "LJOEScore;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_bc_score_", "LJOEScore;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_squarestack_", "LJOESquareStack;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_depth_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_coeff_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_nodes_searched_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_exhaustive_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_coord_bit_", "[[J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_neighbor_bits_", "[[J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "I", "ComputeMove", "LJOEGame;", "ComputeFirstMove", "ComputeMove2", "IIIIIJJ", "TryAllMoves", "IIIJJ", "EvaluatePosition", "CalcBcScore", "ComputeOccupiedBits" };
  static const J2ObjcClassInfo _JOEEngine = { "Engine", "Othello.Engine", ptrTable, methods, fields, 7, 0x1, 12, 14, -1, -1, -1, -1, -1 };
  return &_JOEEngine;
}

@end


#line 207
void JOEEngine_initWithInt_withInt_(JOEEngine *self, jint st, jint sd) {
  JOESuperEngine_initWithInt_withInt_(self,
#line 207
  st, sd);
  
#line 207
  JOEEngine_SetupBcBoard(self);
  
#line 207
  JOEEngine_SetupBits(self);
}


#line 207
JOEEngine *new_JOEEngine_initWithInt_withInt_(jint st, jint sd) {
  J2OBJC_NEW_IMPL(JOEEngine, initWithInt_withInt_, st, sd)
}


#line 207
JOEEngine *create_JOEEngine_initWithInt_withInt_(jint st, jint sd) {
  J2OBJC_CREATE_IMPL(JOEEngine, initWithInt_withInt_, st, sd)
}


#line 210
void JOEEngine_initWithInt_(JOEEngine *self, jint st) {
  JOESuperEngine_initWithInt_(self,
#line 210
  st);
  
#line 210
  JOEEngine_SetupBcBoard(self);
  
#line 210
  JOEEngine_SetupBits(self);
}


#line 210
JOEEngine *new_JOEEngine_initWithInt_(jint st) {
  J2OBJC_NEW_IMPL(JOEEngine, initWithInt_, st)
}


#line 210
JOEEngine *create_JOEEngine_initWithInt_(jint st) {
  J2OBJC_CREATE_IMPL(JOEEngine, initWithInt_, st)
}


#line 213
void JOEEngine_init(JOEEngine *self) {
  JOESuperEngine_initWithInt_(self,
#line 213
  5);
  
#line 213
  JOEEngine_SetupBcBoard(self);
  
#line 213
  JOEEngine_SetupBits(self);
}


#line 213
JOEEngine *new_JOEEngine_init() {
  J2OBJC_NEW_IMPL(JOEEngine, init)
}


#line 213
JOEEngine *create_JOEEngine_init() {
  J2OBJC_CREATE_IMPL(JOEEngine, init)
}


#line 367
JOEMove *JOEEngine_ComputeFirstMoveWithJOEGame_(JOEEngine *self, JOEGame *g) {
  
#line 369
  jint r;
  jint player = [((JOEGame *) nil_chk(g)) GetWhoseTurn];
  
#line 372
  r = JreIntMod([self GetRandom], 4) + 1;
  
#line 374
  if (player == JOEScore_WHITE) {
    
#line 376
    if (r == 1) return new_JOEMove_initWithInt_withInt_withInt_(3, 5, player);
    else if (r == 2) return new_JOEMove_initWithInt_withInt_withInt_(4, 6, player);
    else if (r == 3) return new_JOEMove_initWithInt_withInt_withInt_(5, 3, player);
    else return new_JOEMove_initWithInt_withInt_withInt_(6, 4, player);
  }
  else {
    
#line 383
    if (r == 1) return new_JOEMove_initWithInt_withInt_withInt_(3, 4, player);
    else if (r == 2) return new_JOEMove_initWithInt_withInt_withInt_(5, 6, player);
    else if (r == 3) return new_JOEMove_initWithInt_withInt_withInt_(4, 3, player);
    else return new_JOEMove_initWithInt_withInt_withInt_(6, 5, player);
  }
}


#line 391
jint JOEEngine_ComputeMove2WithInt_withInt_withInt_withInt_withInt_withLong_withLong_(JOEEngine *self, jint xplay, jint yplay, jint player, jint level, jint cutoffval, jlong playerbits, jlong opponentbits) {
  
#line 394
  jint number_of_turned = 0;
  JOESquareStackEntry *mse;
  jint opponent = JOEScore_GetOpponentWithInt_(player);
  
#line 398
  self->m_nodes_searched_++;
  
#line 400
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), xplay)), yplay) = player;
  playerbits |= IOSLongArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_coord_bit_), xplay)), yplay);
  [((JOEScore *) nil_chk(self->m_score_)) ScoreAddWithInt:player withInt:1];
  [((JOEScore *) nil_chk(self->m_bc_score_)) ScoreAddWithInt:player withInt:IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_bc_board_), xplay)), yplay)];
  
#line 409
  for (jint xinc = -1; xinc <= 1; xinc++)
#line 410
  for (jint yinc = -1; yinc <= 1; yinc++)
#line 411
  if (xinc != 0 || yinc != 0) {
    
#line 413
    jint x;
    
#line 413
    jint y;
    
#line 415
    for (x = xplay + xinc, y = yplay + yinc; IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), x)), y) == opponent;
#line 416
    x += xinc, y += yinc)
#line 417
    
    ;
    if (IOSIntArray_Get(nil_chk(IOSObjectArray_Get(self->m_board_, x)), y) == player)
#line 420
    for (x -= xinc, y -= yinc; x != xplay || y != yplay;
#line 421
    x -= xinc, y -= yinc) {
      
#line 423
      *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), x)), y) = player;
      playerbits |= IOSLongArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_coord_bit_), x)), y);
      opponentbits &= ~IOSLongArray_Get(nil_chk(IOSObjectArray_Get(self->m_coord_bit_, x)), y);
      JOESquareStack_PushWithInt_withInt_(nil_chk(self->m_squarestack_), x, y);
      [((JOEScore *) nil_chk(self->m_bc_score_)) ScoreAddWithInt:player withInt:IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_bc_board_), x)), y)];
      [((JOEScore *) nil_chk(self->m_bc_score_)) ScoreSubtractWithInt:opponent withInt:IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_bc_board_), x)), y)];
      number_of_turned++;
    }
  }
  
#line 433
  jint retval = -JOEEngine_LARGEINT;
  
#line 435
  if (number_of_turned > 0) {
    
#line 441
    [((JOEScore *) nil_chk(self->m_score_)) ScoreAddWithInt:player withInt:number_of_turned];
    [((JOEScore *) nil_chk(self->m_score_)) ScoreSubtractWithInt:opponent withInt:number_of_turned];
    
#line 444
    if (level >= self->m_depth_) retval = JOEEngine_EvaluatePositionWithInt_(self, player);
    else {
      
#line 447
      jint maxval = JOEEngine_TryAllMovesWithInt_withInt_withInt_withLong_withLong_(self, opponent, level, cutoffval, opponentbits,
#line 448
      playerbits);
      
#line 450
      if (maxval != -JOEEngine_LARGEINT) retval = -maxval;
      else {
        
#line 457
        retval = JOEEngine_TryAllMovesWithInt_withInt_withInt_withLong_withLong_(self, player, level, -JOEEngine_LARGEINT, playerbits,
#line 458
        opponentbits);
        
#line 460
        if (retval == -JOEEngine_LARGEINT) {
          
#line 466
          jint finalscore =
#line 467
          [((JOEScore *) nil_chk(self->m_score_)) GetScoreWithInt:player] - [((JOEScore *) nil_chk(self->m_score_)) GetScoreWithInt:opponent];
          
#line 469
          if (self->m_exhaustive_) retval = finalscore;
          else {
            
#line 474
            if (finalscore > 0) retval = JOEEngine_LARGEINT - 65 + finalscore;
            else if (finalscore < 0) retval = -(JOEEngine_LARGEINT - 65 + finalscore);
            else retval = 0;
          }
        }
      }
    }
    
#line 482
    [((JOEScore *) nil_chk(self->m_score_)) ScoreAddWithInt:opponent withInt:number_of_turned];
    [((JOEScore *) nil_chk(self->m_score_)) ScoreSubtractWithInt:player withInt:number_of_turned];
  }
  
#line 490
  for (jint i = number_of_turned; i > 0; i--) {
    
#line 492
    mse = JOESquareStack_Pop(nil_chk(self->m_squarestack_));
    [((JOEScore *) nil_chk(self->m_bc_score_)) ScoreAddWithInt:opponent withInt:IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_bc_board_), ((JOESquareStackEntry *) nil_chk(mse))->m_x_)), mse->m_y_)];
    [((JOEScore *) nil_chk(self->m_bc_score_)) ScoreSubtractWithInt:player withInt:IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_bc_board_), mse->m_x_)), mse->m_y_)];
    *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), mse->m_x_)), mse->m_y_) = opponent;
  }
  
#line 498
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), xplay)), yplay) = JOEScore_NOBODY;
  [((JOEScore *) nil_chk(self->m_score_)) ScoreSubtractWithInt:player withInt:1];
  [((JOEScore *) nil_chk(self->m_bc_score_)) ScoreSubtractWithInt:player withInt:IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_bc_board_), xplay)), yplay)];
  
#line 502
  if (number_of_turned < 1 || [self GetInterrupt]) return JOEEngine_ILLEGAL_VALUE;
  else return retval;
}


#line 507
jint JOEEngine_TryAllMovesWithInt_withInt_withInt_withLong_withLong_(JOEEngine *self, jint opponent, jint level, jint cutoffval, jlong opponentbits, jlong playerbits) {
  
#line 510
  jint maxval = -JOEEngine_LARGEINT;
  
#line 512
  for (jint x = 1; x < 9; x++) {
    
#line 514
    for (jint y = 1; y < 9; y++)
#line 515
    if (IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), x)), y) == JOEScore_NOBODY &&
#line 516
    (IOSLongArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_neighbor_bits_), x)), y) & playerbits) != 0) {
      
#line 518
      jint val = JOEEngine_ComputeMove2WithInt_withInt_withInt_withInt_withInt_withLong_withLong_(self, x, y, opponent, level + 1, maxval, opponentbits,
#line 519
      playerbits);
      
#line 521
      if (val != JOEEngine_ILLEGAL_VALUE && val > maxval) {
        
#line 523
        maxval = val;
        if (maxval > -cutoffval || [self GetInterrupt]) break;
      }
    }
    
#line 528
    if (maxval > -cutoffval || [self GetInterrupt]) break;
  }
  
#line 531
  if ([self GetInterrupt]) return -JOEEngine_LARGEINT;
  return maxval;
}


#line 536
jint JOEEngine_EvaluatePositionWithInt_(JOEEngine *self, jint player) {
  
#line 538
  jint retval;
  
#line 540
  jint opponent = JOEScore_GetOpponentWithInt_(player);
  jint score_player = [((JOEScore *) nil_chk(self->m_score_)) GetScoreWithInt:player];
  jint score_opponent = [((JOEScore *) nil_chk(self->m_score_)) GetScoreWithInt:opponent];
  
#line 544
  if (self->m_exhaustive_) retval = score_player - score_opponent;
  else {
    
#line 547
    retval = (100 - self->m_coeff_) *
#line 548
    ([((JOEScore *) nil_chk(self->m_score_)) GetScoreWithInt:player] - [((JOEScore *) nil_chk(self->m_score_)) GetScoreWithInt:opponent]) +
#line 549
    self->m_coeff_ * JOEEngine_BC_WEIGHT *
#line 550
    ([((JOEScore *) nil_chk(self->m_bc_score_)) GetScoreWithInt:player] - [((JOEScore *) nil_chk(self->m_bc_score_)) GetScoreWithInt:opponent]);
  }
  
#line 553
  return retval;
}


#line 557
void JOEEngine_SetupBcBoard(JOEEngine *self) {
  
#line 559
  self->m_bc_board_ = [IOSIntArray newArrayWithDimensions:2 lengths:(jint[]){ 9, 9 }];
  
#line 561
  for (jint i = 1; i < 9; i++)
#line 562
  for (jint j = 1; j < 9; j++) {
    
#line 564
    if (i == 2 || i == 7) *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, i)), j) = -2;
    else
#line 564
    *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, i)), j) = 0;
    if (j == 2 || j == 7) *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, i)), j) -= 2;
  }
  
#line 568
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, 1)), 1) = 20;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, 8)), 1) = 20;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, 1)), 8) = 20;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, 8)), 8) = 20;
  
#line 573
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, 1)), 2) = -2;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, 2)), 1) = -2;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, 1)), 7) = -2;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, 7)), 1) = -2;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, 8)), 2) = -2;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, 2)), 8) = -2;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, 8)), 7) = -2;
  *IOSIntArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_bc_board_, 7)), 8) = -2;
}


#line 584
void JOEEngine_SetupBits(JOEEngine *self) {
  
#line 586
  self->m_coord_bit_ = [IOSLongArray newArrayWithDimensions:2 lengths:(jint[]){ 9, 9 }];
  self->m_neighbor_bits_ = [IOSLongArray newArrayWithDimensions:2 lengths:(jint[]){ 9, 9 }];
  
#line 589
  jlong bits = 1;
  
#line 591
  for (jint i = 1; i < 9; i++)
#line 592
  for (jint j = 1; j < 9; j++) {
    
#line 594
    *IOSLongArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_coord_bit_, i)), j) = bits;
    bits *= 2;
  }
  
#line 598
  for (jint i = 1; i < 9; i++)
#line 599
  for (jint j = 1; j < 9; j++) {
    
#line 601
    *IOSLongArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_neighbor_bits_, i)), j) = 0;
    
#line 603
    for (jint xinc = -1; xinc <= 1; xinc++)
#line 604
    for (jint yinc = -1; yinc <= 1; yinc++)
#line 605
    if (xinc != 0 || yinc != 0)
#line 606
    if (i + xinc > 0 && i + xinc < 9 && j + yinc > 0 && j + yinc < 9)
#line 607
    *IOSLongArray_GetRef(nil_chk(IOSObjectArray_Get(self->m_neighbor_bits_, i)), j) |= IOSLongArray_Get(nil_chk(IOSObjectArray_Get(self->m_coord_bit_, i + xinc)), j + yinc);
  }
}


#line 612
jint JOEEngine_CalcBcScoreWithInt_(JOEEngine *self, jint player) {
  
#line 614
  jint sum = 0;
  
#line 616
  for (jint i = 1; i < 9; i++)
#line 617
  for (jint j = 1; j < 9; j++)
#line 618
  if (IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), i)), j) == player) sum += IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_bc_board_), i)), j);
  
#line 620
  return sum;
}


#line 624
jlong JOEEngine_ComputeOccupiedBitsWithInt_(JOEEngine *self, jint player) {
  
#line 626
  jlong retval = 0;
  
#line 628
  for (jint i = 1; i < 9; i++)
#line 629
  for (jint j = 1; j < 9; j++)
#line 630
  if (IOSIntArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_board_), i)), j) == player) retval |= IOSLongArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(self->m_coord_bit_), i)), j);
  
#line 632
  return retval;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JOEEngine)

J2OBJC_NAME_MAPPING(JOEEngine, "Othello.Engine", "JOE")