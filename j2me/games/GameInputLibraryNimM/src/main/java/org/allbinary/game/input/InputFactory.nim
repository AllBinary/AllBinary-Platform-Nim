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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/input/Input as InputModule
export InputModule

type
    InputFactory* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        KEY_CODE_LABEL*: string
        DEVICE_ID_LABEL*: string
        MAX*: int32
        inputIntegerArray*: JArray[Input]
        NO_INPUT*: Input

proc newInputFactory*(): InputFactory
proc initInputFactory*(this: InputFactory)
proc getInstance*(t: typedesc[InputFactory]): InputFactory {.discardable.}
method add*(this: InputFactory, id: int32, input: Input) {.base.}
method getInstanceById*(this: InputFactory, id: int32): Input {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

var InputFactory_instanceValue: JObject
var InputFactory_instanceSet = false
proc instance*(t: typedesc[InputFactory]): JObject =
    if not InputFactory_instanceSet:
        InputFactory_instanceSet = true
        InputFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    InputFactory_instanceValue
proc `instance=`*(t: typedesc[InputFactory], value: JObject) =
    InputFactory_instanceSet = true
    InputFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsInputFactory(this: InputFactory) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.KEY_CODE_LABEL = "KeyCode: "
    this.DEVICE_ID_LABEL = "DeviceId: "
    this.MAX = SmallIntegerSingletonFactory.getInstance().getMin()
    this.inputIntegerArray = newJArray[Input](this.MAX, default(Input))
    this.NO_INPUT = newInput(0, this.commonStrings.UNKNOWN)
    discard

proc getInstance*(t: typedesc[InputFactory]): InputFactory {.discardable.} =
        if InputFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            InputFactory.instance = newInputFactory()
        return InputFactory(JObject(InputFactory.instance))

proc initInputFactory*(this: InputFactory) =
        this.initFieldsInputFactory()
        let size: int32 = this.inputIntegerArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.inputIntegerArray[index] = this.NO_INPUT

proc newInputFactory*(): InputFactory =
    result = InputFactory()
    initInputFactory(result)

method add*(this: InputFactory, id: int32, input: Input) {.base.} =
        this.inputIntegerArray[id] = input

method getInstanceById*(this: InputFactory, id: int32): Input {.base, discardable.} =
        var id = id
        if id < 0:
            id = -id
        if id > this.inputIntegerArray.length:
            this.logUtil.putF(newStringMaker().append("Warning id: ").appendint(id).toString(), this, this.commonStrings.GET_INSTANCE)
            return this.NO_INPUT
        return this.inputIntegerArray[id]

