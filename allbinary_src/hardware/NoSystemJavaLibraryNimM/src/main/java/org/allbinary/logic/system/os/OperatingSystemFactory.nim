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
# package org.allbinary.logic.system.os

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/System as SystemModule
export SystemModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule

type
    OperatingSystemFactory* = ref object of JObject
        logUtil*: LogUtil
        genericOperatingSystem*: GenericOperatingSystem

proc newOperatingSystemFactory*(): OperatingSystemFactory
proc initOperatingSystemFactory*(this: OperatingSystemFactory)
proc getInstance*(t: typedesc[OperatingSystemFactory]): OperatingSystemFactory {.discardable.}
method getOperatingSystemInstance*(this: OperatingSystemFactory): GenericOperatingSystem {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/logic/system/os/NoOperatingSystem as NoOperatingSystemModule
export NoOperatingSystemModule

var OperatingSystemFactory_instanceValue: OperatingSystemFactory
var OperatingSystemFactory_instanceSet = false
proc instance*(t: typedesc[OperatingSystemFactory]): OperatingSystemFactory =
    if not OperatingSystemFactory_instanceSet:
        OperatingSystemFactory_instanceSet = true
        OperatingSystemFactory_instanceValue = newOperatingSystemFactory()
    OperatingSystemFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsOperatingSystemFactory(this: OperatingSystemFactory) =
    this.logUtil = LogUtil.getInstance()
    this.genericOperatingSystem = NoOperatingSystem.NO_OPERATING_SYSTEMStatic
    discard

proc getInstance*(t: typedesc[OperatingSystemFactory]): OperatingSystemFactory {.discardable.} =
        return OperatingSystemFactory.instance

proc initOperatingSystemFactory*(this: OperatingSystemFactory) =
        this.initFieldsOperatingSystemFactory()
        discard

proc newOperatingSystemFactory*(): OperatingSystemFactory =
    result = OperatingSystemFactory()
    initOperatingSystemFactory(result)

method getOperatingSystemInstance*(this: OperatingSystemFactory): GenericOperatingSystem {.base, discardable.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        try:
            let osString: string = newStringMaker().append("OperatingSystem Info: ").append(this.genericOperatingSystem.toString()).toString()
            echo jstr(osString)
            this.logUtil.putF(osString, this, commonStrings.GET_INSTANCE)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
        return this.genericOperatingSystem

