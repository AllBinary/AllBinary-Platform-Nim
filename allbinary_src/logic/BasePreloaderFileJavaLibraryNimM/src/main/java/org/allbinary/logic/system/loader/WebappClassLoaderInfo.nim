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
# package org.allbinary.logic.system.loader

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/ClassLoader as ClassLoaderModule
export ClassLoaderModule

type
    WebappClassLoaderInfo* = ref object of JObject

proc newWebappClassLoaderInfo*(): WebappClassLoaderInfo
proc initWebappClassLoaderInfo*(this: WebappClassLoaderInfo)
proc setLoader*(t: typedesc[WebappClassLoaderInfo], classLoader: ClassLoader)
proc getLoader*(t: typedesc[WebappClassLoaderInfo]): ClassLoader {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var WebappClassLoaderInfo_classLoaderValue: JObject
var WebappClassLoaderInfo_classLoaderSet = false
proc classLoader*(t: typedesc[WebappClassLoaderInfo]): JObject =
    if not WebappClassLoaderInfo_classLoaderSet:
        WebappClassLoaderInfo_classLoaderSet = true
        WebappClassLoaderInfo_classLoaderValue = NullUtil.getInstance().NULL_OBJECT
    WebappClassLoaderInfo_classLoaderValue
proc `classLoader=`*(t: typedesc[WebappClassLoaderInfo], value: JObject) =
    WebappClassLoaderInfo_classLoaderSet = true
    WebappClassLoaderInfo_classLoaderValue = value

proc initWebappClassLoaderInfo*(this: WebappClassLoaderInfo) =
        discard
        discard

proc newWebappClassLoaderInfo*(): WebappClassLoaderInfo =
    result = WebappClassLoaderInfo()
    initWebappClassLoaderInfo(result)

proc setLoader*(t: typedesc[WebappClassLoaderInfo], classLoader: ClassLoader) =
        WebappClassLoaderInfo.classLoader = classLoader

proc getLoader*(t: typedesc[WebappClassLoaderInfo]): ClassLoader {.discardable.} =
        return ClassLoader(JObject(WebappClassLoaderInfo.classLoader))

