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
# package org.allbinary.logic.system

{.warning[UnusedImport]: off.}
import allbinary_java

type
    SoftwareInformation* = ref object of JObject
        name*: string
        shortName*: string
        version*: string

proc newSoftwareInformation*(name: string, version: string, shortName: string): SoftwareInformation
proc initSoftwareInformation*(this: SoftwareInformation, name: string, version: string, shortName: string)
method getName*(this: SoftwareInformation): string {.base, discardable.}
method getVersion*(this: SoftwareInformation): string {.base, discardable.}
method toShortString*(this: SoftwareInformation): string {.base, discardable.}
method toString*(this: SoftwareInformation): string {.discardable.}
import org/allbinary/KotlinUtil as KotlinUtilModule
export KotlinUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsSoftwareInformation(this: SoftwareInformation) =
    
    
    
    discard

proc initSoftwareInformation*(this: SoftwareInformation, name: string, version: string, shortName: string) =
        this.initFieldsSoftwareInformation()
        this.name = name
        this.version = version
        this.shortName = newStringMaker().append(shortName).append(KotlinUtil.getShortName()).toString()

proc newSoftwareInformation*(name: string, version: string, shortName: string): SoftwareInformation =
    result = SoftwareInformation()
    initSoftwareInformation(result, name, version, shortName)

method getName*(this: SoftwareInformation): string {.base, discardable.} =
        return this.name

method getVersion*(this: SoftwareInformation): string {.base, discardable.} =
        return this.version

method toShortString*(this: SoftwareInformation): string {.base, discardable.} =
        return this.shortName

method toString*(this: SoftwareInformation): string {.discardable.} =
        let NAME: string = "Name: "
        let VERSION: string = "Version: "
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(NAME)
        stringBuffer.append(this.getName())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(VERSION)
        stringBuffer.append(this.getVersion())
        return stringBuffer.toString()

