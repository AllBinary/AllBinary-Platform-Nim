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
# package org.allbinary.logic.system.security.licensing

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule

type
    LicenseUtil* = ref object of JObject

proc newLicenseUtil*(): LicenseUtil
proc getInstance*(t: typedesc[LicenseUtil]): LicenseUtil {.discardable.}
method init*(this: LicenseUtil) {.base.}
method isRunning*(this: LicenseUtil): bool {.base, discardable.}
method setRunning*(this: LicenseUtil, running: bool) {.base.}
method shouldWait*(this: LicenseUtil, commandListener: CommandListener): bool {.base, discardable.}

var LicenseUtil_instanceValue: LicenseUtil
var LicenseUtil_instanceSet = false
proc instance*(t: typedesc[LicenseUtil]): LicenseUtil =
    if not LicenseUtil_instanceSet:
        LicenseUtil_instanceSet = true
        LicenseUtil_instanceValue = newLicenseUtil()
    LicenseUtil_instanceValue

proc initLicenseUtil*(this: LicenseUtil) =
    discard

proc newLicenseUtil*(): LicenseUtil =
    result = LicenseUtil()
    initLicenseUtil(result)

proc getInstance*(t: typedesc[LicenseUtil]): LicenseUtil {.discardable.} =
        return LicenseUtil.instance

method init*(this: LicenseUtil) {.base.} =
        discard

method isRunning*(this: LicenseUtil): bool {.base, discardable.} =
        return false

method setRunning*(this: LicenseUtil, running: bool) {.base.} =
        discard

method shouldWait*(this: LicenseUtil, commandListener: CommandListener): bool {.base, discardable.} =
        return this.isRunning()

