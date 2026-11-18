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
import org/allbinary/game/input/mapping/InputToGameKeyMapping as InputToGameKeyMappingModule
export InputToGameKeyMappingModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/input/motion/button/TouchButtonInput as TouchButtonInputModule
export TouchButtonInputModule

type
    BasicTouchInputFactory* = ref object of JObject
        logUtil*: LogUtil
        SPECIAL_BUTTON_SEVEN_TESTING_ONLY*: TouchButtonInput
        SPECIAL_BUTTON_EIGHT_TESTING_ONLY*: TouchButtonInput
        SPECIAL_BUTTON_SIX*: TouchButtonInput
        SPECIAL_BUTTON_FIVE*: TouchButtonInput
        SPECIAL_BUTTON_FOUR*: TouchButtonInput
        SPECIAL_BUTTON_THREE*: TouchButtonInput
        SPECIAL_BUTTON_TWO*: TouchButtonInput
        SPECIAL_BUTTON_ONE*: TouchButtonInput
        UP*: TouchButtonInput
        LEFT*: TouchButtonInput
        RIGHT*: TouchButtonInput
        DOWN*: TouchButtonInput
        NONE*: TouchButtonInput
        initialized*: bool
        list*: BasicArrayList

proc newBasicTouchInputFactory*(): BasicTouchInputFactory
proc initBasicTouchInputFactory*(this: BasicTouchInputFactory)
proc getInstance*(t: typedesc[BasicTouchInputFactory]): BasicTouchInputFactory {.discardable.}
method init*(this: BasicTouchInputFactory, inputToGameKeyMapping: InputToGameKeyMapping) {.base.}
method updateAll*(this: BasicTouchInputFactory, inputToGameKeyMapping: InputToGameKeyMapping) {.base.}
method updateAllFromList*(this: BasicTouchInputFactory, list: BasicArrayList, inputToGameKeyMapping: InputToGameKeyMapping) {.base.}
method getList*(this: BasicTouchInputFactory): BasicArrayList {.base, discardable.}
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var BasicTouchInputFactory_instanceValue: JObject
var BasicTouchInputFactory_instanceSet = false
proc instance*(t: typedesc[BasicTouchInputFactory]): JObject =
    if not BasicTouchInputFactory_instanceSet:
        BasicTouchInputFactory_instanceSet = true
        BasicTouchInputFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    BasicTouchInputFactory_instanceValue
proc `instance=`*(t: typedesc[BasicTouchInputFactory], value: JObject) =
    BasicTouchInputFactory_instanceSet = true
    BasicTouchInputFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsBasicTouchInputFactory(this: BasicTouchInputFactory) =
    this.logUtil = LogUtil.getInstance()
    
    
    
    
    
    
    
    
    
    
    
    
    
    this.initialized = false
    this.list = newBasicArrayListD()
    discard

proc getInstance*(t: typedesc[BasicTouchInputFactory]): BasicTouchInputFactory {.discardable.} =
        if BasicTouchInputFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            BasicTouchInputFactory.instance = newBasicTouchInputFactory()
        return BasicTouchInputFactory(JObject(BasicTouchInputFactory.instance))

proc initBasicTouchInputFactory*(this: BasicTouchInputFactory) =
        this.initFieldsBasicTouchInputFactory()
        var MAX: int32 = InputFactory.getInstance().MAX
        this.SPECIAL_BUTTON_SEVEN_TESTING_ONLY = newTouchButtonInput(MAX -% 41, "Button 7 - Testing Only May Cross Over Key Values")
        this.SPECIAL_BUTTON_EIGHT_TESTING_ONLY = newTouchButtonInput(MAX -% 42, "Button 8 - Testing Only May Cross Over Key Values")
        this.SPECIAL_BUTTON_SIX = newTouchButtonInput(MAX -% 30, "Button 6")
        this.SPECIAL_BUTTON_FIVE = newTouchButtonInput(MAX -% 31, "Button 5")
        this.SPECIAL_BUTTON_FOUR = newTouchButtonInput(MAX -% 32, "Button 4")
        this.SPECIAL_BUTTON_THREE = newTouchButtonInput(MAX -% 33, "Button 3")
        this.SPECIAL_BUTTON_TWO = newTouchButtonInput(MAX -% 34, "Button 2")
        this.SPECIAL_BUTTON_ONE = newTouchButtonInput(MAX -% 35, "Button 1")
        this.UP = newTouchButtonInput(MAX -% 36, "Up Button")
        this.LEFT = newTouchButtonInput(MAX -% 37, "Left Button")
        this.RIGHT = newTouchButtonInput(MAX -% 38, "Right Button")
        this.DOWN = newTouchButtonInput(MAX -% 39, "Down Button")
        this.NONE = newTouchButtonInput(MAX -% 40, "No Button")

proc newBasicTouchInputFactory*(): BasicTouchInputFactory =
    result = BasicTouchInputFactory()
    initBasicTouchInputFactory(result)

method init*(this: BasicTouchInputFactory, inputToGameKeyMapping: InputToGameKeyMapping) {.base.} =
        if (not this.initialized):
            this.initialized = true
            this.list.add(this.UP)
            this.list.add(this.LEFT)
            this.list.add(this.RIGHT)
            this.list.add(this.DOWN)
            this.list.add(this.SPECIAL_BUTTON_TWO)
            this.list.add(this.SPECIAL_BUTTON_FOUR)
            this.list.add(this.SPECIAL_BUTTON_THREE)
            this.list.add(this.SPECIAL_BUTTON_ONE)
            this.list.add(this.SPECIAL_BUTTON_FIVE)
            this.list.add(this.SPECIAL_BUTTON_SIX)
            this.list.add(this.SPECIAL_BUTTON_SIX)
            this.list.add(this.SPECIAL_BUTTON_SEVEN_TESTING_ONLY)
            this.list.add(this.SPECIAL_BUTTON_EIGHT_TESTING_ONLY)
            this.updateAllFromList(this.list, inputToGameKeyMapping)

method updateAll*(this: BasicTouchInputFactory, inputToGameKeyMapping: InputToGameKeyMapping) {.base.} =
        this.updateAllFromList(this.list, inputToGameKeyMapping)

method updateAllFromList*(this: BasicTouchInputFactory, list: BasicArrayList, inputToGameKeyMapping: InputToGameKeyMapping) {.base.} =
        this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().START_LABEL).appendint(list.size()).toString(), this, "updateAll")
        var touchButtonInput: TouchButtonInput = nil
        block:
            var index: int32 = list.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                touchButtonInput = TouchButtonInput(JObject(list.objectArray[index]))
                touchButtonInput.update(inputToGameKeyMapping)

method getList*(this: BasicTouchInputFactory): BasicArrayList {.base, discardable.} =
        return this.list

