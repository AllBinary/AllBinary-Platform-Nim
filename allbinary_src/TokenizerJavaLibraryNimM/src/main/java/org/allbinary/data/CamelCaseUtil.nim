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
# package org.allbinary.data

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Character as CharacterModule
export CharacterModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

type
    CamelCaseUtil* = ref object of JObject
        commonSeps*: CommonSeps

proc newCamelCaseUtil*(): CamelCaseUtil
proc getInstance*(t: typedesc[CamelCaseUtil]): CamelCaseUtil {.discardable.}
method getAsCamelCase*(this: CamelCaseUtil, string: string, stringBuilder: StringMaker): string {.base, discardable.}
import org/allbinary/logic/string/StringValidationUtil as StringValidationUtilModule
export StringValidationUtilModule
import org/allbinary/logic/string/tokens/Tokenizer as TokenizerModule
export TokenizerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var CamelCaseUtil_instanceValue: CamelCaseUtil
var CamelCaseUtil_instanceSet = false
proc instance*(t: typedesc[CamelCaseUtil]): CamelCaseUtil =
    if not CamelCaseUtil_instanceSet:
        CamelCaseUtil_instanceSet = true
        CamelCaseUtil_instanceValue = newCamelCaseUtil()
    CamelCaseUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCamelCaseUtil(this: CamelCaseUtil) =
    this.commonSeps = CommonSeps.getInstance()
    discard

proc initCamelCaseUtil*(this: CamelCaseUtil) =
    this.initFieldsCamelCaseUtil()

proc newCamelCaseUtil*(): CamelCaseUtil =
    result = CamelCaseUtil()
    initCamelCaseUtil(result)

proc getInstance*(t: typedesc[CamelCaseUtil]): CamelCaseUtil {.discardable.} =
        return CamelCaseUtil.instance

method getAsCamelCase*(this: CamelCaseUtil, string: string, stringBuilder: StringMaker): string {.base, discardable.} =
        let stringValidationUtil: StringValidationUtil = StringValidationUtil.getInstance()
        stringBuilder.delete(0, stringBuilder.length())
        let list: BasicArrayList = newBasicArrayListD()
        let tokenizer: Tokenizer = newTokenizer(this.commonSeps.UNDERSCORE)
        tokenizer.getTokensFromString(string, list)
        let size: int32 = list.size()
        var word: string = ""
        block:
            var i: int32 = 0
            while i < size:
                defer: i = i +% 1
                word = jstr(list.get(i))
                word = (if stringValidationUtil.isEmpty(word): word else: newStringMaker().appendchar(Character.toUpperCase(jCharAt(word, 0))).append(jToLowerCase(jSubstring(word, 1))).toString())
                stringBuilder.append(word)
        return stringBuilder.toString()

