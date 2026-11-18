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
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    DestroyedEvent* = ref object of AllBinaryEventObject
        allBinaryGameCanvas*: AllBinaryGameCanvas
        allBinaryLayerInterface*: AllBinaryLayer

proc newDestroyedEvent*(combatGameCanvas: AllBinaryGameCanvas): DestroyedEvent
proc initDestroyedEvent*(this: DestroyedEvent, combatGameCanvas: AllBinaryGameCanvas)
method getAllBinaryGameCanvas*(this: DestroyedEvent): AllBinaryGameCanvas {.base, discardable.}
method getLayerInterface*(this: DestroyedEvent): AllBinaryLayer {.base, discardable.}
method setAllBinaryGameCanvas*(this: DestroyedEvent, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method setLayerInterfaceForCircularStaticPool*(this: DestroyedEvent, allBinaryLayerInterface: AllBinaryLayer) {.base.}
method toString*(this: DestroyedEvent): string {.discardable.}
import org/allbinary/game/displayable/canvas/NullGameCanvas as NullGameCanvasModule
export NullGameCanvasModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/game/combat/destroy/event/DestroyedEventHandler as DestroyedEventHandlerModule
export DestroyedEventHandlerModule


# Java field initializers run after the base initializer
proc initFieldsDestroyedEvent(this: DestroyedEvent) =
    this.allBinaryGameCanvas = NullGameCanvas.getInstance()
    this.allBinaryLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
    discard

proc initDestroyedEvent*(this: DestroyedEvent, combatGameCanvas: AllBinaryGameCanvas) =
        initAllBinaryEventObject(this, DestroyedEventHandler.getInstance())
        this.initFieldsDestroyedEvent()
        this.setAllBinaryGameCanvas(combatGameCanvas)

proc newDestroyedEvent*(combatGameCanvas: AllBinaryGameCanvas): DestroyedEvent =
    result = DestroyedEvent()
    initDestroyedEvent(result, combatGameCanvas)

method getAllBinaryGameCanvas*(this: DestroyedEvent): AllBinaryGameCanvas {.base, discardable.} =
        return this.allBinaryGameCanvas

method getLayerInterface*(this: DestroyedEvent): AllBinaryLayer {.base, discardable.} =
        return this.allBinaryLayerInterface

method setAllBinaryGameCanvas*(this: DestroyedEvent, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        this.allBinaryGameCanvas = allBinaryGameCanvas

method setLayerInterfaceForCircularStaticPool*(this: DestroyedEvent, allBinaryLayerInterface: AllBinaryLayer) {.base.} =
        this.allBinaryLayerInterface = allBinaryLayerInterface

method toString*(this: DestroyedEvent): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("DestroyedEvent: \n")
        stringBuffer.append("AllBinaryLayerInterface: ")
        stringBuffer.append(this.allBinaryLayerInterface.toString())
        stringBuffer.append("\nAllBinaryGameCanvas: ")
        stringBuffer.append(StringUtil.getInstance().toString(this.getAllBinaryGameCanvas()))
        return stringBuffer.toString()

when declared(newDestroyedEventHook1):
    newDestroyedEventHook1 = proc (combatGameCanvas: AllBinaryGameCanvas): AllBinaryEventObject = newDestroyedEvent(combatGameCanvas)

