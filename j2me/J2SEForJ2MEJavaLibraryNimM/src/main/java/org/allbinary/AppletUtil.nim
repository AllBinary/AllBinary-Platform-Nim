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
# package org.allbinary

{.warning[UnusedImport]: off.}
import allbinary_java

#import org.allbinary.logic.communication.log.PreLogUtil;
type
    AppletUtil* = ref object of JObject

proc newAppletUtil*(): AppletUtil
proc initAppletUtil*(this: AppletUtil)
proc setApplet*(t: typedesc[AppletUtil])
proc isAppletLoader*(t: typedesc[AppletUtil], anyType: JObject): bool {.discardable.}

var AppletUtil_appletValue: bool
var AppletUtil_appletSet = false
proc applet*(t: typedesc[AppletUtil]): bool =
    if not AppletUtil_appletSet:
        AppletUtil_appletSet = true
        AppletUtil_appletValue = false
    AppletUtil_appletValue
proc `applet=`*(t: typedesc[AppletUtil], value: bool) =
    AppletUtil_appletSet = true
    AppletUtil_appletValue = value

proc initAppletUtil*(this: AppletUtil) =
        discard
        discard

proc newAppletUtil*(): AppletUtil =
    result = AppletUtil()
    initAppletUtil(result)

proc setApplet*(t: typedesc[AppletUtil]) =
        AppletUtil.applet = true

proc isAppletLoader*(t: typedesc[AppletUtil], anyType: JObject): bool {.discardable.} =
        return AppletUtil.applet

