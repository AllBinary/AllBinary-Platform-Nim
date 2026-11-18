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
# package org.allbinary.globals

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/globals/UrlGlobalsInterface as UrlGlobalsInterfaceModule
export UrlGlobalsInterfaceModule

type
    URLGLOBALS* = ref object of JObject

proc newURLGLOBALS*(): URLGLOBALS
proc init*(t: typedesc[URLGLOBALS], urlGlobalsInterface: UrlGlobalsInterface)
proc isTestingMode*(t: typedesc[URLGLOBALS]): bool {.discardable.}
proc getWebappPath*(t: typedesc[URLGLOBALS]): string {.discardable.}
proc getTestHtmlPath*(t: typedesc[URLGLOBALS]): string {.discardable.}
proc getMainPath*(t: typedesc[URLGLOBALS]): string {.discardable.}
import org/allbinary/globals/AppUrlGlobals as AppUrlGlobalsModule
export AppUrlGlobalsModule

var URLGLOBALS_urlGlobalsInterfaceValue: UrlGlobalsInterface
var URLGLOBALS_urlGlobalsInterfaceSet = false
proc urlGlobalsInterface*(t: typedesc[URLGLOBALS]): UrlGlobalsInterface =
    if not URLGLOBALS_urlGlobalsInterfaceSet:
        URLGLOBALS_urlGlobalsInterfaceSet = true
        URLGLOBALS_urlGlobalsInterfaceValue = AppUrlGlobals.NULL_APP_URL_GLOBALS
    URLGLOBALS_urlGlobalsInterfaceValue
proc `urlGlobalsInterface=`*(t: typedesc[URLGLOBALS], value: UrlGlobalsInterface) =
    URLGLOBALS_urlGlobalsInterfaceSet = true
    URLGLOBALS_urlGlobalsInterfaceValue = value

proc initURLGLOBALS*(this: URLGLOBALS) =
    discard

proc newURLGLOBALS*(): URLGLOBALS =
    result = URLGLOBALS()
    initURLGLOBALS(result)

proc init*(t: typedesc[URLGLOBALS], urlGlobalsInterface: UrlGlobalsInterface) =
        URLGLOBALS.urlGlobalsInterface = urlGlobalsInterface

proc isTestingMode*(t: typedesc[URLGLOBALS]): bool {.discardable.} =
        return URLGLOBALS.urlGlobalsInterface.isTestingMode()

proc getWebappPath*(t: typedesc[URLGLOBALS]): string {.discardable.} =
        return URLGLOBALS.urlGlobalsInterface.getWebappPath()

proc getTestHtmlPath*(t: typedesc[URLGLOBALS]): string {.discardable.} =
        return URLGLOBALS.urlGlobalsInterface.getTestHtmlPath()

proc getMainPath*(t: typedesc[URLGLOBALS]): string {.discardable.} =
        return URLGLOBALS.urlGlobalsInterface.getMainPath()

