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
import java/io/InputStream as InputStreamModule
export InputStreamModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

#J2ME
type
    ResourceUtil* = ref object of JObject
        logUtil*: LogUtil

proc newResourceUtil*(): ResourceUtil
proc initResourceUtil*(this: ResourceUtil)
proc getInstance*(t: typedesc[ResourceUtil]): ResourceUtil {.discardable.}
method setLoadingPaths*(this: ResourceUtil, path: string, ext: string) {.base.}
method getResourceAsStream*(this: ResourceUtil, resource: string): InputStream {.base, discardable.}
method getResourceAsStreamAtStart*(this: ResourceUtil, resource: string, startIndex: int32): InputStream {.base, discardable.}
method addResource*(this: ResourceUtil, resource: string, value: int32) {.base.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var ResourceUtil_instanceValue: ResourceUtil
var ResourceUtil_instanceSet = false
proc instance*(t: typedesc[ResourceUtil]): ResourceUtil =
    if not ResourceUtil_instanceSet:
        ResourceUtil_instanceSet = true
        ResourceUtil_instanceValue = newResourceUtil()
    ResourceUtil_instanceValue
proc `instance=`*(t: typedesc[ResourceUtil], value: ResourceUtil) =
    ResourceUtil_instanceSet = true
    ResourceUtil_instanceValue = value

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

method getResourceAsStream*(this: ResourceUtil, resource: string): InputStream {.base, discardable.} =
        var inputStream: InputStream = jClassName(resource).getResourceAsStream(resource)
        if (jIsNil(inputStream)):
            inputStream = this.getResourceAsStreamAtStart(resource, 2)
            if (jIsNil(inputStream)):
                inputStream = this.getResourceAsStreamAtStart(resource, 1)
                if (jIsNil(inputStream)):
                    let stringMaker: StringMaker = newStringMaker()
                    let index: int32 = jLastIndexOf(resource, uint16(ord('/')))
                    var resourcePath: string = jSubstring(resource, index +% 1)
                    inputStream = jClassName(resource).getResourceAsStream(resourcePath)
                    if (jIsNil(inputStream)):
                        resourcePath = jSubstring(resource, index)
                        inputStream = jClassName(resource).getResourceAsStream(resourcePath)
                        if (jIsNil(inputStream)):
                            let RES: string = "res"
                            resourcePath = stringMaker.append(RES).append(jSubstring(resource, index)).toString()
                            inputStream = jClassName(resource).getResourceAsStream(resourcePath)
                            if (jIsNil(inputStream)):
                                stringMaker.delete(0, stringMaker.length())
                                resourcePath = stringMaker.append("/").append(RES).append(jSubstring(resource, index)).toString()
                                inputStream = jClassName(resource).getResourceAsStream(resourcePath)
                                let COLON: string = CommonSeps.getInstance().COLON
                                if (jIsNil(inputStream)):
                                    stringMaker.delete(0, stringMaker.length())
                                    resourcePath = stringMaker.append(RES).append(COLON).append(jSubstring(resource, index)).toString()
                                    inputStream = jClassName(resource).getResourceAsStream(resourcePath)
                                    if (jIsNil(inputStream)):
                                        stringMaker.delete(0, stringMaker.length())
                                        resourcePath = stringMaker.append(RES).append(COLON).append(jSubstring(resource, index +% 1)).toString()
                                        inputStream = jClassName(resource).getResourceAsStream(resourcePath)
                                        if (jIsNil(inputStream)):
                                            let RESOURCE_STRING: string = "resource"
                                            stringMaker.delete(0, stringMaker.length())
                                            resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(jSubstring(resource, index)).toString()
                                            inputStream = jClassName(resource).getResourceAsStream(resourcePath)
                                            if (jIsNil(inputStream)):
                                                stringMaker.delete(0, stringMaker.length())
                                                resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(jSubstring(resource, index +% 1)).toString()
                                                inputStream = jClassName(resource).getResourceAsStream(resourcePath)
                                                if (jIsNil(inputStream)):
                                                    stringMaker.delete(0, stringMaker.length())
                                                    raise newJException("Exception", stringMaker.append("Unable to obtain: ").append(resource).toString())
        return inputStream

method getResourceAsStreamAtStart*(this: ResourceUtil, resource: string, startIndex: int32): InputStream {.base, discardable.} =
        let stringMaker: StringMaker = newStringMaker()
        var index: int32 = jIndexOf(resource, CommonSeps.getInstance().COLON)
        let resourcePath: string = jSubstring(resource, index +% startIndex)
        let inputStream: InputStream = jClassName(resource).getResourceAsStream(resourcePath)
        if (not jIsNil(inputStream)):
            return inputStream
        return inputStream

method addResource*(this: ResourceUtil, resource: string, value: int32) {.base.} =
        discard

