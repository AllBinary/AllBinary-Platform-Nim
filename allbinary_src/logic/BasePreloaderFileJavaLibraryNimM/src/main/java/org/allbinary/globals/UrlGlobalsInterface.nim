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

type
    UrlGlobalsInterface* = ref object of JObject

proc newUrlGlobalsInterface*(): UrlGlobalsInterface
method getMainPath*(this: UrlGlobalsInterface): string {.base, discardable.}
method getTestHtmlPath*(this: UrlGlobalsInterface): string {.base, discardable.}
method getWebappPath*(this: UrlGlobalsInterface): string {.base, discardable.}
method isTestingMode*(this: UrlGlobalsInterface): bool {.base, discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


proc initUrlGlobalsInterface*(this: UrlGlobalsInterface) =
    discard

proc newUrlGlobalsInterface*(): UrlGlobalsInterface =
    result = UrlGlobalsInterface()
    initUrlGlobalsInterface(result)

method getMainPath*(this: UrlGlobalsInterface): string {.base, discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method getTestHtmlPath*(this: UrlGlobalsInterface): string {.base, discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method getWebappPath*(this: UrlGlobalsInterface): string {.base, discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method isTestingMode*(this: UrlGlobalsInterface): bool {.base, discardable.} =
        return false

