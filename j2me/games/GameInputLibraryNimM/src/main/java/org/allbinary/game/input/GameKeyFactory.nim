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
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule

type
    GameKeyFactory* = ref object of JObject
        NONE*: GameKey
        UP*: GameKey
        DOWN*: GameKey
        LEFT*: GameKey
        RIGHT*: GameKey
        KEY_POUND*: GameKey
        KEY_STAR*: GameKey
        KEY_NUM0*: GameKey
        KEY_NUM1*: GameKey
        KEY_NUM2*: GameKey
        KEY_NUM3*: GameKey
        KEY_NUM4*: GameKey
        KEY_NUM5*: GameKey
        KEY_NUM6*: GameKey
        KEY_NUM7*: GameKey
        KEY_NUM8*: GameKey
        KEY_NUM9*: GameKey
        GAME_A*: GameKey
        GAME_B*: GameKey
        GAME_C*: GameKey
        GAME_D*: GameKey
        FIRE*: GameKey
        LEVEL_DOWN*: GameKey
        LEVEL_UP*: GameKey

proc newGameKeyFactory*(): GameKeyFactory
proc getInstance*(t: typedesc[GameKeyFactory]): GameKeyFactory {.discardable.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/string/CommonPhoneStrings as CommonPhoneStringsModule
export CommonPhoneStringsModule
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule

var GameKeyFactory_instanceValue: JObject
var GameKeyFactory_instanceSet = false
proc instance*(t: typedesc[GameKeyFactory]): JObject =
    if not GameKeyFactory_instanceSet:
        GameKeyFactory_instanceSet = true
        GameKeyFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    GameKeyFactory_instanceValue
proc `instance=`*(t: typedesc[GameKeyFactory], value: JObject) =
    GameKeyFactory_instanceSet = true
    GameKeyFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsGameKeyFactory(this: GameKeyFactory) =
    this.NONE = newGameKey(InputFactory.getInstance().MAX -% 1, "None")
    this.UP = newGameKey(Canvas.UP, CommonPhoneStrings.getInstance().UP)
    this.DOWN = newGameKey(Canvas.DOWN, CommonPhoneStrings.getInstance().DOWN)
    this.LEFT = newGameKey(Canvas.LEFT, CommonPhoneStrings.getInstance().LEFT)
    this.RIGHT = newGameKey(Canvas.RIGHT, CommonPhoneStrings.getInstance().RIGHT)
    this.KEY_POUND = newGameKey(Canvas.KEY_POUND, "POUND")
    this.KEY_STAR = newGameKey(Canvas.KEY_STAR, "STAR")
    this.KEY_NUM0 = newGameKey(Canvas.KEY_NUM0, CommonPhoneStrings.getInstance().ZERO)
    this.KEY_NUM1 = newGameKey(Canvas.KEY_NUM1, CommonPhoneStrings.getInstance().ONE)
    this.KEY_NUM2 = newGameKey(Canvas.KEY_NUM2, CommonPhoneStrings.getInstance().TWO)
    this.KEY_NUM3 = newGameKey(Canvas.KEY_NUM3, CommonPhoneStrings.getInstance().THREE)
    this.KEY_NUM4 = newGameKey(Canvas.KEY_NUM4, CommonPhoneStrings.getInstance().FOUR)
    this.KEY_NUM5 = newGameKey(Canvas.KEY_NUM5, CommonPhoneStrings.getInstance().FIVE)
    this.KEY_NUM6 = newGameKey(Canvas.KEY_NUM6, CommonPhoneStrings.getInstance().SIX)
    this.KEY_NUM7 = newGameKey(Canvas.KEY_NUM7, CommonPhoneStrings.getInstance().SEVEN)
    this.KEY_NUM8 = newGameKey(Canvas.KEY_NUM8, CommonPhoneStrings.getInstance().EIGHT)
    this.KEY_NUM9 = newGameKey(Canvas.KEY_NUM9, CommonPhoneStrings.getInstance().NINE)
    this.GAME_A = newGameKey(Canvas.GAME_A, "Game A")
    this.GAME_B = newGameKey(Canvas.GAME_B, "Game B")
    this.GAME_C = newGameKey(Canvas.GAME_C, "Game C")
    this.GAME_D = newGameKey(Canvas.GAME_D, "Game D")
    this.FIRE = newGameKey(Canvas.FIRE, CommonPhoneStrings.getInstance().FIRE)
    this.LEVEL_DOWN = newGameKey(Canvas.KEY_NUM9 +% 1, "Cheat Level Up")
    this.LEVEL_UP = newGameKey(Canvas.KEY_NUM9 +% 2, "Cheat Level Down")
    discard

proc initGameKeyFactory*(this: GameKeyFactory) =
    this.initFieldsGameKeyFactory()

proc newGameKeyFactory*(): GameKeyFactory =
    result = GameKeyFactory()
    initGameKeyFactory(result)

proc getInstance*(t: typedesc[GameKeyFactory]): GameKeyFactory {.discardable.} =
        if GameKeyFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            GameKeyFactory.instance = newGameKeyFactory()
        return GameKeyFactory(JObject(GameKeyFactory.instance))

