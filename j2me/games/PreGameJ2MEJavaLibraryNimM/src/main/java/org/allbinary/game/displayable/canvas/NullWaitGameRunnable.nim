#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/displayable/canvas/GameRunnable as GameRunnableModule
export GameRunnableModule

type
    NullWaitGameRunnable* = ref object of GameRunnable

proc newNullWaitGameRunnable*(): NullWaitGameRunnable
proc getInstance*(t: typedesc[NullWaitGameRunnable]): GameRunnable {.discardable.}

var NullWaitGameRunnable_instanceValue: GameRunnable
var NullWaitGameRunnable_instanceSet = false
proc instance*(t: typedesc[NullWaitGameRunnable]): GameRunnable =
    if not NullWaitGameRunnable_instanceSet:
        NullWaitGameRunnable_instanceSet = true
        NullWaitGameRunnable_instanceValue = newNullWaitGameRunnable()
    NullWaitGameRunnable_instanceValue

proc initNullWaitGameRunnable*(this: NullWaitGameRunnable) =
    initGameRunnable(this)

proc newNullWaitGameRunnable*(): NullWaitGameRunnable =
    result = NullWaitGameRunnable()
    initNullWaitGameRunnable(result)

proc getInstance*(t: typedesc[NullWaitGameRunnable]): GameRunnable {.discardable.} =
        return NullWaitGameRunnable.instance

when declared(newNullWaitGameRunnableHook0):
    newNullWaitGameRunnableHook0 = proc (): GameRunnable = newNullWaitGameRunnable()

