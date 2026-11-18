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

type
    LifeInterface* = ref object of JObject


method get*(this: LifeInterface): int16 {.base, discardable.} =
        raise newJException("AbstractMethodError", "get")

method set*(this: LifeInterface, lives: int16) {.base.} =
        raise newJException("AbstractMethodError", "set")

method reset*(this: LifeInterface) {.base.} =
        raise newJException("AbstractMethodError", "reset")

method add*(this: LifeInterface, lives: int16) {.base.} =
        raise newJException("AbstractMethodError", "add")

method deaths*(this: LifeInterface, lives: int16) {.base.} =
        raise newJException("AbstractMethodError", "deaths")

method getMaxlives*(this: LifeInterface): int16 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getMaxlives")

method isAlive*(this: LifeInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isAlive")

