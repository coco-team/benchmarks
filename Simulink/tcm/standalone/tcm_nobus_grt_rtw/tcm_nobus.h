/*
 * tcm_nobus.h
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

#ifndef RTW_HEADER_tcm_nobus_h_
#define RTW_HEADER_tcm_nobus_h_
#include <math.h>
#include <string.h>
#include <stddef.h>
#ifndef tcm_nobus_COMMON_INCLUDES_
# define tcm_nobus_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "zero_crossing_types.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "rt_logging.h"
#endif                                 /* tcm_nobus_COMMON_INCLUDES_ */

#include "tcm_nobus_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rt_look.h"
#include "rt_look1d.h"
#include "rt_nonfinite.h"
#include "rt_defines.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetBlkStateChangeFlag
# define rtmGetBlkStateChangeFlag(rtm) ((rtm)->ModelData.blkStateChange)
#endif

#ifndef rtmSetBlkStateChangeFlag
# define rtmSetBlkStateChangeFlag(rtm, val) ((rtm)->ModelData.blkStateChange = (val))
#endif

#ifndef rtmGetBlockIO
# define rtmGetBlockIO(rtm)            ((rtm)->ModelData.blockIO)
#endif

#ifndef rtmSetBlockIO
# define rtmSetBlockIO(rtm, val)       ((rtm)->ModelData.blockIO = (val))
#endif

#ifndef rtmGetChecksums
# define rtmGetChecksums(rtm)          ((rtm)->Sizes.checksums)
#endif

#ifndef rtmSetChecksums
# define rtmSetChecksums(rtm, val)     ((rtm)->Sizes.checksums = (val))
#endif

#ifndef rtmGetConstBlockIO
# define rtmGetConstBlockIO(rtm)       ((rtm)->ModelData.constBlockIO)
#endif

#ifndef rtmSetConstBlockIO
# define rtmSetConstBlockIO(rtm, val)  ((rtm)->ModelData.constBlockIO = (val))
#endif

#ifndef rtmGetContStateDisabled
# define rtmGetContStateDisabled(rtm)  ((rtm)->ModelData.contStateDisabled)
#endif

#ifndef rtmSetContStateDisabled
# define rtmSetContStateDisabled(rtm, val) ((rtm)->ModelData.contStateDisabled = (val))
#endif

#ifndef rtmGetContStates
# define rtmGetContStates(rtm)         ((rtm)->ModelData.contStates)
#endif

#ifndef rtmSetContStates
# define rtmSetContStates(rtm, val)    ((rtm)->ModelData.contStates = (val))
#endif

#ifndef rtmGetDataMapInfo
# define rtmGetDataMapInfo(rtm)        ()
#endif

#ifndef rtmSetDataMapInfo
# define rtmSetDataMapInfo(rtm, val)   ()
#endif

#ifndef rtmGetDefaultParam
# define rtmGetDefaultParam(rtm)       ((rtm)->ModelData.defaultParam)
#endif

#ifndef rtmSetDefaultParam
# define rtmSetDefaultParam(rtm, val)  ((rtm)->ModelData.defaultParam = (val))
#endif

#ifndef rtmGetDerivCacheNeedsReset
# define rtmGetDerivCacheNeedsReset(rtm) ((rtm)->ModelData.derivCacheNeedsReset)
#endif

#ifndef rtmSetDerivCacheNeedsReset
# define rtmSetDerivCacheNeedsReset(rtm, val) ((rtm)->ModelData.derivCacheNeedsReset = (val))
#endif

#ifndef rtmGetDirectFeedThrough
# define rtmGetDirectFeedThrough(rtm)  ((rtm)->Sizes.sysDirFeedThru)
#endif

#ifndef rtmSetDirectFeedThrough
# define rtmSetDirectFeedThrough(rtm, val) ((rtm)->Sizes.sysDirFeedThru = (val))
#endif

#ifndef rtmGetErrorStatusFlag
# define rtmGetErrorStatusFlag(rtm)    ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatusFlag
# define rtmSetErrorStatusFlag(rtm, val) ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetFinalTime
# define rtmGetFinalTime(rtm)          ((rtm)->Timing.tFinal)
#endif

#ifndef rtmSetFinalTime
# define rtmSetFinalTime(rtm, val)     ((rtm)->Timing.tFinal = (val))
#endif

#ifndef rtmGetFirstInitCondFlag
# define rtmGetFirstInitCondFlag(rtm)  ((rtm)->Timing.firstInitCondFlag)
#endif

#ifndef rtmSetFirstInitCondFlag
# define rtmSetFirstInitCondFlag(rtm, val) ((rtm)->Timing.firstInitCondFlag = (val))
#endif

#ifndef rtmGetIntgData
# define rtmGetIntgData(rtm)           ((rtm)->ModelData.intgData)
#endif

#ifndef rtmSetIntgData
# define rtmSetIntgData(rtm, val)      ((rtm)->ModelData.intgData = (val))
#endif

#ifndef rtmGetMdlRefGlobalTID
# define rtmGetMdlRefGlobalTID(rtm)    ()
#endif

#ifndef rtmSetMdlRefGlobalTID
# define rtmSetMdlRefGlobalTID(rtm, val) ()
#endif

#ifndef rtmGetMdlRefTriggerTID
# define rtmGetMdlRefTriggerTID(rtm)   ()
#endif

#ifndef rtmSetMdlRefTriggerTID
# define rtmSetMdlRefTriggerTID(rtm, val) ()
#endif

#ifndef rtmGetModelMappingInfo
# define rtmGetModelMappingInfo(rtm)   ((rtm)->SpecialInfo.mappingInfo)
#endif

#ifndef rtmSetModelMappingInfo
# define rtmSetModelMappingInfo(rtm, val) ((rtm)->SpecialInfo.mappingInfo = (val))
#endif

#ifndef rtmGetModelName
# define rtmGetModelName(rtm)          ((rtm)->modelName)
#endif

#ifndef rtmSetModelName
# define rtmSetModelName(rtm, val)     ((rtm)->modelName = (val))
#endif

#ifndef rtmGetNonInlinedSFcns
# define rtmGetNonInlinedSFcns(rtm)    ()
#endif

#ifndef rtmSetNonInlinedSFcns
# define rtmSetNonInlinedSFcns(rtm, val) ()
#endif

#ifndef rtmGetNumBlockIO
# define rtmGetNumBlockIO(rtm)         ((rtm)->Sizes.numBlockIO)
#endif

#ifndef rtmSetNumBlockIO
# define rtmSetNumBlockIO(rtm, val)    ((rtm)->Sizes.numBlockIO = (val))
#endif

#ifndef rtmGetNumBlockParams
# define rtmGetNumBlockParams(rtm)     ((rtm)->Sizes.numBlockPrms)
#endif

#ifndef rtmSetNumBlockParams
# define rtmSetNumBlockParams(rtm, val) ((rtm)->Sizes.numBlockPrms = (val))
#endif

#ifndef rtmGetNumBlocks
# define rtmGetNumBlocks(rtm)          ((rtm)->Sizes.numBlocks)
#endif

#ifndef rtmSetNumBlocks
# define rtmSetNumBlocks(rtm, val)     ((rtm)->Sizes.numBlocks = (val))
#endif

#ifndef rtmGetNumContStates
# define rtmGetNumContStates(rtm)      ((rtm)->Sizes.numContStates)
#endif

#ifndef rtmSetNumContStates
# define rtmSetNumContStates(rtm, val) ((rtm)->Sizes.numContStates = (val))
#endif

#ifndef rtmGetNumDWork
# define rtmGetNumDWork(rtm)           ((rtm)->Sizes.numDwork)
#endif

#ifndef rtmSetNumDWork
# define rtmSetNumDWork(rtm, val)      ((rtm)->Sizes.numDwork = (val))
#endif

#ifndef rtmGetNumInputPorts
# define rtmGetNumInputPorts(rtm)      ((rtm)->Sizes.numIports)
#endif

#ifndef rtmSetNumInputPorts
# define rtmSetNumInputPorts(rtm, val) ((rtm)->Sizes.numIports = (val))
#endif

#ifndef rtmGetNumNonSampledZCs
# define rtmGetNumNonSampledZCs(rtm)   ((rtm)->Sizes.numNonSampZCs)
#endif

#ifndef rtmSetNumNonSampledZCs
# define rtmSetNumNonSampledZCs(rtm, val) ((rtm)->Sizes.numNonSampZCs = (val))
#endif

#ifndef rtmGetNumOutputPorts
# define rtmGetNumOutputPorts(rtm)     ((rtm)->Sizes.numOports)
#endif

#ifndef rtmSetNumOutputPorts
# define rtmSetNumOutputPorts(rtm, val) ((rtm)->Sizes.numOports = (val))
#endif

#ifndef rtmGetNumPeriodicContStates
# define rtmGetNumPeriodicContStates(rtm) ((rtm)->Sizes.numPeriodicContStates)
#endif

#ifndef rtmSetNumPeriodicContStates
# define rtmSetNumPeriodicContStates(rtm, val) ((rtm)->Sizes.numPeriodicContStates = (val))
#endif

#ifndef rtmGetNumSFcnParams
# define rtmGetNumSFcnParams(rtm)      ((rtm)->Sizes.numSFcnPrms)
#endif

#ifndef rtmSetNumSFcnParams
# define rtmSetNumSFcnParams(rtm, val) ((rtm)->Sizes.numSFcnPrms = (val))
#endif

#ifndef rtmGetNumSFunctions
# define rtmGetNumSFunctions(rtm)      ((rtm)->Sizes.numSFcns)
#endif

#ifndef rtmSetNumSFunctions
# define rtmSetNumSFunctions(rtm, val) ((rtm)->Sizes.numSFcns = (val))
#endif

#ifndef rtmGetNumSampleTimes
# define rtmGetNumSampleTimes(rtm)     ((rtm)->Sizes.numSampTimes)
#endif

#ifndef rtmSetNumSampleTimes
# define rtmSetNumSampleTimes(rtm, val) ((rtm)->Sizes.numSampTimes = (val))
#endif

#ifndef rtmGetNumU
# define rtmGetNumU(rtm)               ((rtm)->Sizes.numU)
#endif

#ifndef rtmSetNumU
# define rtmSetNumU(rtm, val)          ((rtm)->Sizes.numU = (val))
#endif

#ifndef rtmGetNumY
# define rtmGetNumY(rtm)               ((rtm)->Sizes.numY)
#endif

#ifndef rtmSetNumY
# define rtmSetNumY(rtm, val)          ((rtm)->Sizes.numY = (val))
#endif

#ifndef rtmGetOdeF
# define rtmGetOdeF(rtm)               ((rtm)->ModelData.odeF)
#endif

#ifndef rtmSetOdeF
# define rtmSetOdeF(rtm, val)          ((rtm)->ModelData.odeF = (val))
#endif

#ifndef rtmGetOdeY
# define rtmGetOdeY(rtm)               ((rtm)->ModelData.odeY)
#endif

#ifndef rtmSetOdeY
# define rtmSetOdeY(rtm, val)          ((rtm)->ModelData.odeY = (val))
#endif

#ifndef rtmGetOffsetTimeArray
# define rtmGetOffsetTimeArray(rtm)    ((rtm)->Timing.offsetTimesArray)
#endif

#ifndef rtmSetOffsetTimeArray
# define rtmSetOffsetTimeArray(rtm, val) ((rtm)->Timing.offsetTimesArray = (val))
#endif

#ifndef rtmGetOffsetTimePtr
# define rtmGetOffsetTimePtr(rtm)      ((rtm)->Timing.offsetTimes)
#endif

#ifndef rtmSetOffsetTimePtr
# define rtmSetOffsetTimePtr(rtm, val) ((rtm)->Timing.offsetTimes = (val))
#endif

#ifndef rtmGetOptions
# define rtmGetOptions(rtm)            ((rtm)->Sizes.options)
#endif

#ifndef rtmSetOptions
# define rtmSetOptions(rtm, val)       ((rtm)->Sizes.options = (val))
#endif

#ifndef rtmGetParamIsMalloced
# define rtmGetParamIsMalloced(rtm)    ()
#endif

#ifndef rtmSetParamIsMalloced
# define rtmSetParamIsMalloced(rtm, val) ()
#endif

#ifndef rtmGetPath
# define rtmGetPath(rtm)               ((rtm)->path)
#endif

#ifndef rtmSetPath
# define rtmSetPath(rtm, val)          ((rtm)->path = (val))
#endif

#ifndef rtmGetPerTaskSampleHits
# define rtmGetPerTaskSampleHits(rtm)  ()
#endif

#ifndef rtmSetPerTaskSampleHits
# define rtmSetPerTaskSampleHits(rtm, val) ()
#endif

#ifndef rtmGetPerTaskSampleHitsArray
# define rtmGetPerTaskSampleHitsArray(rtm) ((rtm)->Timing.perTaskSampleHitsArray)
#endif

#ifndef rtmSetPerTaskSampleHitsArray
# define rtmSetPerTaskSampleHitsArray(rtm, val) ((rtm)->Timing.perTaskSampleHitsArray = (val))
#endif

#ifndef rtmGetPerTaskSampleHitsPtr
# define rtmGetPerTaskSampleHitsPtr(rtm) ((rtm)->Timing.perTaskSampleHits)
#endif

#ifndef rtmSetPerTaskSampleHitsPtr
# define rtmSetPerTaskSampleHitsPtr(rtm, val) ((rtm)->Timing.perTaskSampleHits = (val))
#endif

#ifndef rtmGetPeriodicContStateIndices
# define rtmGetPeriodicContStateIndices(rtm) ((rtm)->ModelData.periodicContStateIndices)
#endif

#ifndef rtmSetPeriodicContStateIndices
# define rtmSetPeriodicContStateIndices(rtm, val) ((rtm)->ModelData.periodicContStateIndices = (val))
#endif

#ifndef rtmGetPeriodicContStateRanges
# define rtmGetPeriodicContStateRanges(rtm) ((rtm)->ModelData.periodicContStateRanges)
#endif

#ifndef rtmSetPeriodicContStateRanges
# define rtmSetPeriodicContStateRanges(rtm, val) ((rtm)->ModelData.periodicContStateRanges = (val))
#endif

#ifndef rtmGetPrevZCSigState
# define rtmGetPrevZCSigState(rtm)     ((rtm)->ModelData.prevZCSigState)
#endif

#ifndef rtmSetPrevZCSigState
# define rtmSetPrevZCSigState(rtm, val) ((rtm)->ModelData.prevZCSigState = (val))
#endif

#ifndef rtmGetRTWExtModeInfo
# define rtmGetRTWExtModeInfo(rtm)     ((rtm)->extModeInfo)
#endif

#ifndef rtmSetRTWExtModeInfo
# define rtmSetRTWExtModeInfo(rtm, val) ((rtm)->extModeInfo = (val))
#endif

#ifndef rtmGetRTWGeneratedSFcn
# define rtmGetRTWGeneratedSFcn(rtm)   ((rtm)->Sizes.rtwGenSfcn)
#endif

#ifndef rtmSetRTWGeneratedSFcn
# define rtmSetRTWGeneratedSFcn(rtm, val) ((rtm)->Sizes.rtwGenSfcn = (val))
#endif

#ifndef rtmGetRTWLogInfo
# define rtmGetRTWLogInfo(rtm)         ((rtm)->rtwLogInfo)
#endif

#ifndef rtmSetRTWLogInfo
# define rtmSetRTWLogInfo(rtm, val)    ((rtm)->rtwLogInfo = (val))
#endif

#ifndef rtmGetRTWRTModelMethodsInfo
# define rtmGetRTWRTModelMethodsInfo(rtm) ()
#endif

#ifndef rtmSetRTWRTModelMethodsInfo
# define rtmSetRTWRTModelMethodsInfo(rtm, val) ()
#endif

#ifndef rtmGetRTWSfcnInfo
# define rtmGetRTWSfcnInfo(rtm)        ((rtm)->sfcnInfo)
#endif

#ifndef rtmSetRTWSfcnInfo
# define rtmSetRTWSfcnInfo(rtm, val)   ((rtm)->sfcnInfo = (val))
#endif

#ifndef rtmGetRTWSolverInfo
# define rtmGetRTWSolverInfo(rtm)      ((rtm)->solverInfo)
#endif

#ifndef rtmSetRTWSolverInfo
# define rtmSetRTWSolverInfo(rtm, val) ((rtm)->solverInfo = (val))
#endif

#ifndef rtmGetRTWSolverInfoPtr
# define rtmGetRTWSolverInfoPtr(rtm)   ((rtm)->solverInfoPtr)
#endif

#ifndef rtmSetRTWSolverInfoPtr
# define rtmSetRTWSolverInfoPtr(rtm, val) ((rtm)->solverInfoPtr = (val))
#endif

#ifndef rtmGetReservedForXPC
# define rtmGetReservedForXPC(rtm)     ((rtm)->SpecialInfo.xpcData)
#endif

#ifndef rtmSetReservedForXPC
# define rtmSetReservedForXPC(rtm, val) ((rtm)->SpecialInfo.xpcData = (val))
#endif

#ifndef rtmGetRootDWork
# define rtmGetRootDWork(rtm)          ((rtm)->ModelData.dwork)
#endif

#ifndef rtmSetRootDWork
# define rtmSetRootDWork(rtm, val)     ((rtm)->ModelData.dwork = (val))
#endif

#ifndef rtmGetSFunctions
# define rtmGetSFunctions(rtm)         ((rtm)->childSfunctions)
#endif

#ifndef rtmSetSFunctions
# define rtmSetSFunctions(rtm, val)    ((rtm)->childSfunctions = (val))
#endif

#ifndef rtmGetSampleHitArray
# define rtmGetSampleHitArray(rtm)     ((rtm)->Timing.sampleHitArray)
#endif

#ifndef rtmSetSampleHitArray
# define rtmSetSampleHitArray(rtm, val) ((rtm)->Timing.sampleHitArray = (val))
#endif

#ifndef rtmGetSampleHitPtr
# define rtmGetSampleHitPtr(rtm)       ((rtm)->Timing.sampleHits)
#endif

#ifndef rtmSetSampleHitPtr
# define rtmSetSampleHitPtr(rtm, val)  ((rtm)->Timing.sampleHits = (val))
#endif

#ifndef rtmGetSampleTimeArray
# define rtmGetSampleTimeArray(rtm)    ((rtm)->Timing.sampleTimesArray)
#endif

#ifndef rtmSetSampleTimeArray
# define rtmSetSampleTimeArray(rtm, val) ((rtm)->Timing.sampleTimesArray = (val))
#endif

#ifndef rtmGetSampleTimePtr
# define rtmGetSampleTimePtr(rtm)      ((rtm)->Timing.sampleTimes)
#endif

#ifndef rtmSetSampleTimePtr
# define rtmSetSampleTimePtr(rtm, val) ((rtm)->Timing.sampleTimes = (val))
#endif

#ifndef rtmGetSampleTimeTaskIDArray
# define rtmGetSampleTimeTaskIDArray(rtm) ((rtm)->Timing.sampleTimeTaskIDArray)
#endif

#ifndef rtmSetSampleTimeTaskIDArray
# define rtmSetSampleTimeTaskIDArray(rtm, val) ((rtm)->Timing.sampleTimeTaskIDArray = (val))
#endif

#ifndef rtmGetSampleTimeTaskIDPtr
# define rtmGetSampleTimeTaskIDPtr(rtm) ((rtm)->Timing.sampleTimeTaskIDPtr)
#endif

#ifndef rtmSetSampleTimeTaskIDPtr
# define rtmSetSampleTimeTaskIDPtr(rtm, val) ((rtm)->Timing.sampleTimeTaskIDPtr = (val))
#endif

#ifndef rtmGetSimMode
# define rtmGetSimMode(rtm)            ((rtm)->simMode)
#endif

#ifndef rtmSetSimMode
# define rtmSetSimMode(rtm, val)       ((rtm)->simMode = (val))
#endif

#ifndef rtmGetSimTimeStep
# define rtmGetSimTimeStep(rtm)        ((rtm)->Timing.simTimeStep)
#endif

#ifndef rtmSetSimTimeStep
# define rtmSetSimTimeStep(rtm, val)   ((rtm)->Timing.simTimeStep = (val))
#endif

#ifndef rtmGetStartTime
# define rtmGetStartTime(rtm)          ((rtm)->Timing.tStart)
#endif

#ifndef rtmSetStartTime
# define rtmSetStartTime(rtm, val)     ((rtm)->Timing.tStart = (val))
#endif

#ifndef rtmGetStepSize
# define rtmGetStepSize(rtm)           ((rtm)->Timing.stepSize)
#endif

#ifndef rtmSetStepSize
# define rtmSetStepSize(rtm, val)      ((rtm)->Timing.stepSize = (val))
#endif

#ifndef rtmGetStopRequestedFlag
# define rtmGetStopRequestedFlag(rtm)  ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequestedFlag
# define rtmSetStopRequestedFlag(rtm, val) ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetTaskCounters
# define rtmGetTaskCounters(rtm)       ()
#endif

#ifndef rtmSetTaskCounters
# define rtmSetTaskCounters(rtm, val)  ()
#endif

#ifndef rtmGetTaskTimeArray
# define rtmGetTaskTimeArray(rtm)      ((rtm)->Timing.tArray)
#endif

#ifndef rtmSetTaskTimeArray
# define rtmSetTaskTimeArray(rtm, val) ((rtm)->Timing.tArray = (val))
#endif

#ifndef rtmGetTimePtr
# define rtmGetTimePtr(rtm)            ((rtm)->Timing.t)
#endif

#ifndef rtmSetTimePtr
# define rtmSetTimePtr(rtm, val)       ((rtm)->Timing.t = (val))
#endif

#ifndef rtmGetTimingData
# define rtmGetTimingData(rtm)         ((rtm)->Timing.timingData)
#endif

#ifndef rtmSetTimingData
# define rtmSetTimingData(rtm, val)    ((rtm)->Timing.timingData = (val))
#endif

#ifndef rtmGetU
# define rtmGetU(rtm)                  ((rtm)->ModelData.inputs)
#endif

#ifndef rtmSetU
# define rtmSetU(rtm, val)             ((rtm)->ModelData.inputs = (val))
#endif

#ifndef rtmGetVarNextHitTimesListPtr
# define rtmGetVarNextHitTimesListPtr(rtm) ((rtm)->Timing.varNextHitTimesList)
#endif

#ifndef rtmSetVarNextHitTimesListPtr
# define rtmSetVarNextHitTimesListPtr(rtm, val) ((rtm)->Timing.varNextHitTimesList = (val))
#endif

#ifndef rtmGetY
# define rtmGetY(rtm)                  ((rtm)->ModelData.outputs)
#endif

#ifndef rtmSetY
# define rtmSetY(rtm, val)             ((rtm)->ModelData.outputs = (val))
#endif

#ifndef rtmGetZCCacheNeedsReset
# define rtmGetZCCacheNeedsReset(rtm)  ((rtm)->ModelData.zCCacheNeedsReset)
#endif

#ifndef rtmSetZCCacheNeedsReset
# define rtmSetZCCacheNeedsReset(rtm, val) ((rtm)->ModelData.zCCacheNeedsReset = (val))
#endif

#ifndef rtmGetZCSignalValues
# define rtmGetZCSignalValues(rtm)     ((rtm)->ModelData.zcSignalValues)
#endif

#ifndef rtmSetZCSignalValues
# define rtmSetZCSignalValues(rtm, val) ((rtm)->ModelData.zcSignalValues = (val))
#endif

#ifndef rtmGet_TimeOfLastOutput
# define rtmGet_TimeOfLastOutput(rtm)  ((rtm)->Timing.timeOfLastOutput)
#endif

#ifndef rtmSet_TimeOfLastOutput
# define rtmSet_TimeOfLastOutput(rtm, val) ((rtm)->Timing.timeOfLastOutput = (val))
#endif

#ifndef rtmGetdX
# define rtmGetdX(rtm)                 ((rtm)->ModelData.derivs)
#endif

#ifndef rtmSetdX
# define rtmSetdX(rtm, val)            ((rtm)->ModelData.derivs = (val))
#endif

#ifndef rtmGetChecksumVal
# define rtmGetChecksumVal(rtm, idx)   ((rtm)->Sizes.checksums[idx])
#endif

#ifndef rtmSetChecksumVal
# define rtmSetChecksumVal(rtm, idx, val) ((rtm)->Sizes.checksums[idx] = (val))
#endif

#ifndef rtmGetDWork
# define rtmGetDWork(rtm, idx)         ((rtm)->ModelData.dwork[idx])
#endif

#ifndef rtmSetDWork
# define rtmSetDWork(rtm, idx, val)    ((rtm)->ModelData.dwork[idx] = (val))
#endif

#ifndef rtmGetOffsetTime
# define rtmGetOffsetTime(rtm, idx)    ((rtm)->Timing.offsetTimes[idx])
#endif

#ifndef rtmSetOffsetTime
# define rtmSetOffsetTime(rtm, idx, val) ((rtm)->Timing.offsetTimes[idx] = (val))
#endif

#ifndef rtmGetSFunction
# define rtmGetSFunction(rtm, idx)     ((rtm)->childSfunctions[idx])
#endif

#ifndef rtmSetSFunction
# define rtmSetSFunction(rtm, idx, val) ((rtm)->childSfunctions[idx] = (val))
#endif

#ifndef rtmGetSampleTime
# define rtmGetSampleTime(rtm, idx)    ((rtm)->Timing.sampleTimes[idx])
#endif

#ifndef rtmSetSampleTime
# define rtmSetSampleTime(rtm, idx, val) ((rtm)->Timing.sampleTimes[idx] = (val))
#endif

#ifndef rtmGetSampleTimeTaskID
# define rtmGetSampleTimeTaskID(rtm, idx) ((rtm)->Timing.sampleTimeTaskIDPtr[idx])
#endif

#ifndef rtmSetSampleTimeTaskID
# define rtmSetSampleTimeTaskID(rtm, idx, val) ((rtm)->Timing.sampleTimeTaskIDPtr[idx] = (val))
#endif

#ifndef rtmGetVarNextHitTimeList
# define rtmGetVarNextHitTimeList(rtm, idx) ((rtm)->Timing.varNextHitTimesList[idx])
#endif

#ifndef rtmSetVarNextHitTimeList
# define rtmSetVarNextHitTimeList(rtm, idx, val) ((rtm)->Timing.varNextHitTimesList[idx] = (val))
#endif

#ifndef rtmIsContinuousTask
# define rtmIsContinuousTask(rtm, tid) ((tid) == 0)
#endif

#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

#ifndef rtmSetFirstInitCond
# define rtmSetFirstInitCond(rtm, val) ((rtm)->Timing.firstInitCondFlag = (val))
#endif

#ifndef rtmIsFirstInitCond
# define rtmIsFirstInitCond(rtm)       ((rtm)->Timing.firstInitCondFlag)
#endif

#ifndef rtmIsMajorTimeStep
# define rtmIsMajorTimeStep(rtm)       (((rtm)->Timing.simTimeStep) == MAJOR_TIME_STEP)
#endif

#ifndef rtmIsMinorTimeStep
# define rtmIsMinorTimeStep(rtm)       (((rtm)->Timing.simTimeStep) == MINOR_TIME_STEP)
#endif

#ifndef rtmIsSampleHit
# define rtmIsSampleHit(rtm, sti, tid) ((rtmIsMajorTimeStep((rtm)) && (rtm)->Timing.sampleHits[(rtm)->Timing.sampleTimeTaskIDPtr[sti]]))
#endif

#ifndef rtmGetStopRequested
# define rtmGetStopRequested(rtm)      ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
# define rtmSetStopRequested(rtm, val) ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
# define rtmGetStopRequestedPtr(rtm)   (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
# define rtmGetT(rtm)                  (rtmGetTPtr((rtm))[0])
#endif

#ifndef rtmSetT
# define rtmSetT(rtm, val)                                       /* Do Nothing */
#endif

#ifndef rtmGetTFinal
# define rtmGetTFinal(rtm)             ((rtm)->Timing.tFinal)
#endif

#ifndef rtmSetTFinal
# define rtmSetTFinal(rtm, val)        ((rtm)->Timing.tFinal = (val))
#endif

#ifndef rtmGetTPtr
# define rtmGetTPtr(rtm)               ((rtm)->Timing.t)
#endif

#ifndef rtmSetTPtr
# define rtmSetTPtr(rtm, val)          ((rtm)->Timing.t = (val))
#endif

#ifndef rtmGetTStart
# define rtmGetTStart(rtm)             ((rtm)->Timing.tStart)
#endif

#ifndef rtmSetTStart
# define rtmSetTStart(rtm, val)        ((rtm)->Timing.tStart = (val))
#endif

#ifndef rtmGetTaskTime
# define rtmGetTaskTime(rtm, sti)      (rtmGetTPtr((rtm))[(rtm)->Timing.sampleTimeTaskIDPtr[sti]])
#endif

#ifndef rtmSetTaskTime
# define rtmSetTaskTime(rtm, sti, val) (rtmGetTPtr((rtm))[sti] = (val))
#endif

#ifndef rtmGetTimeOfLastOutput
# define rtmGetTimeOfLastOutput(rtm)   ((rtm)->Timing.timeOfLastOutput)
#endif

#ifdef rtmGetRTWSolverInfo
#undef rtmGetRTWSolverInfo
#endif

#define rtmGetRTWSolverInfo(rtm)       &((rtm)->solverInfo)

/* Definition for use in the target main file */
#define tcm_nobus_rtModel              RT_MODEL_tcm_nobus_T

/* Block signals (auto storage) */
typedef struct {
  real_T Sum;                          /* '<S21>/Sum' */
  real_T PitchCmd;                     /* '<S21>/Sum1' */
  real_T k5;                           /* '<S4>/k5' */
  real_T Pitcherror;                   /* '<S23>/Sum' */
  real_T qdegwo;                       /* '<S23>/Kwo' */
  real_T dec;                          /* '<S23>/Sum1' */
  real_T Kcas;                         /* '<S23>/Kcas' */
  real_T elevcmd;                      /* '<S23>/Product' */
  real_T sgn;                          /* '<S11>/sgn' */
  real_T Switch2;                      /* '<S15>/Switch2' */
  real_T rollerr;                      /* '<S13>/Sum' */
  real_T pdegwo;                       /* '<S13>/rollrate_IL' */
  real_T kcas;                         /* '<S13>/Kcas' */
  real_T ailcmd;                       /* '<S13>/Product' */
  real_T Kr;                           /* '<S5>/Kr' */
  real_T Switch1;                      /* '<S28>/Switch1' */
  real_T ICthrot;                      /* '<S2>/ICthrot' */
  real_T rollcomp;                     /* '<S2>/Gain1' */
  real_T PHIMC1;                       /* '<S2>/PHIMC1' */
  real_T Switch1_c;                    /* '<S9>/Switch1' */
  real_T HdgCmd;                       /* '<S14>/Integrator1' */
  real_T k5_m;                         /* '<S14>/k5' */
  real_T init;                         /* '<S14>/init' */
  real_T Switch2_i;                    /* '<S18>/Switch2' */
  real_T psie;                         /* '<S11>/Sum' */
  real_T psidote;                      /* '<S11>/Sum2' */
  real_T phidotc;                      /* '<S11>/Khdgrte' */
  real_T phidotcmx;                    /* '<S11>/MinMax1' */
  real_T phidotcmn;                    /* '<S11>/MinMax' */
  real_T Switch2_n;                    /* '<S17>/Switch2' */
  real_T Switch3;                      /* '<S18>/Switch3' */
  real_T Switch3_p;                    /* '<S15>/Switch3' */
  real_T Enforceuplim;                 /* '<S25>/Enforce up lim' */
  real_T Integrator;                   /* '<S24>/Integrator' */
  real_T Gain1;                        /* '<S24>/Gain1' */
  real_T Enforceuplim_a;               /* '<S26>/Enforce up lim' */
  real_T gamcmd;                       /* '<S4>/Sum7' */
  real_T gamerr;                       /* '<S21>/Sum2' */
  real_T Switch2_o;                    /* '<S27>/Switch2' */
  real_T Ktas;                         /* '<S2>/Ktas' */
  real_T Kcas_d;                       /* '<S2>/Kcas' */
  boolean_T LogicalOperator;           /* '<S21>/Logical Operator' */
  boolean_T APAltEng;                  /* '<S1>/APAltEng' */
  boolean_T LogicalOperator5;          /* '<S20>/Logical Operator5' */
  boolean_T LogicalOperator_j;         /* '<S11>/Logical Operator' */
  boolean_T LogicalOperator5_l;        /* '<S10>/Logical Operator5' */
  boolean_T LogicalOperator5_k;        /* '<S28>/Logical Operator5' */
  boolean_T LogicalOperator_b;         /* '<S2>/Logical Operator' */
  boolean_T LogicalOperator5_c;        /* '<S6>/Logical Operator5' */
  boolean_T LogicalOperator_e;         /* '<S14>/Logical Operator' */
  boolean_T LogicalOperator_ep;        /* '<S19>/Logical Operator' */
} B_tcm_nobus_T;

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  struct {
    void *LoggedData;
  } YawDampScope_PWORK;                /* '<S1>/YawDampScope' */

  struct {
    void *LoggedData;
  } HdgRollCmdScope_PWORK;             /* '<S11>/HdgRollCmdScope' */

  struct {
    void *LoggedData;
  } HdgCmdScope_PWORK;                 /* '<S14>/HdgCmdScope' */

  struct {
    void *LoggedData;
  } Roll_IL_scope_PWORK;               /* '<S13>/Roll_IL_scope' */

  struct {
    void *LoggedData;
  } AltCtnlScope_PWORK;                /* '<S19>/AltCtnlScope' */

  struct {
    void *LoggedData;
  } FPAScope_PWORK;                    /* '<S21>/FPAScope' */

  struct {
    void *LoggedData;
  } PitchScope_PWORK;                  /* '<S23>/PitchScope' */

  struct {
    int_T IcNeedsLoading;
  } Integ_FPA_IWORK;                   /* '<S21>/Integ_FPA' */

  struct {
    int_T IcNeedsLoading;
  } Integrator_IWORK;                  /* '<S15>/Integrator' */

  struct {
    int_T IcNeedsLoading;
  } Integrator1_IWORK;                 /* '<S9>/Integrator1' */

  struct {
    int_T IcNeedsLoading;
  } Integrator1_IWORK_a;               /* '<S14>/Integrator1' */

  struct {
    int_T IcNeedsLoading;
  } Integrator_IWORK_n;                /* '<S18>/Integrator' */

  struct {
    int_T IcNeedsLoading;
  } Integrator_IWORK_i;                /* '<S24>/Integrator' */
} DW_tcm_nobus_T;

/* Continuous states (auto storage) */
typedef struct {
  real_T Integ_FPA_CSTATE;             /* '<S21>/Integ_FPA' */
  real_T TransferFcn_CSTATE;           /* '<S23>/Transfer Fcn' */
  real_T Integrator_CSTATE;            /* '<S15>/Integrator' */
  real_T rollrate_IL_CSTATE;           /* '<S13>/rollrate_IL' */
  real_T YD_wo_CSTATE;                 /* '<S5>/YD_wo' */
  real_T Integrator1_CSTATE;           /* '<S9>/Integrator1' */
  real_T TransferFcn_CSTATE_f;         /* '<S2>/Transfer Fcn' */
  real_T Integrator1_CSTATE_f;         /* '<S14>/Integrator1' */
  real_T Integrator_CSTATE_h;          /* '<S18>/Integrator' */
  real_T Integrator_CSTATE_n;          /* '<S24>/Integrator' */
} X_tcm_nobus_T;

/* State derivatives (auto storage) */
typedef struct {
  real_T Integ_FPA_CSTATE;             /* '<S21>/Integ_FPA' */
  real_T TransferFcn_CSTATE;           /* '<S23>/Transfer Fcn' */
  real_T Integrator_CSTATE;            /* '<S15>/Integrator' */
  real_T rollrate_IL_CSTATE;           /* '<S13>/rollrate_IL' */
  real_T YD_wo_CSTATE;                 /* '<S5>/YD_wo' */
  real_T Integrator1_CSTATE;           /* '<S9>/Integrator1' */
  real_T TransferFcn_CSTATE_f;         /* '<S2>/Transfer Fcn' */
  real_T Integrator1_CSTATE_f;         /* '<S14>/Integrator1' */
  real_T Integrator_CSTATE_h;          /* '<S18>/Integrator' */
  real_T Integrator_CSTATE_n;          /* '<S24>/Integrator' */
} XDot_tcm_nobus_T;

/* State disabled  */
typedef struct {
  boolean_T Integ_FPA_CSTATE;          /* '<S21>/Integ_FPA' */
  boolean_T TransferFcn_CSTATE;        /* '<S23>/Transfer Fcn' */
  boolean_T Integrator_CSTATE;         /* '<S15>/Integrator' */
  boolean_T rollrate_IL_CSTATE;        /* '<S13>/rollrate_IL' */
  boolean_T YD_wo_CSTATE;              /* '<S5>/YD_wo' */
  boolean_T Integrator1_CSTATE;        /* '<S9>/Integrator1' */
  boolean_T TransferFcn_CSTATE_f;      /* '<S2>/Transfer Fcn' */
  boolean_T Integrator1_CSTATE_f;      /* '<S14>/Integrator1' */
  boolean_T Integrator_CSTATE_h;       /* '<S18>/Integrator' */
  boolean_T Integrator_CSTATE_n;       /* '<S24>/Integrator' */
} XDis_tcm_nobus_T;

/* Zero-crossing (trigger) state */
typedef struct {
  ZCSigState Integ_FPA_Reset_ZCE;      /* '<S21>/Integ_FPA' */
  ZCSigState Integrator_Reset_ZCE;     /* '<S15>/Integrator' */
  ZCSigState Integrator1_Reset_ZCE;    /* '<S9>/Integrator1' */
  ZCSigState Integrator1_Reset_ZCE_m;  /* '<S14>/Integrator1' */
  ZCSigState Integrator_Reset_ZCE_o;   /* '<S18>/Integrator' */
  ZCSigState Integrator_Reset_ZCE_l;   /* '<S24>/Integrator' */
} PrevZCX_tcm_nobus_T;

#ifndef ODE3_INTG
#define ODE3_INTG

/* ODE3 Integration Data */
typedef struct {
  real_T *y;                           /* output */
  real_T *f[3];                        /* derivatives */
} ODE3_IntgData;

#endif

/* External inputs (root inport signals with auto storage) */
typedef struct {
  real_T Sensors[17];                  /* '<Root>/Sensors' */
  real_T ManualCommands[9];            /* '<Root>/ManualCommands ' */
} ExtU_tcm_nobus_T;

/* External outputs (root outports fed by signals with auto storage) */
typedef struct {
  real_T ActuatorsCommands[9];         /* '<Root>/ActuatorsCommands' */
} ExtY_tcm_nobus_T;

/* Backward compatible GRT Identifiers */
#define rtB                            tcm_nobus_B
#define BlockIO                        B_tcm_nobus_T
#define rtU                            tcm_nobus_U
#define ExternalInputs                 ExtU_tcm_nobus_T
#define rtX                            tcm_nobus_X
#define ContinuousStates               X_tcm_nobus_T
#define rtXdot                         tcm_nobus_XDot
#define StateDerivatives               XDot_tcm_nobus_T
#define tXdis                          tcm_nobus_XDis
#define StateDisabled                  XDis_tcm_nobus_T
#define rtY                            tcm_nobus_Y
#define ExternalOutputs                ExtY_tcm_nobus_T
#define rtP                            tcm_nobus_P
#define Parameters                     P_tcm_nobus_T
#define rtDWork                        tcm_nobus_DW
#define D_Work                         DW_tcm_nobus_T
#define rtPrevZCSigState               tcm_nobus_PrevZCX
#define PrevZCSigStates                PrevZCX_tcm_nobus_T

/* Parameters (auto storage) */
struct P_tcm_nobus_T_ {
  struct_IhM2zoFSDzG8T7bYSYCjnG ap;    /* Variable: ap
                                        * Referenced by:
                                        *   '<S1>/APAltCmd'
                                        *   '<S1>/APFPACmd '
                                        *   '<S1>/APHdgCmd'
                                        */
  struct_hldZyuU6T37zb4V8pE3bjF bias;  /* Variable: bias
                                        * Referenced by:
                                        *   '<S2>/ICthrot'
                                        *   '<S2>/ICthrot1'
                                        */
  real_T CAScmd_Value;                 /* Expression: 250
                                        * Referenced by: '<S1>/CAScmd'
                                        */
  real_T kt2fps_Gain;                  /* Expression: 1.6878
                                        * Referenced by: '<S2>/kt2fps'
                                        */
  real_T Kcas_Gain;                    /* Expression: 0.2
                                        * Referenced by: '<S2>/Kcas'
                                        */
  real_T one_Value;                    /* Expression: 1
                                        * Referenced by: '<S2>/one'
                                        */
  real_T Machcmd_Value;                /* Expression: 0.6
                                        * Referenced by: '<S1>/Machcmd'
                                        */
  real_T kt2fps1_Gain;                 /* Expression: 1.6878
                                        * Referenced by: '<S2>/kt2fps1'
                                        */
  real_T Ktas_Gain;                    /* Expression: 0.11
                                        * Referenced by: '<S2>/Ktas'
                                        */
  real_T Kr1_Gain;                     /* Expression: 1.2
                                        * Referenced by: '<S2>/Kr1'
                                        */
  real_T k_Gain;                       /* Expression: -1.0
                                        * Referenced by: '<S14>/k'
                                        */
  real_T Kh_Gain;                      /* Expression: 0.08
                                        * Referenced by: '<S19>/Kh'
                                        */
  real_T m1_Gain;                      /* Expression: -1
                                        * Referenced by: '<S21>/m1'
                                        */
  real_T Kcas_XData[4];                /* Expression: [0 120 350 500]
                                        * Referenced by: '<S5>/Kcas'
                                        */
  real_T Kcas_YData[4];                /* Expression: [1.0 1.0 0.3 0.3]
                                        * Referenced by: '<S5>/Kcas'
                                        */
  real_T Kgamerr_Gain;                 /* Expression: 1.4
                                        * Referenced by: '<S21>/Kgamerr'
                                        */
  real_T k5_Gain;                      /* Expression: 1
                                        * Referenced by: '<S4>/k5'
                                        */
  real_T Kpitch_Gain;                  /* Expression: 2
                                        * Referenced by: '<S23>/Kpitch'
                                        */
  real_T TransferFcn_A;                /* Computed Parameter: TransferFcn_A
                                        * Referenced by: '<S23>/Transfer Fcn'
                                        */
  real_T TransferFcn_C;                /* Computed Parameter: TransferFcn_C
                                        * Referenced by: '<S23>/Transfer Fcn'
                                        */
  real_T TransferFcn_D;                /* Computed Parameter: TransferFcn_D
                                        * Referenced by: '<S23>/Transfer Fcn'
                                        */
  real_T Kwo_Gain;                     /* Expression: 0.5
                                        * Referenced by: '<S23>/Kwo'
                                        */
  real_T Kcas_XData_k[4];              /* Expression: [0 120 350 500]
                                        * Referenced by: '<S23>/Kcas'
                                        */
  real_T Kcas_YData_a[4];              /* Expression: [1.0 1.0 0.3 0.3]
                                        * Referenced by: '<S23>/Kcas'
                                        */
  real_T zero10_Value;                 /* Expression: 1
                                        * Referenced by: '<S20>/zero10'
                                        */
  real_T zero9_Value;                  /* Expression: 0
                                        * Referenced by: '<S20>/zero9'
                                        */
  real_T rollLimit_Value;              /* Expression: 30
                                        * Referenced by: '<S1>/rollLimit'
                                        */
  real_T sgn_Gain;                     /* Expression: -1
                                        * Referenced by: '<S11>/sgn'
                                        */
  real_T Kphierr_Gain;                 /* Expression: 0.5
                                        * Referenced by: '<S13>/Kphierr'
                                        */
  real_T rollrate_IL_A;                /* Computed Parameter: rollrate_IL_A
                                        * Referenced by: '<S13>/rollrate_IL'
                                        */
  real_T rollrate_IL_B;                /* Computed Parameter: rollrate_IL_B
                                        * Referenced by: '<S13>/rollrate_IL'
                                        */
  real_T rollrate_IL_C;                /* Computed Parameter: rollrate_IL_C
                                        * Referenced by: '<S13>/rollrate_IL'
                                        */
  real_T rollrate_IL_D;                /* Computed Parameter: rollrate_IL_D
                                        * Referenced by: '<S13>/rollrate_IL'
                                        */
  real_T Kcas_XData_o[4];              /* Expression: [0 120 350 500]
                                        * Referenced by: '<S13>/Kcas'
                                        */
  real_T Kcas_YData_p[4];              /* Expression: [1.0 1.0 0.3 0.3]
                                        * Referenced by: '<S13>/Kcas'
                                        */
  real_T zero10_Value_p;               /* Expression: 1
                                        * Referenced by: '<S10>/zero10'
                                        */
  real_T zero9_Value_d;                /* Expression: 0
                                        * Referenced by: '<S10>/zero9'
                                        */
  real_T Gain1_Gain;                   /* Expression: -1
                                        * Referenced by: '<S3>/Gain1'
                                        */
  real_T Kr_Gain;                      /* Expression: 1.25
                                        * Referenced by: '<S5>/Kr'
                                        */
  real_T YD_wo_A;                      /* Computed Parameter: YD_wo_A
                                        * Referenced by: '<S5>/YD_wo'
                                        */
  real_T YD_wo_C;                      /* Computed Parameter: YD_wo_C
                                        * Referenced by: '<S5>/YD_wo'
                                        */
  real_T YD_wo_D;                      /* Computed Parameter: YD_wo_D
                                        * Referenced by: '<S5>/YD_wo'
                                        */
  real_T YDEngage_Value;               /* Expression: 1
                                        * Referenced by: '<S1>/YDEngage'
                                        */
  real_T zero10_Value_e;               /* Expression: 1
                                        * Referenced by: '<S28>/zero10'
                                        */
  real_T zero9_Value_g;                /* Expression: 0
                                        * Referenced by: '<S28>/zero9'
                                        */
  real_T maxthrot_Value;               /* Expression: 100
                                        * Referenced by: '<S1>/maxthrot'
                                        */
  real_T minthrot_Value;               /* Expression: 0
                                        * Referenced by: '<S1>/minthrot'
                                        */
  real_T zero10_Value_b;               /* Expression: 1
                                        * Referenced by: '<S6>/zero10'
                                        */
  real_T zero9_Value_j;                /* Expression: 0
                                        * Referenced by: '<S6>/zero9'
                                        */
  real_T Gain_Gain;                    /* Expression: pi/180
                                        * Referenced by: '<S2>/Gain'
                                        */
  real_T RollComp1_Value;              /* Expression: 1
                                        * Referenced by: '<S2>/RollComp1'
                                        */
  real_T Gain1_Gain_i;                 /* Expression: 5
                                        * Referenced by: '<S2>/Gain1'
                                        */
  real_T TransferFcn_A_b;              /* Computed Parameter: TransferFcn_A_b
                                        * Referenced by: '<S2>/Transfer Fcn'
                                        */
  real_T TransferFcn_C_o;              /* Computed Parameter: TransferFcn_C_o
                                        * Referenced by: '<S2>/Transfer Fcn'
                                        */
  real_T TransferFcn_D_h;              /* Computed Parameter: TransferFcn_D_h
                                        * Referenced by: '<S2>/Transfer Fcn'
                                        */
  real_T MachSel_Value;                /* Expression: 0
                                        * Referenced by: '<S1>/MachSel'
                                        */
  real_T PHIMC1_Threshold;             /* Expression: 0.5
                                        * Referenced by: '<S2>/PHIMC1'
                                        */
  real_T Kr_Gain_h;                    /* Expression: 2.5
                                        * Referenced by: '<S2>/Kr'
                                        */
  real_T Constant1_Value;              /* Expression: 0
                                        * Referenced by: '<S9>/Constant1'
                                        */
  real_T Constant2_Value;              /* Expression: 0
                                        * Referenced by: '<S9>/Constant2'
                                        */
  real_T Constant3_Value;              /* Expression: 0
                                        * Referenced by: '<S9>/Constant3'
                                        */
  real_T Constant3_Value_m;            /* Expression: 10
                                        * Referenced by: '<S1>/Constant3'
                                        */
  real_T Constant4_Value;              /* Expression: 3.2
                                        * Referenced by: '<S1>/Constant4'
                                        */
  real_T k2_Gain;                      /* Expression: 1.6878
                                        * Referenced by: '<S14>/k2'
                                        */
  real_T Saturation_UpperSat;          /* Expression: 1000
                                        * Referenced by: '<S14>/Saturation'
                                        */
  real_T Saturation_LowerSat;          /* Expression: 0.0001
                                        * Referenced by: '<S14>/Saturation'
                                        */
  real_T k3_Gain;                      /* Expression: pi/180
                                        * Referenced by: '<S14>/k3'
                                        */
  real_T k4_Gain;                      /* Expression: 32.174
                                        * Referenced by: '<S14>/k4'
                                        */
  real_T k5_Gain_h;                    /* Expression: 180/pi
                                        * Referenced by: '<S14>/k5'
                                        */
  real_T k1_Gain;                      /* Expression: -1.0
                                        * Referenced by: '<S14>/k1'
                                        */
  real_T init_Value;                   /* Expression: 0
                                        * Referenced by: '<S14>/init'
                                        */
  real_T Khdg_Gain;                    /* Expression: 0.05
                                        * Referenced by: '<S11>/Khdg'
                                        */
  real_T Khdgrte_Gain;                 /* Expression: 3
                                        * Referenced by: '<S11>/Khdgrte'
                                        */
  real_T Khdg1_Gain;                   /* Expression: 1
                                        * Referenced by: '<S11>/Khdg1'
                                        */
  real_T Khdg2_Gain;                   /* Expression: 1
                                        * Referenced by: '<S11>/Khdg2'
                                        */
  real_T Constant1_Value_h;            /* Expression: 180
                                        * Referenced by: '<S16>/Constant1'
                                        */
  real_T k6_Gain;                      /* Expression: 2
                                        * Referenced by: '<S14>/k6'
                                        */
  real_T Constant1_Value_j;            /* Expression: 0
                                        * Referenced by: '<S18>/Constant1'
                                        */
  real_T Constant2_Value_k;            /* Expression: 0
                                        * Referenced by: '<S18>/Constant2'
                                        */
  real_T Constant3_Value_i;            /* Expression: 0
                                        * Referenced by: '<S18>/Constant3'
                                        */
  real_T Constant1_Value_p;            /* Expression: 0
                                        * Referenced by: '<S15>/Constant1'
                                        */
  real_T Constant2_Value_c;            /* Expression: 0
                                        * Referenced by: '<S15>/Constant2'
                                        */
  real_T Constant3_Value_a;            /* Expression: 0
                                        * Referenced by: '<S15>/Constant3'
                                        */
  real_T k_Gain_p;                     /* Expression: -1
                                        * Referenced by: '<S19>/k'
                                        */
  real_T Constant1_Value_f;            /* Expression: 0
                                        * Referenced by: '<S19>/Constant1'
                                        */
  real_T kts2fps_Gain;                 /* Expression: 1.6878
                                        * Referenced by: '<S19>/kts2fps'
                                        */
  real_T Saturation_UpperSat_b;        /* Expression: 1000
                                        * Referenced by: '<S19>/Saturation'
                                        */
  real_T Saturation_LowerSat_d;        /* Expression: 0.0001
                                        * Referenced by: '<S19>/Saturation'
                                        */
  real_T Gain_Gain_l;                  /* Expression: 20
                                        * Referenced by: '<S24>/Gain'
                                        */
  real_T Gain1_Gain_j;                 /* Expression: -1
                                        * Referenced by: '<S24>/Gain1'
                                        */
  real_T r2d_Gain;                     /* Expression: 57.2958
                                        * Referenced by: '<S19>/r2d'
                                        */
  real_T k2_Gain_i;                    /* Expression: 1
                                        * Referenced by: '<S4>/k2'
                                        */
  real_T hddLim_Value;                 /* Expression: 4.83*57.2958
                                        * Referenced by: '<S21>/hddLim'
                                        */
  real_T kt2fps_Gain_l;                /* Expression: 1.6878
                                        * Referenced by: '<S21>/kt2fps'
                                        */
  real_T KIgamerr_Gain;                /* Expression: 1
                                        * Referenced by: '<S21>/KIgamerr'
                                        */
  boolean_T APFPAEng_Value;            /* Expression: ap.FPAeng
                                        * Referenced by: '<S1>/APFPAEng'
                                        */
  boolean_T APAltEng_Value;            /* Expression: ap.alteng
                                        * Referenced by: '<S1>/APAltEng'
                                        */
  boolean_T APHeadEng_Value;           /* Expression: ap.headeng
                                        * Referenced by: '<S1>/APHeadEng'
                                        */
  boolean_T APThrotEng_Value;          /* Expression: ap.throteng
                                        * Referenced by: '<S1>/APThrotEng'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_tcm_nobus_T {
  const char_T *path;
  const char_T *modelName;
  struct SimStruct_tag * *childSfunctions;
  const char_T *errorStatus;
  SS_SimMode simMode;
  RTWLogInfo *rtwLogInfo;
  RTWExtModeInfo *extModeInfo;
  RTWSolverInfo solverInfo;
  RTWSolverInfo *solverInfoPtr;
  void *sfcnInfo;

  /*
   * ModelData:
   * The following substructure contains information regarding
   * the data used in the model.
   */
  struct {
    void *blockIO;
    const void *constBlockIO;
    void *defaultParam;
    ZCSigState *prevZCSigState;
    real_T *contStates;
    int_T *periodicContStateIndices;
    real_T *periodicContStateRanges;
    real_T *derivs;
    void *zcSignalValues;
    void *inputs;
    void *outputs;
    boolean_T *contStateDisabled;
    boolean_T zCCacheNeedsReset;
    boolean_T derivCacheNeedsReset;
    boolean_T blkStateChange;
    real_T odeY[10];
    real_T odeF[3][10];
    ODE3_IntgData intgData;
    void *dwork;
  } ModelData;

  /*
   * Sizes:
   * The following substructure contains sizes information
   * for many of the model attributes such as inputs, outputs,
   * dwork, sample times, etc.
   */
  struct {
    uint32_T checksums[4];
    uint32_T options;
    int_T numContStates;
    int_T numPeriodicContStates;
    int_T numU;
    int_T numY;
    int_T numSampTimes;
    int_T numBlocks;
    int_T numBlockIO;
    int_T numBlockPrms;
    int_T numDwork;
    int_T numSFcnPrms;
    int_T numSFcns;
    int_T numIports;
    int_T numOports;
    int_T numNonSampZCs;
    int_T sysDirFeedThru;
    int_T rtwGenSfcn;
  } Sizes;

  /*
   * SpecialInfo:
   * The following substructure contains special information
   * related to other components that are dependent on RTW.
   */
  struct {
    const void *mappingInfo;
    void *xpcData;
  } SpecialInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    time_T stepSize;
    uint32_T clockTick0;
    uint32_T clockTickH0;
    time_T stepSize0;
    uint32_T clockTick1;
    uint32_T clockTickH1;
    time_T stepSize1;
    boolean_T firstInitCondFlag;
    time_T tStart;
    time_T tFinal;
    time_T timeOfLastOutput;
    void *timingData;
    real_T *varNextHitTimesList;
    SimTimeStep simTimeStep;
    boolean_T stopRequestedFlag;
    time_T *sampleTimes;
    time_T *offsetTimes;
    int_T *sampleTimeTaskIDPtr;
    int_T *sampleHits;
    int_T *perTaskSampleHits;
    time_T *t;
    time_T sampleTimesArray[2];
    time_T offsetTimesArray[2];
    int_T sampleTimeTaskIDArray[2];
    int_T sampleHitArray[2];
    int_T perTaskSampleHitsArray[4];
    time_T tArray[2];
  } Timing;
};

/* Block parameters (auto storage) */
extern P_tcm_nobus_T tcm_nobus_P;

/* Block signals (auto storage) */
extern B_tcm_nobus_T tcm_nobus_B;

/* Continuous states (auto storage) */
extern X_tcm_nobus_T tcm_nobus_X;

/* Block states (auto storage) */
extern DW_tcm_nobus_T tcm_nobus_DW;

/* External inputs (root inport signals with auto storage) */
extern ExtU_tcm_nobus_T tcm_nobus_U;

/* External outputs (root outports fed by signals with auto storage) */
extern ExtY_tcm_nobus_T tcm_nobus_Y;

/* Model entry point functions */
extern void tcm_nobus_initialize(void);
extern void tcm_nobus_output(void);
extern void tcm_nobus_update(void);
extern void tcm_nobus_terminate(void);

/*====================*
 * External functions *
 *====================*/
extern tcm_nobus_rtModel *tcm_nobus(void);
extern void MdlInitializeSizes(void);
extern void MdlInitializeSampleTimes(void);
extern void MdlInitialize(void);
extern void MdlStart(void);
extern void MdlOutputs(int_T tid);
extern void MdlUpdate(int_T tid);
extern void MdlTerminate(void);

/* Real-time Model object */
extern RT_MODEL_tcm_nobus_T *const tcm_nobus_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'tcm_nobus'
 * '<S1>'   : 'tcm_nobus/TCM'
 * '<S2>'   : 'tcm_nobus/TCM/AutoThrottle'
 * '<S3>'   : 'tcm_nobus/TCM/Heading'
 * '<S4>'   : 'tcm_nobus/TCM/Longitudinal'
 * '<S5>'   : 'tcm_nobus/TCM/Yaw Damper'
 * '<S6>'   : 'tcm_nobus/TCM/AutoThrottle/EngageORzero'
 * '<S7>'   : 'tcm_nobus/TCM/AutoThrottle/ManualOverride'
 * '<S8>'   : 'tcm_nobus/TCM/AutoThrottle/Saturation Dynamic1'
 * '<S9>'   : 'tcm_nobus/TCM/AutoThrottle/VarLimIntegAT'
 * '<S10>'  : 'tcm_nobus/TCM/Heading/EngageORzero'
 * '<S11>'  : 'tcm_nobus/TCM/Heading/Heading Control'
 * '<S12>'  : 'tcm_nobus/TCM/Heading/ManualOverride'
 * '<S13>'  : 'tcm_nobus/TCM/Heading/Roll InnerLoop'
 * '<S14>'  : 'tcm_nobus/TCM/Heading/Heading Control/HdgCmdProcessor'
 * '<S15>'  : 'tcm_nobus/TCM/Heading/Heading Control/VarLimIntegIC'
 * '<S16>'  : 'tcm_nobus/TCM/Heading/Heading Control/HdgCmdProcessor/ANGL'
 * '<S17>'  : 'tcm_nobus/TCM/Heading/Heading Control/HdgCmdProcessor/Saturation Dynamic1'
 * '<S18>'  : 'tcm_nobus/TCM/Heading/Heading Control/HdgCmdProcessor/VarLimIntegIC'
 * '<S19>'  : 'tcm_nobus/TCM/Longitudinal/Altitude Control'
 * '<S20>'  : 'tcm_nobus/TCM/Longitudinal/EngageORzero'
 * '<S21>'  : 'tcm_nobus/TCM/Longitudinal/FPA Control'
 * '<S22>'  : 'tcm_nobus/TCM/Longitudinal/ManualOverride'
 * '<S23>'  : 'tcm_nobus/TCM/Longitudinal/Pitch InnerLoop'
 * '<S24>'  : 'tcm_nobus/TCM/Longitudinal/Altitude Control/Variable  Rate Limit'
 * '<S25>'  : 'tcm_nobus/TCM/Longitudinal/Altitude Control/Variable Limit Saturation'
 * '<S26>'  : 'tcm_nobus/TCM/Longitudinal/Altitude Control/Variable  Rate Limit/Variable Limit Saturation'
 * '<S27>'  : 'tcm_nobus/TCM/Longitudinal/FPA Control/Saturation Dynamic'
 * '<S28>'  : 'tcm_nobus/TCM/Yaw Damper/EngageORzero'
 * '<S29>'  : 'tcm_nobus/TCM/Yaw Damper/ManualOverride'
 */
#endif                                 /* RTW_HEADER_tcm_nobus_h_ */
