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
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule
import org/allbinary/game/input/Input as InputModule
export InputModule

type
    J2MEKeyFactory* = ref object of JObject
        gameKeyFactory*: GameKeyFactory

proc newJ2MEKeyFactory*(): J2MEKeyFactory
proc initJ2MEKeyFactory*(this: J2MEKeyFactory)
proc getInstance*(t: typedesc[J2MEKeyFactory]): J2MEKeyFactory {.discardable.}
method init*(this: J2MEKeyFactory) {.base.}
method isSubmission*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.}
method isDelete*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.}
method isBackSpace*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.}
method isUp*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.}
method isDown*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.}
method isLeft*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.}
method isRight*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.}
method isEnter*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.}
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule

var J2MEKeyFactory_instanceValue: J2MEKeyFactory
var J2MEKeyFactory_instanceSet = false
proc instance*(t: typedesc[J2MEKeyFactory]): J2MEKeyFactory =
    if not J2MEKeyFactory_instanceSet:
        J2MEKeyFactory_instanceSet = true
        J2MEKeyFactory_instanceValue = newJ2MEKeyFactory()
    J2MEKeyFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsJ2MEKeyFactory(this: J2MEKeyFactory) =
    this.gameKeyFactory = GameKeyFactory.getInstance()
    discard

proc getInstance*(t: typedesc[J2MEKeyFactory]): J2MEKeyFactory {.discardable.} =
        return J2MEKeyFactory.instance

proc initJ2MEKeyFactory*(this: J2MEKeyFactory) =
        this.initFieldsJ2MEKeyFactory()
        discard

proc newJ2MEKeyFactory*(): J2MEKeyFactory =
    result = J2MEKeyFactory()
    initJ2MEKeyFactory(result)

method init*(this: J2MEKeyFactory) {.base.} =
        var gameKeyArray: JArray[GameKey] = newJArrayFromRefs[GameKey](this.gameKeyFactory.DOWN, this.gameKeyFactory.FIRE, this.gameKeyFactory.GAME_A, this.gameKeyFactory.GAME_B, this.gameKeyFactory.GAME_C, this.gameKeyFactory.GAME_D, this.gameKeyFactory.KEY_NUM0, this.gameKeyFactory.KEY_NUM1, this.gameKeyFactory.KEY_NUM2, this.gameKeyFactory.KEY_NUM3, this.gameKeyFactory.KEY_NUM4, this.gameKeyFactory.KEY_NUM5, this.gameKeyFactory.KEY_NUM6, this.gameKeyFactory.KEY_NUM7, this.gameKeyFactory.KEY_NUM8, this.gameKeyFactory.KEY_NUM9, this.gameKeyFactory.KEY_POUND, this.gameKeyFactory.KEY_STAR, this.gameKeyFactory.LEFT, this.gameKeyFactory.LEVEL_DOWN, this.gameKeyFactory.LEVEL_UP, this.gameKeyFactory.NONE, this.gameKeyFactory.RIGHT, this.gameKeyFactory.UP)
        var inputFactory: InputFactory = InputFactory.getInstance()
        block:
            var index: int32 = gameKeyArray.length
            while jPreDecrement(index) >= 0:
                inputFactory.add(gameKeyArray[index].getId(), gameKeyArray[index])

method isSubmission*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.gameKeyFactory.FIRE)):
            return true
        return false

method isDelete*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.gameKeyFactory.GAME_D)):
            return true
        return false

method isBackSpace*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.} =
        return false

method isUp*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.gameKeyFactory.UP)):
            return true
        return false

method isDown*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.gameKeyFactory.DOWN)):
            return true
        return false

method isLeft*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.gameKeyFactory.LEFT)):
            return true
        return false

method isRight*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.gameKeyFactory.RIGHT)):
            return true
        return false

method isEnter*(this: J2MEKeyFactory, input: Input): bool {.base, discardable.} =
        if (jSame(input, this.gameKeyFactory.FIRE)):
            return true
        return false

