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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Thread as ThreadModule
export ThreadModule
import java/lang/Runnable as RunnableModule
export RunnableModule

type
    GameRunnable* = ref object of Runnable
        WAIT*: int32
        FAST*: int32
        waitInMillis*: int64

proc newGameRunnable*(): GameRunnable
proc initGameRunnable*(this: GameRunnable)
method run*(this: GameRunnable)
method processLoopSleep*(this: GameRunnable) {.base.}
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule


# Java field initializers run after the base initializer
proc initFieldsGameRunnable(this: GameRunnable) =
    this.WAIT = 240
    this.FAST = 60
    this.waitInMillis = int64(this.WAIT)
    discard

proc initGameRunnable*(this: GameRunnable) =
        this.initFieldsGameRunnable()
        discard

proc newGameRunnable*(): GameRunnable =
    result = GameRunnable()
    initGameRunnable(result)

method run*(this: GameRunnable) =
        DisplayInfoSingleton.getInstance().process()

method processLoopSleep*(this: GameRunnable) {.base.} =
        JThread.sleep(this.waitInMillis)

