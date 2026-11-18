#[
 
  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
]#
# Generated Code Do Not Modify
# package org.allbinary.input.motion.gesture.configuration

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/CompleteMotionGestureInputEvent as CompleteMotionGestureInputEventModule
export CompleteMotionGestureInputEventModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    MotionGestureConfiguration* = ref object of JObject
        diagonalMotionGestureAllowed*: bool
        diagonalTolerance*: int32
        minimumMotionGesture*: int32
        button*: string
        color*: BasicColor
        executingActions*: bool
        mouseButtonMask*: int32
        activeCommands*: BasicArrayList

proc newMotionGestureConfiguration*(): MotionGestureConfiguration
proc initMotionGestureConfiguration*(this: MotionGestureConfiguration)
method addMotionGestureAction*(this: MotionGestureConfiguration, list: BasicArrayList, commandAction: CompleteMotionGestureInputEvent) {.base.}
method clearMotionGestureAction*(this: MotionGestureConfiguration) {.base.}
method getAssociateCommandActionsList*(this: MotionGestureConfiguration): BasicArrayList {.base, discardable.}
method isDiagonalMotionGestureAllowed*(this: MotionGestureConfiguration): bool {.base, discardable.}
method isExecutingActionsAllowed*(this: MotionGestureConfiguration): bool {.base, discardable.}
method setExecutingActionsAllowed*(this: MotionGestureConfiguration, executingActionAllowed: bool) {.base.}
method setDiagonalMotionGestureAllowed*(this: MotionGestureConfiguration, diagonalMotionGestureAllowed: bool) {.base.}
method getDiagonalTolerance*(this: MotionGestureConfiguration): int32 {.base, discardable.}
method setDiagonalTolerance*(this: MotionGestureConfiguration, diagonalTolerance: int32) {.base.}
method getMinimumMotionGesture*(this: MotionGestureConfiguration): int32 {.base, discardable.}
method setMinimumMotionGesture*(this: MotionGestureConfiguration, minimumMotionGesture: int32) {.base.}
method getButton*(this: MotionGestureConfiguration): string {.base, discardable.}
method setButton*(this: MotionGestureConfiguration, button: string) {.base.}
method getColor*(this: MotionGestureConfiguration): BasicColor {.base, discardable.}
method setColor*(this: MotionGestureConfiguration, color: BasicColor) {.base.}
method getMouseButtonMask*(this: MotionGestureConfiguration): int32 {.base, discardable.}
method setMouseButtonMask*(this: MotionGestureConfiguration, mouseButtonMask: int32) {.base.}
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation as MotionGestureToMotionGestureActionAssociationModule
export MotionGestureToMotionGestureActionAssociationModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsMotionGestureConfiguration(this: MotionGestureConfiguration) =
    this.diagonalMotionGestureAllowed = true
    this.diagonalTolerance = 7
    this.minimumMotionGesture = 9
    this.button = StringUtil.getInstance().EMPTY_STRING
    this.color = BasicColorFactory.getInstance().BLUE
    this.executingActions = true
    this.mouseButtonMask = 0
    this.activeCommands = newBasicArrayListD()
    discard

proc initMotionGestureConfiguration*(this: MotionGestureConfiguration) =
        this.initFieldsMotionGestureConfiguration()
        discard

proc newMotionGestureConfiguration*(): MotionGestureConfiguration =
    result = MotionGestureConfiguration()
    initMotionGestureConfiguration(result)

method addMotionGestureAction*(this: MotionGestureConfiguration, list: BasicArrayList, commandAction: CompleteMotionGestureInputEvent) {.base.} =
        this.activeCommands.add(newMotionGestureToMotionGestureActionAssociation(list, commandAction))

method clearMotionGestureAction*(this: MotionGestureConfiguration) {.base.} =
        this.activeCommands.clear()

method getAssociateCommandActionsList*(this: MotionGestureConfiguration): BasicArrayList {.base, discardable.} =
        return this.activeCommands

method isDiagonalMotionGestureAllowed*(this: MotionGestureConfiguration): bool {.base, discardable.} =
        return this.diagonalMotionGestureAllowed

method isExecutingActionsAllowed*(this: MotionGestureConfiguration): bool {.base, discardable.} =
        return this.executingActions

method setExecutingActionsAllowed*(this: MotionGestureConfiguration, executingActionAllowed: bool) {.base.} =
        this.executingActions = executingActionAllowed

method setDiagonalMotionGestureAllowed*(this: MotionGestureConfiguration, diagonalMotionGestureAllowed: bool) {.base.} =
        this.diagonalMotionGestureAllowed = diagonalMotionGestureAllowed

method getDiagonalTolerance*(this: MotionGestureConfiguration): int32 {.base, discardable.} =
        return this.diagonalTolerance

method setDiagonalTolerance*(this: MotionGestureConfiguration, diagonalTolerance: int32) {.base.} =
        this.diagonalTolerance = diagonalTolerance

method getMinimumMotionGesture*(this: MotionGestureConfiguration): int32 {.base, discardable.} =
        return this.minimumMotionGesture

method setMinimumMotionGesture*(this: MotionGestureConfiguration, minimumMotionGesture: int32) {.base.} =
        this.minimumMotionGesture = minimumMotionGesture

method getButton*(this: MotionGestureConfiguration): string {.base, discardable.} =
        return this.button

method setButton*(this: MotionGestureConfiguration, button: string) {.base.} =
        this.button = button

method getColor*(this: MotionGestureConfiguration): BasicColor {.base, discardable.} =
        return this.color

method setColor*(this: MotionGestureConfiguration, color: BasicColor) {.base.} =
        this.color = color

method getMouseButtonMask*(this: MotionGestureConfiguration): int32 {.base, discardable.} =
        return this.mouseButtonMask

method setMouseButtonMask*(this: MotionGestureConfiguration, mouseButtonMask: int32) {.base.} =
        this.mouseButtonMask = mouseButtonMask

