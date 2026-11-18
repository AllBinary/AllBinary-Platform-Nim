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
# package org.allbinary.data.resource

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import java/lang/Thread as ThreadModule
export ThreadModule
import java/lang/ClassLoader as ClassLoaderModule
export ClassLoaderModule
import java/io/InputStream as InputStreamModule
export InputStreamModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

#J2SE - J2ME
type
    ResourceUtil* = ref object of JObject
        logUtil*: LogUtil

proc newResourceUtil*(): ResourceUtil
proc initResourceUtil*(this: ResourceUtil)
proc getInstance*(t: typedesc[ResourceUtil]): ResourceUtil {.discardable.}
method setLoadingPaths*(this: ResourceUtil, path: string, ext: string) {.base.}
method setClassLoader*(this: ResourceUtil, classLoader: ClassLoader) {.base.}
method getResourceAsStream*(this: ResourceUtil, resource: string): InputStream {.base, discardable.}
method getResourceAsStreamAtStart*(this: ResourceUtil, resource: string, startIndex: int32): InputStream {.base, discardable.}
method addResource*(this: ResourceUtil, resource: string, value: int32) {.base.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var ResourceUtil_classLoaderValue: JObject
var ResourceUtil_classLoaderSet = false
proc classLoader*(t: typedesc[ResourceUtil]): JObject =
    if not ResourceUtil_classLoaderSet:
        ResourceUtil_classLoaderSet = true
        ResourceUtil_classLoaderValue = NullUtil.getInstance().NULL_OBJECT
    ResourceUtil_classLoaderValue
proc `classLoader=`*(t: typedesc[ResourceUtil], value: JObject) =
    ResourceUtil_classLoaderSet = true
    ResourceUtil_classLoaderValue = value
var ResourceUtil_instanceValue: ResourceUtil
var ResourceUtil_instanceSet = false
proc instance*(t: typedesc[ResourceUtil]): ResourceUtil =
    if not ResourceUtil_instanceSet:
        ResourceUtil_instanceSet = true
        ResourceUtil_instanceValue = newResourceUtil()
    ResourceUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsResourceUtil(this: ResourceUtil) =
    this.logUtil = LogUtil.getInstance()
    discard

proc getInstance*(t: typedesc[ResourceUtil]): ResourceUtil {.discardable.} =
        return ResourceUtil.instance

proc initResourceUtil*(this: ResourceUtil) =
        this.initFieldsResourceUtil()
        discard

proc newResourceUtil*(): ResourceUtil =
    result = ResourceUtil()
    initResourceUtil(result)

method setLoadingPaths*(this: ResourceUtil, path: string, ext: string) {.base.} =
        this.logUtil.putF(CommonStrings.getInstance().NOT_IMPLEMENTED, this, "setLoadingPaths")

method setClassLoader*(this: ResourceUtil, classLoader: ClassLoader) {.base.} =
        this.logUtil.putF(newStringMaker().append("Resource Loader: ").append(jClassName(classLoader)).toString(), this, "setClassLoader")
        ResourceUtil.classLoader = classLoader

method getResourceAsStream*(this: ResourceUtil, resource: string): InputStream {.base, discardable.} =
        var inputStream: InputStream = this.getResourceAsStreamAtStart(resource, 2)
        if (jIsNil(inputStream)):
            inputStream = this.getResourceAsStreamAtStart(resource, 1)
            if (jIsNil(inputStream)):
                raise newJException("Exception", newStringMaker().append("Unable to obtain: ").append(resource).toString())
        return inputStream

method getResourceAsStreamAtStart*(this: ResourceUtil, resource: string, startIndex: int32): InputStream {.base, discardable.} =
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        let index: int32 = jIndexOf(resource, commonSeps.COLON)
        let resourcePath: string = jSubstring(resource, index +% startIndex)
        var inputStream: InputStream = jClassName(resource).getResourceAsStream(resourcePath)
        if (not jIsNil(inputStream)):
            return inputStream
        let classLoader: ClassLoader = ClassLoader(JObject(ResourceUtil.classLoader))
        inputStream = classLoader.getResourceAsStream(resourcePath)
        if (not jIsNil(inputStream)):
            return inputStream
        inputStream = JThread.currentThread().getContextClassLoader().getResourceAsStream(resourcePath)
        if (not jIsNil(inputStream)):
            return inputStream
        return inputStream

method addResource*(this: ResourceUtil, resource: string, value: int32) {.base.} =
        discard

