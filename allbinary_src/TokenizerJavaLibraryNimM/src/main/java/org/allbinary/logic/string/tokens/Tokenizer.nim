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
# package org.allbinary.logic.string.tokens

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    Tokenizer* = ref object of JObject
        sep*: string
        endSep*: string

proc newTokenizer*(sep: string): Tokenizer
proc initTokenizer*(this: Tokenizer, sep: string)
method setSep*(this: Tokenizer, sep: string) {.base.}
method setEndSep*(this: Tokenizer, endSep: string) {.base.}
method getInsideSep*(this: Tokenizer, string: string): BasicArrayList {.base, discardable.}
method getTokensFromString*(this: Tokenizer, string: string, tokenVector: BasicArrayList): BasicArrayList {.base, discardable.}
method getTokens*(this: Tokenizer, stringVector: BasicArrayList): ABHashtable {.base, discardable.}
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsTokenizer(this: Tokenizer) =
    
    this.endSep = StringUtil.getInstance().EMPTY_STRING
    discard

proc initTokenizer*(this: Tokenizer, sep: string) =
        this.initFieldsTokenizer()
        if TsUtil.getInstance().compareTo(sep, StringUtil.getInstance().EMPTY_STRING) == 0:
            raise newJException("Exception", "Sep provided is not valid")
        this.sep = sep

proc newTokenizer*(sep: string): Tokenizer =
    result = Tokenizer()
    initTokenizer(result, sep)

method setSep*(this: Tokenizer, sep: string) {.base.} =
        this.sep = sep

method setEndSep*(this: Tokenizer, endSep: string) {.base.} =
        this.endSep = endSep

method getInsideSep*(this: Tokenizer, string: string): BasicArrayList {.base, discardable.} =
        let tokenList: BasicArrayList = newBasicArrayListD()
        var index: int32 = 0
        var size: int32 = jLength(string)
        while index < size:
            index = jIndexOf(string, this.sep, index)
            if index != -1:
                var `end`: int32 = jIndexOf(string, this.endSep, index +% jLength(this.sep))
                if `end` != -1:
                    tokenList.add(jSubstring(string, index +% jLength(this.sep), `end` -% (jLength(this.endSep) -% 1)))
                    index = `end` +% jLength(this.endSep)
                else:
                    discard
            else:
                break
        return tokenList

method getTokensFromString*(this: Tokenizer, string: string, tokenVector: BasicArrayList): BasicArrayList {.base, discardable.} =
        var index: int32 = 0
        var `end`: int32 = 0
        while index < jLength(string):
            `end` = jIndexOf(string, this.sep, index)
            if `end` != -1:
                tokenVector.add(jSubstring(string, index, `end`))
                index = `end` +% jLength(this.sep)
            else:
                tokenVector.add(jSubstring(string, index, jLength(string)))
                break
        return tokenVector

method getTokens*(this: Tokenizer, stringVector: BasicArrayList): ABHashtable {.base, discardable.} =
        var tokenHashtable: ABHashtable = StdUtil.getInstance().createHashtable()
        var string: string = StringUtil.getInstance().EMPTY_STRING
        var `end`: int32 = 0
        var size: int32 = stringVector.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                string = jstr(stringVector.objectArray[index])
                `end` = jIndexOf(string, this.sep)
                if `end` >= 0:
                    tokenHashtable.put(jSubstring(string, 0, `end`), jSubstring(string, `end` +% 1, jLength(string)))
        return tokenHashtable

