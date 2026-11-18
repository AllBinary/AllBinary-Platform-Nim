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
import org/allbinary/game/input/mapping/PersistentInputMapping as PersistentInputMappingModule
export PersistentInputMappingModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    PlatformInputMappingFactory* = ref object of JObject
        logUtil*: LogUtil
        inputToGameKeyMapping*: PersistentInputMapping

proc newPlatformInputMappingFactory*(): PlatformInputMappingFactory
proc getInstance*(t: typedesc[PlatformInputMappingFactory]): PlatformInputMappingFactory {.discardable.}
method getPersistentInputMappingInstance*(this: PlatformInputMappingFactory): PersistentInputMapping {.base, discardable.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/input/MotionJ2MEGameInputMapping as MotionJ2MEGameInputMappingModule
export MotionJ2MEGameInputMappingModule

var PlatformInputMappingFactory_instanceValue: PlatformInputMappingFactory
var PlatformInputMappingFactory_instanceSet = false
proc instance*(t: typedesc[PlatformInputMappingFactory]): PlatformInputMappingFactory =
    if not PlatformInputMappingFactory_instanceSet:
        PlatformInputMappingFactory_instanceSet = true
        PlatformInputMappingFactory_instanceValue = newPlatformInputMappingFactory()
    PlatformInputMappingFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPlatformInputMappingFactory(this: PlatformInputMappingFactory) =
    this.logUtil = LogUtil.getInstance()
    this.inputToGameKeyMapping = PersistentInputMapping.getNullInstance()
    discard

proc initPlatformInputMappingFactory*(this: PlatformInputMappingFactory) =
    this.initFieldsPlatformInputMappingFactory()

proc newPlatformInputMappingFactory*(): PlatformInputMappingFactory =
    result = PlatformInputMappingFactory()
    initPlatformInputMappingFactory(result)

proc getInstance*(t: typedesc[PlatformInputMappingFactory]): PlatformInputMappingFactory {.discardable.} =
        return PlatformInputMappingFactory.instance

method getPersistentInputMappingInstance*(this: PlatformInputMappingFactory): PersistentInputMapping {.base, discardable.} =
        try:
            if this.inputToGameKeyMapping == PersistentInputMapping.getNullInstance():
                this.inputToGameKeyMapping = newMotionJ2MEGameInputMapping()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
        return this.inputToGameKeyMapping

