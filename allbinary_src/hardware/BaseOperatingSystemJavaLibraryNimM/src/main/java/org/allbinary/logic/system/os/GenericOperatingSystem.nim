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
import org/allbinary/logic/java/character/CharacterSet as CharacterSetModule
export CharacterSetModule
import org/allbinary/logic/system/os/OperatingSystemInterface as OperatingSystemInterfaceModule
export OperatingSystemInterfaceModule

type
    GenericOperatingSystem* = ref object of OperatingSystemInterface
        osName*: string
        osArch*: string
        osVersion*: string
        characterSet*: CharacterSet
        scalable*: bool

proc newGenericOperatingSystem*(): GenericOperatingSystem
proc initGenericOperatingSystem*(this: GenericOperatingSystem)
method getName*(this: GenericOperatingSystem): string {.discardable.}
method getVersion*(this: GenericOperatingSystem): string {.discardable.}
method getArch*(this: GenericOperatingSystem): string {.discardable.}
method getCharacterSet*(this: GenericOperatingSystem): CharacterSet {.discardable.}
method isOverScan*(this: GenericOperatingSystem): bool {.discardable.}
method getOverScanXPercent*(this: GenericOperatingSystem): int32 {.discardable.}
method getOverScanYPercent*(this: GenericOperatingSystem): int32 {.discardable.}
method isScalable*(this: GenericOperatingSystem): bool {.discardable.}
method isAutoHide*(this: GenericOperatingSystem): bool {.discardable.}
method toString*(this: GenericOperatingSystem): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/string/StringValidationUtil as StringValidationUtilModule
export StringValidationUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/logic/system/os/SystemProperties as SystemPropertiesModule
export SystemPropertiesModule


# Java field initializers run after the base initializer
proc initFieldsGenericOperatingSystem(this: GenericOperatingSystem) =
    
    
    
    this.characterSet = newCharacterSet()
    this.scalable = false
    discard

proc initGenericOperatingSystem*(this: GenericOperatingSystem) =
        this.initFieldsGenericOperatingSystem()
        let systemProperties: SystemProperties = SystemProperties.getInstance()
        let stringValidationUtil: StringValidationUtil = StringValidationUtil.getInstance()
        let EMPTY_STRING: string = StringUtil.getInstance().EMPTY_STRING
        if stringValidationUtil.isEmpty(systemProperties.getName()):
            this.osName = EMPTY_STRING
        else:
            this.osName = systemProperties.getName()
        if stringValidationUtil.isEmpty(systemProperties.getArch()):
            this.osArch = EMPTY_STRING
        else:
            this.osArch = systemProperties.getArch()
        if stringValidationUtil.isEmpty(systemProperties.getVersion()):
            this.osVersion = EMPTY_STRING
        else:
            this.osVersion = systemProperties.getVersion()

proc newGenericOperatingSystem*(): GenericOperatingSystem =
    result = GenericOperatingSystem()
    initGenericOperatingSystem(result)

method getName*(this: GenericOperatingSystem): string {.discardable.} =
        return this.osName

method getVersion*(this: GenericOperatingSystem): string {.discardable.} =
        return this.osVersion

method getArch*(this: GenericOperatingSystem): string {.discardable.} =
        return this.osArch

method getCharacterSet*(this: GenericOperatingSystem): CharacterSet {.discardable.} =
        return this.characterSet

method isOverScan*(this: GenericOperatingSystem): bool {.discardable.} =
        return false

method getOverScanXPercent*(this: GenericOperatingSystem): int32 {.discardable.} =
        return 100

method getOverScanYPercent*(this: GenericOperatingSystem): int32 {.discardable.} =
        return 100

method isScalable*(this: GenericOperatingSystem): bool {.discardable.} =
        return this.scalable

method isAutoHide*(this: GenericOperatingSystem): bool {.discardable.} =
        return false

method toString*(this: GenericOperatingSystem): string {.discardable.} =
        let NEW_LINE: string = CommonSeps.getInstance().NEW_LINE
        let osBuffer: StringMaker = newStringMaker()
        osBuffer.append("Operating System Info: \n")
        osBuffer.append(this.getName())
        osBuffer.append(NEW_LINE)
        osBuffer.append(this.getArch())
        osBuffer.append(NEW_LINE)
        osBuffer.append(this.getVersion())
        osBuffer.append(NEW_LINE)
        osBuffer.append(StringUtil.getInstance().toString(this.getCharacterSet()))
        osBuffer.append(NEW_LINE)
        return osBuffer.toString()

