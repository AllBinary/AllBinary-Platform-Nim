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
# package org.allbinary.game.ag.life

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/ag/life/LifeInterface as LifeInterfaceModule
export LifeInterfaceModule

type
    Life* = ref object of LifeInterface
        lives*: int16
        startLives*: int16
        maxlives*: int16

proc newLife*(lives: int16, maxlives: int16): Life
proc initLife*(this: Life, lives: int16, maxlives: int16)
proc createLife*(t: typedesc[Life]): Life {.discardable.}
method get*(this: Life): int16 {.discardable.}
method set*(this: Life, lives: int16)
method reset*(this: Life)
method add*(this: Life, lives: int16)
method isAlive*(this: Life): bool {.discardable.}
method getMaxlives*(this: Life): int16 {.discardable.}
method reachedLimit*(this: Life): bool {.base, discardable.}
method deaths*(this: Life, lives: int16)
method getStartLives*(this: Life): int16 {.base, discardable.}
method setStartLives*(this: Life, startLives: int16) {.base.}

var Life_NO_LIFEValue: Life
var Life_NO_LIFESet = false
proc NO_LIFE*(t: typedesc[Life]): Life =
    if not Life_NO_LIFESet:
        Life_NO_LIFESet = true
        Life_NO_LIFEValue = Life.createLife()
    Life_NO_LIFEValue

# Java field initializers run after the base initializer
proc initFieldsLife(this: Life) =
    
    
    
    discard

proc createLife*(t: typedesc[Life]): Life {.discardable.} =
        try:
            return newLife(jToInt16(0), jToInt16(0))
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            raise newJException("RuntimeException", "")

proc initLife*(this: Life, lives: int16, maxlives: int16) =
        this.initFieldsLife()
        this.maxlives = maxlives
        if lives > this.maxlives:
            raise newJException("Exception", "To Many Lives")
        this.lives = lives
        this.startLives = lives

proc newLife*(lives: int16, maxlives: int16): Life =
    result = Life()
    initLife(result, lives, maxlives)

method get*(this: Life): int16 {.discardable.} =
        return this.lives

method set*(this: Life, lives: int16) =
        this.lives = lives

method reset*(this: Life) =
        this.lives = this.startLives

method add*(this: Life, lives: int16) =
        if (not this.reachedLimit()):
            if this.lives +% lives <= int32(this.getMaxlives()):
                this.lives = jToInt16((this.lives +% lives))
            else:
                this.lives = this.getMaxlives()

method isAlive*(this: Life): bool {.discardable.} =
        if int32(this.lives) <= 0:
            return false
        else:
            return true

method getMaxlives*(this: Life): int16 {.discardable.} =
        return this.maxlives

method reachedLimit*(this: Life): bool {.base, discardable.} =
        if this.lives > this.maxlives or int32(this.lives) < 0:
            return true
        else:
            return false

method deaths*(this: Life, lives: int16) =
        if (not this.reachedLimit()):
            if this.lives -% lives >= 0:
                this.lives = jToInt16((this.lives -% lives))
            else:
                this.lives = 0

method getStartLives*(this: Life): int16 {.base, discardable.} =
        return this.startLives

method setStartLives*(this: Life, startLives: int16) {.base.} =
        this.startLives = startLives

