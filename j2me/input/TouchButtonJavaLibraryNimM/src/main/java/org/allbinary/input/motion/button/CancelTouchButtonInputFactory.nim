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
import org/allbinary/input/motion/button/TouchButtonInput as TouchButtonInputModule
export TouchButtonInputModule

type
    CancelTouchButtonInputFactory* = ref object of JObject
        cancelInputArray*: JArray[TouchButtonInput]

proc newCancelTouchButtonInputFactory*(): CancelTouchButtonInputFactory
proc initCancelTouchButtonInputFactory*(this: CancelTouchButtonInputFactory)
proc getInstance*(t: typedesc[CancelTouchButtonInputFactory]): CancelTouchButtonInputFactory {.discardable.}
method getCancel*(this: CancelTouchButtonInputFactory, touchButtonInput: TouchButtonInput): TouchButtonInput {.base, discardable.}
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/input/motion/button/BasicTouchInputFactory as BasicTouchInputFactoryModule
export BasicTouchInputFactoryModule

var CancelTouchButtonInputFactory_instanceValue: JObject
var CancelTouchButtonInputFactory_instanceSet = false
proc instance*(t: typedesc[CancelTouchButtonInputFactory]): JObject =
    if not CancelTouchButtonInputFactory_instanceSet:
        CancelTouchButtonInputFactory_instanceSet = true
        CancelTouchButtonInputFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    CancelTouchButtonInputFactory_instanceValue
proc `instance=`*(t: typedesc[CancelTouchButtonInputFactory], value: JObject) =
    CancelTouchButtonInputFactory_instanceSet = true
    CancelTouchButtonInputFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsCancelTouchButtonInputFactory(this: CancelTouchButtonInputFactory) =
    this.cancelInputArray = newJArray[TouchButtonInput](InputFactory.getInstance().MAX, default(TouchButtonInput))
    discard

proc getInstance*(t: typedesc[CancelTouchButtonInputFactory]): CancelTouchButtonInputFactory {.discardable.} =
        if CancelTouchButtonInputFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            CancelTouchButtonInputFactory.instance = newCancelTouchButtonInputFactory()
        return CancelTouchButtonInputFactory(JObject(CancelTouchButtonInputFactory.instance))

proc initCancelTouchButtonInputFactory*(this: CancelTouchButtonInputFactory) =
        this.initFieldsCancelTouchButtonInputFactory()
        let basicTouchInputFactory: BasicTouchInputFactory = BasicTouchInputFactory.getInstance()
        block:
            var index: int32 = this.cancelInputArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                this.cancelInputArray[index] = basicTouchInputFactory.NONE
        this.cancelInputArray[basicTouchInputFactory.UP.getSourceId()] = basicTouchInputFactory.DOWN
        this.cancelInputArray[basicTouchInputFactory.DOWN.getSourceId()] = basicTouchInputFactory.UP
        this.cancelInputArray[basicTouchInputFactory.LEFT.getSourceId()] = basicTouchInputFactory.RIGHT
        this.cancelInputArray[basicTouchInputFactory.RIGHT.getSourceId()] = basicTouchInputFactory.LEFT

proc newCancelTouchButtonInputFactory*(): CancelTouchButtonInputFactory =
    result = CancelTouchButtonInputFactory()
    initCancelTouchButtonInputFactory(result)

method getCancel*(this: CancelTouchButtonInputFactory, touchButtonInput: TouchButtonInput): TouchButtonInput {.base, discardable.} =
        return this.cancelInputArray[touchButtonInput.getSourceId()]

