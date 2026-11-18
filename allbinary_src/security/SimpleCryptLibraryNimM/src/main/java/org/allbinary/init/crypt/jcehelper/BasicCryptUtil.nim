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
# package org.allbinary.init.crypt.jcehelper

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/ByteArrayInputStream as ByteArrayInputStreamModule
export ByteArrayInputStreamModule
import java/io/ByteArrayOutputStream as ByteArrayOutputStreamModule
export ByteArrayOutputStreamModule
import java/io/InputStream as InputStreamModule
export InputStreamModule
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/init/crypt/jcehelper/CryptInterface as CryptInterfaceModule
export CryptInterfaceModule

type
    BasicCryptUtil* = ref object of JObject
        logUtil*: LogUtil
        tsUtil*: TsUtil
        XML_START*: string

proc newBasicCryptUtil*(): BasicCryptUtil
proc getInstance*(t: typedesc[BasicCryptUtil]): BasicCryptUtil {.discardable.}
method getDecryptedInputStream*(this: BasicCryptUtil, inputStream: InputStream, cryptInterface: CryptInterface): InputStream {.base, discardable.}

var BasicCryptUtil_instanceValue: BasicCryptUtil
var BasicCryptUtil_instanceSet = false
proc instance*(t: typedesc[BasicCryptUtil]): BasicCryptUtil =
    if not BasicCryptUtil_instanceSet:
        BasicCryptUtil_instanceSet = true
        BasicCryptUtil_instanceValue = newBasicCryptUtil()
    BasicCryptUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsBasicCryptUtil(this: BasicCryptUtil) =
    this.logUtil = LogUtil.getInstance()
    this.tsUtil = TsUtil.getInstance()
    this.XML_START = "<?xml"
    discard

proc initBasicCryptUtil*(this: BasicCryptUtil) =
    this.initFieldsBasicCryptUtil()

proc newBasicCryptUtil*(): BasicCryptUtil =
    result = BasicCryptUtil()
    initBasicCryptUtil(result)

proc getInstance*(t: typedesc[BasicCryptUtil]): BasicCryptUtil {.discardable.} =
        return BasicCryptUtil.instance

method getDecryptedInputStream*(this: BasicCryptUtil, inputStream: InputStream, cryptInterface: CryptInterface): InputStream {.base, discardable.} =
        var buffer: ByteArrayOutputStream = newByteArrayOutputStream()
        var ch: int32 = 0
        while true:
            ch = inputStream.read()
            if ch == -1:
                break
            buffer.write(ch)
        var decrypted: JArray[int8] = cryptInterface.decrypt(buffer.toByteArray())
        var decryptedString: string = jNewString(decrypted)
        var index: int32 = jIndexOf(decryptedString, this.XML_START)
        if index > 0:
            decryptedString = jSubstring(decryptedString, index)
        return newByteArrayInputStream(this.tsUtil.getByteArray(decryptedString))

