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
# package org.allbinary.string

{.warning[UnusedImport]: off.}
import allbinary_java

type
    CommonSeps* = ref object of JObject
        NEW_LINE*: string
        SEMICOLON*: string
        EQUALS*: string
        SPACE*: string
        COMMA*: string
        COLON*: string
        PERIOD*: string
        UNDERSCORE*: string
        COLON_SEP*: string
        COMMA_SEP*: string
        PARENTHESIS_OPEN*: string
        PARENTHESIS_CLOSE*: string
        BRACE_OPEN*: string
        BRACE_CLOSE*: string
        BRACKET_OPEN*: string
        BRACKET_CLOSE*: string
        DASH*: string
        PERCENT*: string
        AMPERSAND*: string
        FORWARD_SLASH*: string
        BACK_SLASH*: string
        QUESTION*: string
        QUOTE*: string
        QUOTE_END*: string
        COMMENT*: string
        INDENT*: string

proc newCommonSeps*(): CommonSeps
proc getInstance*(t: typedesc[CommonSeps]): CommonSeps {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

var CommonSeps_instanceValue: CommonSeps
var CommonSeps_instanceSet = false
proc instance*(t: typedesc[CommonSeps]): CommonSeps =
    if not CommonSeps_instanceSet:
        CommonSeps_instanceSet = true
        CommonSeps_instanceValue = newCommonSeps()
    CommonSeps_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCommonSeps(this: CommonSeps) =
    this.NEW_LINE = "\n"
    this.SEMICOLON = ";"
    this.EQUALS = "="
    this.SPACE = " "
    this.COMMA = ","
    this.COLON = ":"
    this.PERIOD = "."
    this.UNDERSCORE = "_"
    this.COLON_SEP = newStringMaker().append(this.COLON).append(this.SPACE).toString()
    this.COMMA_SEP = newStringMaker().append(this.COMMA).append(this.SPACE).toString()
    this.PARENTHESIS_OPEN = "("
    this.PARENTHESIS_CLOSE = ")"
    this.BRACE_OPEN = "{"
    this.BRACE_CLOSE = "}"
    this.BRACKET_OPEN = "["
    this.BRACKET_CLOSE = "]"
    this.DASH = "-"
    this.PERCENT = "%"
    this.AMPERSAND = "&"
    this.FORWARD_SLASH = "/"
    this.BACK_SLASH = "\\"
    this.QUESTION = "?"
    this.QUOTE = "\""
    this.QUOTE_END = "\","
    this.COMMENT = "//"
    this.INDENT = "    "
    discard

proc initCommonSeps*(this: CommonSeps) =
    this.initFieldsCommonSeps()

proc newCommonSeps*(): CommonSeps =
    result = CommonSeps()
    initCommonSeps(result)

proc getInstance*(t: typedesc[CommonSeps]): CommonSeps {.discardable.} =
        return CommonSeps.instance

