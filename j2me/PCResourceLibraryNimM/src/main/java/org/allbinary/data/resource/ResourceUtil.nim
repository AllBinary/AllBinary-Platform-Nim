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
import java/lang/ClassLoader as ClassLoaderModule
export ClassLoaderModule
import java/io/ByteArrayInputStream as ByteArrayInputStreamModule
export ByteArrayInputStreamModule
import java/io/ByteArrayOutputStream as ByteArrayOutputStreamModule
export ByteArrayOutputStreamModule
import java/io/FileInputStream as FileInputStreamModule
export FileInputStreamModule
import java/io/InputStream as InputStreamModule
export InputStreamModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

#J2SE - PC
type
    ResourceUtil* = ref object of JObject
        logUtil*: LogUtil
        path*: string
        ext*: string

proc newResourceUtil*(): ResourceUtil
proc initResourceUtil*(this: ResourceUtil)
proc getInstance*(t: typedesc[ResourceUtil]): ResourceUtil {.discardable.}
method setLoadingPaths*(this: ResourceUtil, path: string, ext: string) {.base.}
method setClassLoader*(this: ResourceUtil, classLoader: ClassLoader) {.base.}
method getResourceAsStream*(this: ResourceUtil, resource: string): InputStream {.base, discardable.}
method getResourceAsStreamAtStart*(this: ResourceUtil, resource: string, startIndex: int32): InputStream {.base, discardable.}
method addResource*(this: ResourceUtil, resource: string, value: int32) {.base.}
import org/allbinary/logic/io/StreamUtil as StreamUtilModule
export StreamUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

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
    this.path = StringUtil.getInstance().EMPTY_STRING
    this.ext = StringUtil.getInstance().EMPTY_STRING
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
        this.path = path
        this.ext = ext

method setClassLoader*(this: ResourceUtil, classLoader: ClassLoader) {.base.} =
        discard

method getResourceAsStream*(this: ResourceUtil, resource: string): InputStream {.base, discardable.} =
        var inputStream: InputStream = this.getResourceAsStreamAtStart(resource, 2)
        if (jIsNil(inputStream)):
            inputStream = this.getResourceAsStreamAtStart(resource, 1)
            if (jIsNil(inputStream)):
                raise newJException("Exception", newStringMaker().append("Unable to obtain: ").append(resource).toString())
        return inputStream

method getResourceAsStreamAtStart*(this: ResourceUtil, resource: string, startIndex: int32): InputStream {.base, discardable.} =
        var inputStream: InputStream = newFileInputStream(newStringMaker().append(this.path).append(resource).append(this.ext).toString())
        if (not jIsNil(inputStream)):
            let byteArray: JArray[int8] = newJArray[int8](inputStream.available(), default(int8))
            StreamUtil.getInstance().getByteArray(inputStream, newByteArrayOutputStream(), byteArray)
            return newByteArrayInputStream(byteArray)
        return inputStream

method addResource*(this: ResourceUtil, resource: string, value: int32) {.base.} =
        discard

