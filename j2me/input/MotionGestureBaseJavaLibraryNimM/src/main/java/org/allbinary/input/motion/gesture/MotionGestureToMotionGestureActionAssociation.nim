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
# package org.allbinary.input.motion.gesture

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/CompleteMotionGestureInputEvent as CompleteMotionGestureInputEventModule
export CompleteMotionGestureInputEventModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    MotionGestureToMotionGestureActionAssociation* = ref object of JObject
        list*: BasicArrayList
        motionGestureAction*: CompleteMotionGestureInputEvent

proc newMotionGestureToMotionGestureActionAssociation*(list: BasicArrayList, commandAction: CompleteMotionGestureInputEvent): MotionGestureToMotionGestureActionAssociation
proc initMotionGestureToMotionGestureActionAssociation*(this: MotionGestureToMotionGestureActionAssociation, list: BasicArrayList, commandAction: CompleteMotionGestureInputEvent)
method getMotionGesture*(this: MotionGestureToMotionGestureActionAssociation): BasicArrayList {.base, discardable.}
method setMotionGestures*(this: MotionGestureToMotionGestureActionAssociation, list: BasicArrayList) {.base.}
method getCommandAction*(this: MotionGestureToMotionGestureActionAssociation): CompleteMotionGestureInputEvent {.base, discardable.}
method setMotionGestureAction*(this: MotionGestureToMotionGestureActionAssociation, commandAction: CompleteMotionGestureInputEvent) {.base.}
method isMotionGestureArrayEquals*(this: MotionGestureToMotionGestureActionAssociation, aList: BasicArrayList): bool {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsMotionGestureToMotionGestureActionAssociation(this: MotionGestureToMotionGestureActionAssociation) =
    
    
    discard

proc initMotionGestureToMotionGestureActionAssociation*(this: MotionGestureToMotionGestureActionAssociation, list: BasicArrayList, commandAction: CompleteMotionGestureInputEvent) =
        this.initFieldsMotionGestureToMotionGestureActionAssociation()
        this.list = list
        this.motionGestureAction = commandAction

proc newMotionGestureToMotionGestureActionAssociation*(list: BasicArrayList, commandAction: CompleteMotionGestureInputEvent): MotionGestureToMotionGestureActionAssociation =
    result = MotionGestureToMotionGestureActionAssociation()
    initMotionGestureToMotionGestureActionAssociation(result, list, commandAction)

method getMotionGesture*(this: MotionGestureToMotionGestureActionAssociation): BasicArrayList {.base, discardable.} =
        return this.list

method setMotionGestures*(this: MotionGestureToMotionGestureActionAssociation, list: BasicArrayList) {.base.} =
        this.list = list

method getCommandAction*(this: MotionGestureToMotionGestureActionAssociation): CompleteMotionGestureInputEvent {.base, discardable.} =
        return this.motionGestureAction

method setMotionGestureAction*(this: MotionGestureToMotionGestureActionAssociation, commandAction: CompleteMotionGestureInputEvent) {.base.} =
        this.motionGestureAction = commandAction

method isMotionGestureArrayEquals*(this: MotionGestureToMotionGestureActionAssociation, aList: BasicArrayList): bool {.base, discardable.} =
        var size: int32 = aList.size()
        if this.list.size() != size:
            return false
        block:
            var i: int32 = size -% 1
            while i >= 0:
                defer: i = i -% 1
                if aList.objectArray[i] != this.list.objectArray[i]:
                    return false
        return true

