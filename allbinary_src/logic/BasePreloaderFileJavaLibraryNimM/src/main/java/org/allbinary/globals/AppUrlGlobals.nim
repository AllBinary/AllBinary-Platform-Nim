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

#implements
type
    AppUrlGlobals* = ref object of UrlGlobalsInterface
        path*: string

proc newAppUrlGlobals*(): AppUrlGlobals
method isTestingMode*(this: AppUrlGlobals): bool {.discardable.}
method getWebappPath*(this: AppUrlGlobals): string {.discardable.}
method setWebappPath*(this: AppUrlGlobals, path: string) {.base.}
method getTestHtmlPath*(this: AppUrlGlobals): string {.discardable.}
method getMainPath*(this: AppUrlGlobals): string {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var AppUrlGlobals_NULL_APP_URL_GLOBALSValue: AppUrlGlobals
var AppUrlGlobals_NULL_APP_URL_GLOBALSSet = false
proc NULL_APP_URL_GLOBALS*(t: typedesc[AppUrlGlobals]): AppUrlGlobals =
    if not AppUrlGlobals_NULL_APP_URL_GLOBALSSet:
        AppUrlGlobals_NULL_APP_URL_GLOBALSSet = true
        AppUrlGlobals_NULL_APP_URL_GLOBALSValue = newAppUrlGlobals()
    AppUrlGlobals_NULL_APP_URL_GLOBALSValue

# Java field initializers run after the base initializer
proc initFieldsAppUrlGlobals(this: AppUrlGlobals) =
    this.path = StringUtil.getInstance().EMPTY_STRING
    discard

proc initAppUrlGlobals*(this: AppUrlGlobals) =
    initUrlGlobalsInterface(this)
    this.initFieldsAppUrlGlobals()

proc newAppUrlGlobals*(): AppUrlGlobals =
    result = AppUrlGlobals()
    initAppUrlGlobals(result)

method isTestingMode*(this: AppUrlGlobals): bool {.discardable.} =
        return false

method getWebappPath*(this: AppUrlGlobals): string {.discardable.} =
        return this.path

method setWebappPath*(this: AppUrlGlobals, path: string) {.base.} =
        this.path = path
        if (not (jEndsWith(this.path, "\\") or jEndsWith(this.path, "/"))):
            this.path = jstr(this.path) & jstr("\\")

method getTestHtmlPath*(this: AppUrlGlobals): string {.discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method getMainPath*(this: AppUrlGlobals): string {.discardable.} =
        return this.path

when declared(newAppUrlGlobalsHook0):
    newAppUrlGlobalsHook0 = proc (): UrlGlobalsInterface = newAppUrlGlobals()

