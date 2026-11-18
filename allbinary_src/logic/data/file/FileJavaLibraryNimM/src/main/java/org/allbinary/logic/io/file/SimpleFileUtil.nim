#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.logic.io.file

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/ByteArrayOutputStream as ByteArrayOutputStreamModule
export ByteArrayOutputStreamModule
import java/io/InputStream as InputStreamModule
export InputStreamModule
import java/io/OutputStream as OutputStreamModule
export OutputStreamModule
import java/io/Reader as ReaderModule
export ReaderModule
import java/io/Writer as WriterModule
export WriterModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/io/StreamUtil as StreamUtilModule
export StreamUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    SimpleFileUtil* = ref object of JObject
        logUtil*: LogUtil
        NULL_WRITER*: Writer
        NULL_READER*: Reader
        commonStrings*: CommonStrings
        nullUtil*: NullUtil
        streamUtil*: StreamUtil

proc newSimpleFileUtil*(): SimpleFileUtil
proc getInstance*(t: typedesc[SimpleFileUtil]): SimpleFileUtil {.discardable.}
proc nullOutputStream*(t: typedesc[SimpleFileUtil]): OutputStream {.discardable.}
proc nullWriter*(t: typedesc[SimpleFileUtil]): Writer {.discardable.}
proc nullReader*(t: typedesc[SimpleFileUtil]): Reader {.discardable.}
method loadFileAsList*(this: SimpleFileUtil, inputStream: InputStream, max: int32, byteArray1: JArray[int8]): BasicArrayList {.base, discardable.}
method loadFileAsListReturnLine*(this: SimpleFileUtil, inputStream: InputStream, max: int32, byteArray1: JArray[int8], includeReturnLine: int32): BasicArrayList {.base, discardable.}
method createStringFromArrayOfStrings*(this: SimpleFileUtil, stringArray: JArray[string]): string {.base, discardable.}
import org/allbinary/logic/io/NullOutputStream as NullOutputStreamModule
export NullOutputStreamModule
import org/allbinary/logic/io/NullReader as NullReaderModule
export NullReaderModule
import org/allbinary/logic/io/NullWriter as NullWriterModule
export NullWriterModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var SimpleFileUtil_instanceValue: SimpleFileUtil
var SimpleFileUtil_instanceSet = false
proc instance*(t: typedesc[SimpleFileUtil]): SimpleFileUtil =
    if not SimpleFileUtil_instanceSet:
        SimpleFileUtil_instanceSet = true
        SimpleFileUtil_instanceValue = newSimpleFileUtil()
    SimpleFileUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsSimpleFileUtil(this: SimpleFileUtil) =
    this.logUtil = LogUtil.getInstance()
    this.NULL_WRITER = SimpleFileUtil.nullWriter()
    this.NULL_READER = SimpleFileUtil.nullReader()
    this.commonStrings = CommonStrings.getInstance()
    this.nullUtil = NullUtil.getInstance()
    this.streamUtil = StreamUtil.getInstance()
    discard

proc initSimpleFileUtil*(this: SimpleFileUtil) =
    this.initFieldsSimpleFileUtil()

proc newSimpleFileUtil*(): SimpleFileUtil =
    result = SimpleFileUtil()
    initSimpleFileUtil(result)

proc getInstance*(t: typedesc[SimpleFileUtil]): SimpleFileUtil {.discardable.} =
        return SimpleFileUtil.instance

proc nullOutputStream*(t: typedesc[SimpleFileUtil]): OutputStream {.discardable.} =
        return NullOutputStream.NULL_OUTPUT_STREAMStatic

proc nullWriter*(t: typedesc[SimpleFileUtil]): Writer {.discardable.} =
        return NullWriter.NULL_WRITERStatic

proc nullReader*(t: typedesc[SimpleFileUtil]): Reader {.discardable.} =
        return NullReader.NULL_READERStatic

method loadFileAsList*(this: SimpleFileUtil, inputStream: InputStream, max: int32, byteArray1: JArray[int8]): BasicArrayList {.base, discardable.} =
        return this.loadFileAsListReturnLine(inputStream, max, byteArray1, 0)

method loadFileAsListReturnLine*(this: SimpleFileUtil, inputStream: InputStream, max: int32, byteArray1: JArray[int8], includeReturnLine: int32): BasicArrayList {.base, discardable.} =
        let stringList: BasicArrayList = newBasicArrayListD()
        if (jIsNil(inputStream)):
            return stringList
        var byteArray: JArray[int8] = this.nullUtil.NULL_BYTE_ARRAY
        try:
            let outputStream2: ByteArrayOutputStream = newByteArrayOutputStream(max)
            byteArray = this.streamUtil.getByteArray(inputStream, outputStream2, byteArray1)
            this.streamUtil.close(inputStream)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.streamUtil.close(inputStream)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e)
        if (jIsNil(byteArray)):
            return stringList
        let size: int32 = byteArray.length
        var index: int32 = 0
        var startIndex: int32 = 0
        var returnLine: int32 = 0
        while index < size:
            startIndex = index
            while index < size -% 1 and byteArray[index] != jToInt8(uint16(ord('\n'))):
                index = index +% 1
            if includeReturnLine == 0:
                if index > 0 and byteArray[index -% 1] == jToInt8(uint16(ord('\r'))):
                    returnLine = 1
                else:
                    returnLine = 0
            let s: string = jFromChars(byteArray, startIndex, (index +% includeReturnLine -% returnLine -% startIndex))
            stringList.add(s)
            index = index +% 1
        return stringList

method createStringFromArrayOfStrings*(this: SimpleFileUtil, stringArray: JArray[string]): string {.base, discardable.} =
        let stringMaker: StringMaker = newStringMaker()
        let size: int32 = stringArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                stringMaker.append(stringArray[index])
        return stringMaker.toString()

