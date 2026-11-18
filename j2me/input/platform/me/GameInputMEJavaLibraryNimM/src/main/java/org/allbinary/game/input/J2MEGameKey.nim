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
import org/allbinary/game/input/Input as InputModule
export InputModule

type
    J2MEGameKey* = ref object of Input

proc newJ2MEGameKey*(key: int32, keyName: string): J2MEGameKey
proc initJ2MEGameKey*(this: J2MEGameKey, key: int32, keyName: string)
method toString*(this: J2MEGameKey): string {.discardable.}
proc getString*(t: typedesc[J2MEGameKey], keyCode: int32): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule


proc initJ2MEGameKey*(this: J2MEGameKey, key: int32, keyName: string) =
        initInput(this, key, keyName)
        var id: int32 = this.getId()
        if id >= 0:
            let inputFactory: InputFactory = InputFactory.getInstance()
            inputFactory.add(id, this)

proc newJ2MEGameKey*(key: int32, keyName: string): J2MEGameKey =
    result = J2MEGameKey()
    initJ2MEGameKey(result, key, keyName)

method toString*(this: J2MEGameKey): string {.discardable.} =
        return newStringMaker().append("J2MEGameKey: ").append(procCall Input(this).toString()).toString()

proc getString*(t: typedesc[J2MEGameKey], keyCode: int32): string {.discardable.} =
        var input: Input = InputFactory.getInstance().getInstanceById(keyCode)
        if (not jIsNil(input)):
            return input.getName()
        else:
            return StringUtil.getInstance().EMPTY_STRING

when declared(newJ2MEGameKeyHook2):
    newJ2MEGameKeyHook2 = proc (key: int32, keyName: string): Input = newJ2MEGameKey(key, keyName)

