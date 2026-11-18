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
proc getInstance*(t: typedesc[BasicTouchInputFactory]): BasicTouchInputFactory {.discardable.}
method init*(this: BasicTouchInputFactory, inputToGameKeyMapping: InputToGameKeyMapping) {.base.}
method updateAll*(this: BasicTouchInputFactory, inputToGameKeyMapping: InputToGameKeyMapping) {.base.}
method updateAllList*(this: BasicTouchInputFactory, list: BasicArrayList, inputToGameKeyMapping: InputToGameKeyMapping) {.base.}
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
    this.SPECIAL_BUTTON_SIX = newTouchButtonInput(InputFactory.getInstance().MAX -% 30, "Button 6")
    this.SPECIAL_BUTTON_FIVE = newTouchButtonInput(InputFactory.getInstance().MAX -% 31, "Button 5")
    this.SPECIAL_BUTTON_FOUR = newTouchButtonInput(InputFactory.getInstance().MAX -% 32, "Button 4")
    this.SPECIAL_BUTTON_THREE = newTouchButtonInput(InputFactory.getInstance().MAX -% 33, "Button 3")
    this.SPECIAL_BUTTON_TWO = newTouchButtonInput(InputFactory.getInstance().MAX -% 34, "Button 2")
    this.SPECIAL_BUTTON_ONE = newTouchButtonInput(InputFactory.getInstance().MAX -% 35, "Button 1")
    this.UP = newTouchButtonInput(InputFactory.getInstance().MAX -% 36, "Up Button")
    this.LEFT = newTouchButtonInput(InputFactory.getInstance().MAX -% 37, "Left Button")
    this.RIGHT = newTouchButtonInput(InputFactory.getInstance().MAX -% 38, "Right Button")
    this.DOWN = newTouchButtonInput(InputFactory.getInstance().MAX -% 39, "Down Button")
    this.NONE = newTouchButtonInput(InputFactory.getInstance().MAX -% 40, "No Button")
    this.initialized = false
    this.list = newBasicArrayListD()
    discard

proc initBasicTouchInputFactory*(this: BasicTouchInputFactory) =
    this.initFieldsBasicTouchInputFactory()

proc newBasicTouchInputFactory*(): BasicTouchInputFactory =
    result = BasicTouchInputFactory()
    initBasicTouchInputFactory(result)

proc getInstance*(t: typedesc[BasicTouchInputFactory]): BasicTouchInputFactory {.discardable.} =
        if BasicTouchInputFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            BasicTouchInputFactory.instance = newBasicTouchInputFactory()
        return BasicTouchInputFactory(JObject(BasicTouchInputFactory.instance))

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
            this.updateAllList(this.list, inputToGameKeyMapping)

method updateAll*(this: BasicTouchInputFactory, inputToGameKeyMapping: InputToGameKeyMapping) {.base.} =
        this.updateAllList(this.getList(), inputToGameKeyMapping)

method updateAllList*(this: BasicTouchInputFactory, list: BasicArrayList, inputToGameKeyMapping: InputToGameKeyMapping) {.base.} =
        this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().START).appendint(list.size()).toString(), this, "updateAll")
        block:
            var index: int32 = list.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                var touchButtonInput: TouchButtonInput = TouchButtonInput(JObject(list.get(index)))
                touchButtonInput.update(inputToGameKeyMapping)

method getList*(this: BasicTouchInputFactory): BasicArrayList {.base, discardable.} =
        return this.list

