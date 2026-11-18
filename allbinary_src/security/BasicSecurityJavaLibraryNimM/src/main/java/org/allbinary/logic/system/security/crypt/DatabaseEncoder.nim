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
# package org.allbinary.logic.system.security.crypt

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Byte as ByteModule
export ByteModule

type
    DatabaseEncoder* = ref object of JObject

proc newDatabaseEncoder*(): DatabaseEncoder
proc initDatabaseEncoder*(this: DatabaseEncoder)
proc encode*(t: typedesc[DatabaseEncoder], value: JArray[int8]): string {.discardable.}
proc decode*(t: typedesc[DatabaseEncoder], value: string): JArray[int8] {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/string/tokens/Tokenizer as TokenizerModule
export TokenizerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


proc initDatabaseEncoder*(this: DatabaseEncoder) =
        discard
        discard

proc newDatabaseEncoder*(): DatabaseEncoder =
    result = DatabaseEncoder()
    initDatabaseEncoder(result)

proc encode*(t: typedesc[DatabaseEncoder], value: JArray[int8]): string {.discardable.} =
        try:
            var array: JArray[int8] = value
            let stringBuffer: StringMaker = newStringMaker()
            block:
                var index: int32 = 0
                while index < array.length:
                    defer: index = index +% 1
                    stringBuffer.append(array[index].toString())
                    if index < array.length -% 1:
                        stringBuffer.append(CommonSeps.getInstance().SPACE)
            return stringBuffer.toString()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e)
            return StringUtil.getInstance().EMPTY_STRING

proc decode*(t: typedesc[DatabaseEncoder], value: string): JArray[int8] {.discardable.} =
        try:
            let tokenizer: Tokenizer = newTokenizer(CommonSeps.getInstance().SPACE)
            let vector: BasicArrayList = tokenizer.getTokensFromString(value, newBasicArrayListD())
            let size: int32 = vector.size()
            let decode: JArray[int8] = newJArray[int8](size, default(int8))
            var byteOfData: string = ""
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    byteOfData = jstr(vector.objectArray[index])
                    decode[index] = Byte.parseByte(byteOfData)
            return decode
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            PreLogUtil.putSE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY

