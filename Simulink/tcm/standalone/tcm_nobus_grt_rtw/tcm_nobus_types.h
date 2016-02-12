/*
 * tcm_nobus_types.h
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

#ifndef RTW_HEADER_tcm_nobus_types_h_
#define RTW_HEADER_tcm_nobus_types_h_
#include "rtwtypes.h"
#include "builtin_typeid_types.h"
#include "multiword_types.h"
#include "zero_crossing_types.h"
#ifndef _DEFINED_TYPEDEF_FOR_struct_IhM2zoFSDzG8T7bYSYCjnG_
#define _DEFINED_TYPEDEF_FOR_struct_IhM2zoFSDzG8T7bYSYCjnG_

typedef struct {
  real_T altcmd;
  real_T alteng;
  real_T FPAeng;
  real_T fpacmd;
  real_T headcmd;
  real_T headeng;
  real_T throteng;
} struct_IhM2zoFSDzG8T7bYSYCjnG;

#endif

#ifndef _DEFINED_TYPEDEF_FOR_struct_hldZyuU6T37zb4V8pE3bjF_
#define _DEFINED_TYPEDEF_FOR_struct_hldZyuU6T37zb4V8pE3bjF_

typedef struct {
  real_T throttle;
} struct_hldZyuU6T37zb4V8pE3bjF;

#endif

/* Parameters (auto storage) */
typedef struct P_tcm_nobus_T_ P_tcm_nobus_T;

/* Forward declaration for rtModel */
typedef struct tag_RTM_tcm_nobus_T RT_MODEL_tcm_nobus_T;

#endif                                 /* RTW_HEADER_tcm_nobus_types_h_ */
