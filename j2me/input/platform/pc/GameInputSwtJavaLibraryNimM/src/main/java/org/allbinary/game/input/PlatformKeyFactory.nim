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
    PlatformKeyFactory* = ref object of JObject

proc newPlatformKeyFactory*(): PlatformKeyFactory
proc getInstance*(t: typedesc[PlatformKeyFactory]): PlatformKeyFactory {.discardable.}
method getString*(this: PlatformKeyFactory, keyCode: int32): string {.base, discardable.}
method isSubmission*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.}
method isDelete*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.}
method isBackSpace*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.}
method isUp*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.}
method isDown*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.}
method isEnter*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.}
method isLeft*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.}
method isRight*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/game/input/PCGameKey as PCGameKeyModule
export PCGameKeyModule
import org/allbinary/game/input/PCKeyFactory as PCKeyFactoryModule
export PCKeyFactoryModule

var PlatformKeyFactory_instanceValue: JObject
var PlatformKeyFactory_instanceSet = false
proc instance*(t: typedesc[PlatformKeyFactory]): JObject =
    if not PlatformKeyFactory_instanceSet:
        PlatformKeyFactory_instanceSet = true
        PlatformKeyFactory_instanceValue = NullUtil.getInstance().NULL_OBJECT
    PlatformKeyFactory_instanceValue
proc `instance=`*(t: typedesc[PlatformKeyFactory], value: JObject) =
    PlatformKeyFactory_instanceSet = true
    PlatformKeyFactory_instanceValue = value

proc initPlatformKeyFactory*(this: PlatformKeyFactory) =
    discard

proc newPlatformKeyFactory*(): PlatformKeyFactory =
    result = PlatformKeyFactory()
    initPlatformKeyFactory(result)

proc getInstance*(t: typedesc[PlatformKeyFactory]): PlatformKeyFactory {.discardable.} =
        if PlatformKeyFactory.instance == NullUtil.getInstance().NULL_OBJECT:
            PlatformKeyFactory.instance = newPlatformKeyFactory()
        return PlatformKeyFactory(JObject(PlatformKeyFactory.instance))

method getString*(this: PlatformKeyFactory, keyCode: int32): string {.base, discardable.} =
        return PCGameKey.getString(keyCode)

method isSubmission*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.} =
        return PCKeyFactory.getInstance().isSubmission(input)

method isDelete*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.} =
        return PCKeyFactory.getInstance().isDelete(input)

method isBackSpace*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.} =
        return PCKeyFactory.getInstance().isBackSpace(input)

method isUp*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.} =
        return PCKeyFactory.getInstance().isUp(input)

method isDown*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.} =
        return PCKeyFactory.getInstance().isDown(input)

method isEnter*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.} =
        return PCKeyFactory.getInstance().isEnter(input)

method isLeft*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.} =
        return PCKeyFactory.getInstance().isLeft(input)

method isRight*(this: PlatformKeyFactory, input: Input): bool {.base, discardable.} =
        return PCKeyFactory.getInstance().isRight(input)

