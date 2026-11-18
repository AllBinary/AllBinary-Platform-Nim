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
# package org.allbinary.content

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Command as CommandModule
export CommandModule

type
    NotificationUtil* = ref object of JObject

proc newNotificationUtil*(): NotificationUtil
proc getInstance*(t: typedesc[NotificationUtil]): NotificationUtil {.discardable.}
method notify*(this: NotificationUtil, command: Command, resource: string, message: string) {.base.}

var NotificationUtil_SINGLETONValue: NotificationUtil
var NotificationUtil_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NotificationUtil]): NotificationUtil =
    if not NotificationUtil_SINGLETONSet:
        NotificationUtil_SINGLETONSet = true
        NotificationUtil_SINGLETONValue = newNotificationUtil()
    NotificationUtil_SINGLETONValue

proc initNotificationUtil*(this: NotificationUtil) =
    discard

proc newNotificationUtil*(): NotificationUtil =
    result = NotificationUtil()
    initNotificationUtil(result)

proc getInstance*(t: typedesc[NotificationUtil]): NotificationUtil {.discardable.} =
        return NotificationUtil.SINGLETON

method notify*(this: NotificationUtil, command: Command, resource: string, message: string) {.base.} =
        discard

