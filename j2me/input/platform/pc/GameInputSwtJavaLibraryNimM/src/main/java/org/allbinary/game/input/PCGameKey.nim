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
    PCGameKey* = ref object of Input

proc newPCGameKey*(keyCode: int32, name: string): PCGameKey
proc initPCGameKey*(this: PCGameKey, keyCode: int32, name: string)
method toString*(this: PCGameKey): string {.discardable.}
proc getString*(t: typedesc[PCGameKey], keyCode: int32): string {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule


proc initPCGameKey*(this: PCGameKey, keyCode: int32, name: string) =
        initInput(this, keyCode, name)
        var id: int32 = this.getId()
        if id >= 0:
            InputFactory.getInstance().add(id, this)

proc newPCGameKey*(keyCode: int32, name: string): PCGameKey =
    result = PCGameKey()
    initPCGameKey(result, keyCode, name)

method toString*(this: PCGameKey): string {.discardable.} =
        return jstr("PCGameKey: ") & jstr(procCall Input(this).toString())

proc getString*(t: typedesc[PCGameKey], keyCode: int32): string {.discardable.} =
        var input: Input = InputFactory.getInstance().getInstanceById(keyCode)
        if (not jIsNil(input)):
            return input.getName()
        else:
            return StringUtil.getInstance().EMPTY_STRING

when declared(newPCGameKeyHook2):
    newPCGameKeyHook2 = proc (keyCode: int32, name: string): Input = newPCGameKey(keyCode, name)

