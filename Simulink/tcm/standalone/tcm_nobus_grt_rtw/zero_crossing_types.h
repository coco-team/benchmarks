/*
 * zero_crossing_types.h
 *
 * Code generation for model "tcm_nobus".
 *
 * Model version              : 1.28
 * Simulink Coder version : 8.8 (R2015a) 09-Feb-2015
 * C source code generated on : Fri Feb 12 14:15:31 2016
 *
 * Target selection: grt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef __ZERO_CROSSING_TYPES_H__
#define __ZERO_CROSSING_TYPES_H__
#include "rtwtypes.h"

/* Trigger directions: falling, either, and rising */
typedef enum {
  FALLING_ZERO_CROSSING = -1,
  ANY_ZERO_CROSSING = 0,
  RISING_ZERO_CROSSING = 1
} ZCDirection;

/* Previous state of a trigger signal */
typedef uint8_T ZCSigState;

/* Initial value of a trigger zero crossing signal */
#define UNINITIALIZED_ZCSIG            0x03U
#define NEG_ZCSIG                      0x02U
#define POS_ZCSIG                      0x01U
#define ZERO_ZCSIG                     0x00U

/* Current state of a trigger signal */
typedef enum {
  FALLING_ZCEVENT = -1,
  NO_ZCEVENT = 0,
  RISING_ZCEVENT = 1
} ZCEventType;

#endif                                 /* __ZERO_CROSSING_TYPES_H__ */
