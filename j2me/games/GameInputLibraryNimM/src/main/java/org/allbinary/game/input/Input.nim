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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java

type
    Input* = ref object of JObject
        id*: int32
        name*: string

proc newInput*(id: int32, name: string): Input
proc initInput*(this: Input, id: int32, name: string)
method getId*(this: Input): int32 {.base, discardable.}
method setId*(this: Input, key: int32) {.base.}
method getName*(this: Input): string {.base, discardable.}
method setName*(this: Input, keyName: string) {.base.}
method toString*(this: Input): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsInput(this: Input) =
    this.id = 0
    this.name = StringUtil.getInstance().EMPTY_STRING
    discard

proc initInput*(this: Input, id: int32, name: string) =
        this.initFieldsInput()
        this.setId(id)
        this.setName(name)

proc newInput*(id: int32, name: string): Input =
    result = Input()
    initInput(result, id, name)

method getId*(this: Input): int32 {.base, discardable.} =
        return this.id

method setId*(this: Input, key: int32) {.base.} =
        this.id = key

method getName*(this: Input): string {.base, discardable.} =
        return this.name

method setName*(this: Input, keyName: string) {.base.} =
        this.name = keyName

method toString*(this: Input): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("Name: ")
        stringBuffer.append(this.getName())
        stringBuffer.append(" Id: ")
        stringBuffer.appendint(this.getId())
        return stringBuffer.toString()

