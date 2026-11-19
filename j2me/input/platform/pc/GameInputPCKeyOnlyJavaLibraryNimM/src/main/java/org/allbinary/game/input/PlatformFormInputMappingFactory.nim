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
import org/allbinary/game/input/mapping/InputToGameKeyMapping as InputToGameKeyMappingModule
export InputToGameKeyMappingModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    PlatformFormInputMappingFactory* = ref object of JObject
        logUtil*: LogUtil
        inputToGameKeyMapping*: InputToGameKeyMapping

proc newPlatformFormInputMappingFactory*(): PlatformFormInputMappingFactory
proc getInstance*(t: typedesc[PlatformFormInputMappingFactory]): PlatformFormInputMappingFactory {.discardable.}
method getOrCreate*(this: PlatformFormInputMappingFactory): InputToGameKeyMapping {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/input/PCKeyFactory as PCKeyFactoryModule
export PCKeyFactoryModule
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule

var PlatformFormInputMappingFactory_instanceValue: JObject
var PlatformFormInputMappingFactory_instanceSet = false
proc instance*(t: typedesc[PlatformFormInputMappingFactory]): JObject =
    if not PlatformFormInputMappingFactory_instanceSet:
        PlatformFormInputMappingFactory_instanceSet = true
        PlatformFormInputMappingFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    PlatformFormInputMappingFactory_instanceValue
proc `instance=`*(t: typedesc[PlatformFormInputMappingFactory], value: JObject) =
    PlatformFormInputMappingFactory_instanceSet = true
    PlatformFormInputMappingFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsPlatformFormInputMappingFactory(this: PlatformFormInputMappingFactory) =
    this.logUtil = LogUtil.getInstance()
    this.inputToGameKeyMapping = InputToGameKeyMapping.getNullInstance()
    discard

proc initPlatformFormInputMappingFactory*(this: PlatformFormInputMappingFactory) =
    this.initFieldsPlatformFormInputMappingFactory()

proc newPlatformFormInputMappingFactory*(): PlatformFormInputMappingFactory =
    result = PlatformFormInputMappingFactory()
    initPlatformFormInputMappingFactory(result)

proc getInstance*(t: typedesc[PlatformFormInputMappingFactory]): PlatformFormInputMappingFactory {.discardable.} =
        if PlatformFormInputMappingFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            PlatformFormInputMappingFactory.instance = newPlatformFormInputMappingFactory()
        return PlatformFormInputMappingFactory(JObject(PlatformFormInputMappingFactory.instance))

method getOrCreate*(this: PlatformFormInputMappingFactory): InputToGameKeyMapping {.base, discardable.} =
        try:
            if (jSame(this.inputToGameKeyMapping, InputToGameKeyMapping.getNullInstance())):
                var pcKeyFactory: PCKeyFactory = PCKeyFactory.getInstance()
                let inputToGameKeyMapping: InputToGameKeyMapping = newInputToGameKeyMapping()
                let gameKeyFactory: GameKeyFactory = GameKeyFactory.getInstance()
                inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.DPAD_UP)
                inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN)
                inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT)
                inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT)
                inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, pcKeyFactory.ENTER)
                this.inputToGameKeyMapping = inputToGameKeyMapping
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
        return this.inputToGameKeyMapping

