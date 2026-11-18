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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/input/motion/button/TouchButtonInput as TouchButtonInputModule
export TouchButtonInputModule

type
    CurrentlyPressedTouchButtonSingleton* = ref object of JObject
        list*: BasicArrayList

proc newCurrentlyPressedTouchButtonSingleton*(): CurrentlyPressedTouchButtonSingleton
proc initCurrentlyPressedTouchButtonSingleton*(this: CurrentlyPressedTouchButtonSingleton)
proc getInstance*(t: typedesc[CurrentlyPressedTouchButtonSingleton]): CurrentlyPressedTouchButtonSingleton {.discardable.}
method size*(this: CurrentlyPressedTouchButtonSingleton): int32 {.base, discardable.}
method removeAt*(this: CurrentlyPressedTouchButtonSingleton, index: int32): TouchButtonInput {.base, discardable.}
method remove*(this: CurrentlyPressedTouchButtonSingleton, touchButtonInput: TouchButtonInput): bool {.base, discardable.}
method get*(this: CurrentlyPressedTouchButtonSingleton, index: int32): TouchButtonInput {.base, discardable.}
method contains*(this: CurrentlyPressedTouchButtonSingleton, touchButtonInput: TouchButtonInput): bool {.base, discardable.}
method add*(this: CurrentlyPressedTouchButtonSingleton, touchButtonInput: TouchButtonInput) {.base.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var CurrentlyPressedTouchButtonSingleton_instanceValue: CurrentlyPressedTouchButtonSingleton
var CurrentlyPressedTouchButtonSingleton_instanceSet = false
proc instance*(t: typedesc[CurrentlyPressedTouchButtonSingleton]): CurrentlyPressedTouchButtonSingleton =
    if not CurrentlyPressedTouchButtonSingleton_instanceSet:
        CurrentlyPressedTouchButtonSingleton_instanceSet = true
        CurrentlyPressedTouchButtonSingleton_instanceValue = newCurrentlyPressedTouchButtonSingleton()
    CurrentlyPressedTouchButtonSingleton_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCurrentlyPressedTouchButtonSingleton(this: CurrentlyPressedTouchButtonSingleton) =
    this.list = newBasicArrayListD()
    discard

proc getInstance*(t: typedesc[CurrentlyPressedTouchButtonSingleton]): CurrentlyPressedTouchButtonSingleton {.discardable.} =
        return CurrentlyPressedTouchButtonSingleton.instance

proc initCurrentlyPressedTouchButtonSingleton*(this: CurrentlyPressedTouchButtonSingleton) =
        this.initFieldsCurrentlyPressedTouchButtonSingleton()
        discard

proc newCurrentlyPressedTouchButtonSingleton*(): CurrentlyPressedTouchButtonSingleton =
    result = CurrentlyPressedTouchButtonSingleton()
    initCurrentlyPressedTouchButtonSingleton(result)

method size*(this: CurrentlyPressedTouchButtonSingleton): int32 {.base, discardable.} =
        return this.list.size()

method removeAt*(this: CurrentlyPressedTouchButtonSingleton, index: int32): TouchButtonInput {.base, discardable.} =
        return TouchButtonInput(JObject(this.list.removeAt(index)))

method remove*(this: CurrentlyPressedTouchButtonSingleton, touchButtonInput: TouchButtonInput): bool {.base, discardable.} =
        return this.list.remove(touchButtonInput)

method get*(this: CurrentlyPressedTouchButtonSingleton, index: int32): TouchButtonInput {.base, discardable.} =
        return TouchButtonInput(JObject(this.list.objectArray[index]))

method contains*(this: CurrentlyPressedTouchButtonSingleton, touchButtonInput: TouchButtonInput): bool {.base, discardable.} =
        return this.list.contains(touchButtonInput)

method add*(this: CurrentlyPressedTouchButtonSingleton, touchButtonInput: TouchButtonInput) {.base.} =
        this.list.add(touchButtonInput)

