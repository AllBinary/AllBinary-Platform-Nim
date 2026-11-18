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
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/input/PlayerGameInput as PlayerGameInputModule
export PlayerGameInputModule

type
    NoPlayerGameInput* = ref object of PlayerGameInput

proc newNoPlayerGameInput*(): NoPlayerGameInput
proc initNoPlayerGameInput*(this: NoPlayerGameInput)
proc getInstance*(t: typedesc[NoPlayerGameInput]): NoPlayerGameInput {.discardable.}
method onDownGameKeyEvent*(this: NoPlayerGameInput, gameKeyEvent: GameKeyEvent)
method onUpGameKeyEvent*(this: NoPlayerGameInput, gameKeyEvent: GameKeyEvent)
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var NoPlayerGameInput_SINGLETONValue: NoPlayerGameInput
var NoPlayerGameInput_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NoPlayerGameInput]): NoPlayerGameInput =
    if not NoPlayerGameInput_SINGLETONSet:
        NoPlayerGameInput_SINGLETONSet = true
        NoPlayerGameInput_SINGLETONValue = newNoPlayerGameInput()
    NoPlayerGameInput_SINGLETONValue

proc getInstance*(t: typedesc[NoPlayerGameInput]): NoPlayerGameInput {.discardable.} =
        return NoPlayerGameInput.SINGLETON

proc initNoPlayerGameInput*(this: NoPlayerGameInput) =
        initPlayerGameInput(this, newBasicArrayListD(), newBasicArrayListD(), -1)

proc newNoPlayerGameInput*(): NoPlayerGameInput =
    result = NoPlayerGameInput()
    initNoPlayerGameInput(result)

method onDownGameKeyEvent*(this: NoPlayerGameInput, gameKeyEvent: GameKeyEvent) =
        discard

method onUpGameKeyEvent*(this: NoPlayerGameInput, gameKeyEvent: GameKeyEvent) =
        discard

when declared(newNoPlayerGameInputHook0):
    newNoPlayerGameInputHook0 = proc (): PlayerGameInput = newNoPlayerGameInput()

