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
# package org.allbinary.game.combat.destroy.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface as AllBinaryEventObjectFactoryInterfaceModule
export AllBinaryEventObjectFactoryInterfaceModule

type
    DestroyEventFactory* = ref object of AllBinaryEventObjectFactoryInterface
        combatGameCanvas*: AllBinaryGameCanvas

proc newDestroyEventFactory*(combatGameCanvas: AllBinaryGameCanvas): DestroyEventFactory
proc initDestroyEventFactory*(this: DestroyEventFactory, combatGameCanvas: AllBinaryGameCanvas)
method getInstance*(this: DestroyEventFactory): AllBinaryEventObject {.discardable.}
import org/allbinary/game/combat/destroy/event/DestroyedEvent as DestroyedEventModule
export DestroyedEventModule


# Java field initializers run after the base initializer
proc initFieldsDestroyEventFactory(this: DestroyEventFactory) =
    
    discard

proc initDestroyEventFactory*(this: DestroyEventFactory, combatGameCanvas: AllBinaryGameCanvas) =
        this.initFieldsDestroyEventFactory()
        this.combatGameCanvas = combatGameCanvas

proc newDestroyEventFactory*(combatGameCanvas: AllBinaryGameCanvas): DestroyEventFactory =
    result = DestroyEventFactory()
    initDestroyEventFactory(result, combatGameCanvas)

method getInstance*(this: DestroyEventFactory): AllBinaryEventObject {.discardable.} =
        return newDestroyedEvent(this.combatGameCanvas)

