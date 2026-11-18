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
# package org.allbinary.logic.system.security.crypt.jcehelper

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/init/crypt/jcehelper/CryptInterface as CryptInterfaceModule
export CryptInterfaceModule
import org/allbinary/logic/java/byteutil/ByteUtil as ByteUtilModule
export ByteUtilModule

type
    BasicCrypt* = ref object of CryptInterface
        byteUtil*: ByteUtil
        key*: JArray[int8]

proc newBasicCrypt*(keyAsString: string): BasicCrypt
proc initBasicCrypt*(this: BasicCrypt, keyAsString: string)
method encrypt*(this: BasicCrypt, array: JArray[int8]): JArray[int8] {.discardable.}
method decrypt*(this: BasicCrypt, array: JArray[int8]): JArray[int8] {.discardable.}
method mutilate*(this: BasicCrypt, array: JArray[int8]): JArray[int8] {.base, discardable.}
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsBasicCrypt(this: BasicCrypt) =
    this.byteUtil = ByteUtil.getInstance()
    
    discard

proc initBasicCrypt*(this: BasicCrypt, keyAsString: string) =
        this.initFieldsBasicCrypt()
        var key: JArray[int8] = NullUtil.getInstance().NULL_BYTE_ARRAY
        try:
            key = TsUtil.getInstance().getByteArray(keyAsString)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, "AbCrypt(alg,key)", e)
        this.key = key

proc newBasicCrypt*(keyAsString: string): BasicCrypt =
    result = BasicCrypt()
    initBasicCrypt(result, keyAsString)

method encrypt*(this: BasicCrypt, array: JArray[int8]): JArray[int8] {.discardable.} =
        try:
            return this.mutilate(array)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.putOE("Encrypt Failed", this, "encrypt", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY

method decrypt*(this: BasicCrypt, array: JArray[int8]): JArray[int8] {.discardable.} =
        try:
            return this.mutilate(array)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.putOE("decrypt Failed", this, "decrypt", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY

method mutilate*(this: BasicCrypt, array: JArray[int8]): JArray[int8] {.base, discardable.} =
        var array = array
        var value: int8 = 0
        block:
            var index: int32 = 0
            while index < this.key.length:
                defer: index = index +% 1
                value = this.key[index]
                array = this.byteUtil.`xor`(array, value)
        return array

