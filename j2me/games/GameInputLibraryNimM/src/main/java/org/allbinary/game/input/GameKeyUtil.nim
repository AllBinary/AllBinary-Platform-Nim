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
    GameKeyUtil* = ref object of JObject

proc newGameKeyUtil*(): GameKeyUtil
method isDirectionKey*(this: GameKeyUtil, key: int32): bool {.base, discardable.}
proc getInstance*(t: typedesc[GameKeyUtil]): GameKeyUtil {.discardable.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule

var GameKeyUtil_instanceValue: GameKeyUtil
var GameKeyUtil_instanceSet = false
proc instance*(t: typedesc[GameKeyUtil]): GameKeyUtil =
    if not GameKeyUtil_instanceSet:
        GameKeyUtil_instanceSet = true
        GameKeyUtil_instanceValue = newGameKeyUtil()
    GameKeyUtil_instanceValue

proc initGameKeyUtil*(this: GameKeyUtil) =
    discard

proc newGameKeyUtil*(): GameKeyUtil =
    result = GameKeyUtil()
    initGameKeyUtil(result)

method isDirectionKey*(this: GameKeyUtil, key: int32): bool {.base, discardable.} =
        if key == Canvas.UP or key == Canvas.DOWN or key == Canvas.LEFT or key == Canvas.RIGHT:
            return true
        else:
            return false

proc getInstance*(t: typedesc[GameKeyUtil]): GameKeyUtil {.discardable.} =
        return GameKeyUtil.instance

