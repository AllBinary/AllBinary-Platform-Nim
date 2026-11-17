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

type
    OperatingSystems* = ref object of JObject
        LINUX*: string
        WINDOWS*: string
        SOLARIS*: string
        WINDOWS2000*: string
        WINDOWS_NT*: string
        WINDOWS_10*: string
        WINDOWS_11*: string
        WINDOWS_VISTA*: string
        WINDOWS_XP*: string
        ANDROID*: string
        HARMONY*: string
        unknownSpecificOSAllowed*: bool

proc newOperatingSystems*(): OperatingSystems
proc initOperatingSystems*(this: OperatingSystems)
method isUnknownSpecificOSAllowed*(this: OperatingSystems): bool {.base, discardable.}
method setUnknownSpecificOSAllowed*(this: OperatingSystems, aUnknownSpecificOSAllowed: bool) {.base.}
proc getInstance*(t: typedesc[OperatingSystems]): OperatingSystems {.discardable.}

var OperatingSystems_instanceValue: OperatingSystems
var OperatingSystems_instanceSet = false
proc instance*(t: typedesc[OperatingSystems]): OperatingSystems =
    if not OperatingSystems_instanceSet:
        OperatingSystems_instanceSet = true
        OperatingSystems_instanceValue = newOperatingSystems()
    OperatingSystems_instanceValue

# Java field initializers run after the base initializer
proc initFieldsOperatingSystems(this: OperatingSystems) =
    this.LINUX = "Linux"
    this.WINDOWS = "Windows"
    this.SOLARIS = "Solaris"
    this.WINDOWS2000 = "Windows 2000"
    this.WINDOWS_NT = "Windows NT"
    this.WINDOWS_10 = "Windows 10"
    this.WINDOWS_11 = "Windows 11"
    this.WINDOWS_VISTA = "Windows Vista"
    this.WINDOWS_XP = "Windows XP"
    this.ANDROID = this.LINUX
    this.HARMONY = "HarmonyOS"
    this.unknownSpecificOSAllowed = true
    discard

proc initOperatingSystems*(this: OperatingSystems) =
        this.initFieldsOperatingSystems()
        discard

proc newOperatingSystems*(): OperatingSystems =
    result = OperatingSystems()
    initOperatingSystems(result)

method isUnknownSpecificOSAllowed*(this: OperatingSystems): bool {.base, discardable.} =
        return this.unknownSpecificOSAllowed

method setUnknownSpecificOSAllowed*(this: OperatingSystems, aUnknownSpecificOSAllowed: bool) {.base.} =
        this.unknownSpecificOSAllowed = aUnknownSpecificOSAllowed

proc getInstance*(t: typedesc[OperatingSystems]): OperatingSystems {.discardable.} =
        return OperatingSystems.instance

