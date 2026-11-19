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
import org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer as CollidableDestroyableDamageableLayerModule
export CollidableDestroyableDamageableLayerModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    DestroyedEventHandler* = ref object of BasicEventHandler
        list*: BasicArrayList

proc newDestroyedEventHandler*(): DestroyedEventHandler
proc initDestroyedEventHandler*(this: DestroyedEventHandler)
proc getInstance*(t: typedesc[DestroyedEventHandler]): DestroyedEventHandler {.discardable.}
method addListener*(this: DestroyedEventHandler, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) {.base.}
method removeAllListeners*(this: DestroyedEventHandler)
method removeListener*(this: DestroyedEventHandler, eventListenerInterface: EventListenerInterface)
method fireEvent*(this: DestroyedEventHandler, eventObject: AllBinaryEventObject)
method process*(this: DestroyedEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/combat/destroy/event/DestroyedEvent as DestroyedEventModule
export DestroyedEventModule
import org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface as DestroyedEventListenerInterfaceModule
export DestroyedEventListenerInterfaceModule

var DestroyedEventHandler_instanceValue: DestroyedEventHandler
var DestroyedEventHandler_instanceSet = false
proc instance*(t: typedesc[DestroyedEventHandler]): DestroyedEventHandler =
    if not DestroyedEventHandler_instanceSet:
        DestroyedEventHandler_instanceSet = true
        DestroyedEventHandler_instanceValue = newDestroyedEventHandler()
    DestroyedEventHandler_instanceValue

# Java field initializers run after the base initializer
proc initFieldsDestroyedEventHandler(this: DestroyedEventHandler) =
    this.list = newBasicArrayListD()
    discard

proc getInstance*(t: typedesc[DestroyedEventHandler]): DestroyedEventHandler {.discardable.} =
        return DestroyedEventHandler.instance

proc initDestroyedEventHandler*(this: DestroyedEventHandler) =
        initBasicEventHandler(this)
        this.initFieldsDestroyedEventHandler()
        discard

proc newDestroyedEventHandler*(): DestroyedEventHandler =
    result = DestroyedEventHandler()
    initDestroyedEventHandler(result)

method addListener*(this: DestroyedEventHandler, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) {.base.} =
        if (not this.list.contains(collidableDestroyableDamageableLayer)):
            this.list.add(collidableDestroyableDamageableLayer)

method removeAllListeners*(this: DestroyedEventHandler) =
        this.list.clear()
        jSuperStatement(procCall BasicEventHandler(this).removeAllListeners())

method removeListener*(this: DestroyedEventHandler, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        jSuperStatement(procCall BasicEventHandler(this).removeListener(eventListenerInterface))

method fireEvent*(this: DestroyedEventHandler, eventObject: AllBinaryEventObject) =
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                try:
                    var collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer = CollidableDestroyableDamageableLayer(JObject(this.list.objectArray[index]))
                    collidableDestroyableDamageableLayer.onDestroyed(DestroyedEvent(JObject(eventObject)))
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        jSuperStatement(procCall BasicEventHandler(this).fireEvent(eventObject))

method process*(this: DestroyedEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let destroyedEventListenerInterface: DestroyedEventListenerInterface = DestroyedEventListenerInterface(JObject(eventListenerInterface))
        destroyedEventListenerInterface.onDestroyed(DestroyedEvent(JObject(eventObject)))

when declared(newDestroyedEventHandlerHook0):
    newDestroyedEventHandlerHook0 = proc (): BasicEventHandler = newDestroyedEventHandler()

