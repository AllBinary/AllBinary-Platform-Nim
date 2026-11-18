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
# package org.allbinary.logic.io

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/ByteArrayOutputStream as ByteArrayOutputStreamModule
export ByteArrayOutputStreamModule
import java/io/Closeable as CloseableModule
export CloseableModule
import java/io/InputStream as InputStreamModule
export InputStreamModule
import java/io/OutputStream as OutputStreamModule
export OutputStreamModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    StreamUtil* = ref object of JObject
        logUtil*: LogUtil

proc newStreamUtil*(): StreamUtil
proc initStreamUtil*(this: StreamUtil)
proc getInstance*(t: typedesc[StreamUtil]): StreamUtil {.discardable.}
method get*(this: StreamUtil, inputStream: InputStream, outputStream: OutputStream, buffer: JArray[int8]): OutputStream {.base, discardable.}
method getByteArray*(this: StreamUtil, inputStream: InputStream, outputStream2: ByteArrayOutputStream, byteArray: JArray[int8]): JArray[int8] {.base, discardable.}
method close*(this: StreamUtil, closeable: Closeable): bool {.base, discardable.}
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var StreamUtil_instanceValue: StreamUtil
var StreamUtil_instanceSet = false
proc instance*(t: typedesc[StreamUtil]): StreamUtil =
    if not StreamUtil_instanceSet:
        StreamUtil_instanceSet = true
        StreamUtil_instanceValue = newStreamUtil()
    StreamUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsStreamUtil(this: StreamUtil) =
    this.logUtil = LogUtil.getInstance()
    discard

proc getInstance*(t: typedesc[StreamUtil]): StreamUtil {.discardable.} =
        return StreamUtil.instance

proc initStreamUtil*(this: StreamUtil) =
        this.initFieldsStreamUtil()
        discard

proc newStreamUtil*(): StreamUtil =
    result = StreamUtil()
    initStreamUtil(result)

method get*(this: StreamUtil, inputStream: InputStream, outputStream: OutputStream, buffer: JArray[int8]): OutputStream {.base, discardable.} =
        var len: int32 = 0
        while true:
            len = inputStream.read(buffer, 0, buffer.length)
            if len != -1:
                discard
            else:
                break
            outputStream.write(buffer, 0, len)
        return outputStream

method getByteArray*(this: StreamUtil, inputStream: InputStream, outputStream2: ByteArrayOutputStream, byteArray: JArray[int8]): JArray[int8] {.base, discardable.} =
        let outputStream: ByteArrayOutputStream = outputStream2
        try:
            this.get(inputStream, outputStream, byteArray)
            return outputStream.toByteArray()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            raise e
        finally:
            this.close(outputStream)

method close*(this: StreamUtil, closeable: Closeable): bool {.base, discardable.} =
        try:
            if (not jIsNil(closeable)):
                closeable.close()
            return true
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CLOSE, e)
            return false

