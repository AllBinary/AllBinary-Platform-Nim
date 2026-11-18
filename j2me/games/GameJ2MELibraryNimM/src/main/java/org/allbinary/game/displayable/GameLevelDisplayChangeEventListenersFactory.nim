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
# package org.allbinary.game.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/displayable/event/DisplayChangeEventListener as DisplayChangeEventListenerModule
export DisplayChangeEventListenerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    GameLevelDisplayChangeEventListenersFactory* = ref object of JObject
        list*: BasicArrayList

proc newGameLevelDisplayChangeEventListenersFactory*(): GameLevelDisplayChangeEventListenersFactory
proc getInstance*(t: typedesc[GameLevelDisplayChangeEventListenersFactory]): GameLevelDisplayChangeEventListenersFactory {.discardable.}
method add*(this: GameLevelDisplayChangeEventListenersFactory, displayChangeEventListener: DisplayChangeEventListener) {.base.}
method clear*(this: GameLevelDisplayChangeEventListenersFactory) {.base.}
import org/allbinary/graphics/displayable/event/DisplayChangeEventHandler as DisplayChangeEventHandlerModule
export DisplayChangeEventHandlerModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var GameLevelDisplayChangeEventListenersFactory_instanceValue: GameLevelDisplayChangeEventListenersFactory
var GameLevelDisplayChangeEventListenersFactory_instanceSet = false
proc instance*(t: typedesc[GameLevelDisplayChangeEventListenersFactory]): GameLevelDisplayChangeEventListenersFactory =
    if not GameLevelDisplayChangeEventListenersFactory_instanceSet:
        GameLevelDisplayChangeEventListenersFactory_instanceSet = true
        GameLevelDisplayChangeEventListenersFactory_instanceValue = newGameLevelDisplayChangeEventListenersFactory()
    GameLevelDisplayChangeEventListenersFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameLevelDisplayChangeEventListenersFactory(this: GameLevelDisplayChangeEventListenersFactory) =
    this.list = newBasicArrayListD()
    discard

proc initGameLevelDisplayChangeEventListenersFactory*(this: GameLevelDisplayChangeEventListenersFactory) =
    this.initFieldsGameLevelDisplayChangeEventListenersFactory()

proc newGameLevelDisplayChangeEventListenersFactory*(): GameLevelDisplayChangeEventListenersFactory =
    result = GameLevelDisplayChangeEventListenersFactory()
    initGameLevelDisplayChangeEventListenersFactory(result)

proc getInstance*(t: typedesc[GameLevelDisplayChangeEventListenersFactory]): GameLevelDisplayChangeEventListenersFactory {.discardable.} =
        return GameLevelDisplayChangeEventListenersFactory.instance

method add*(this: GameLevelDisplayChangeEventListenersFactory, displayChangeEventListener: DisplayChangeEventListener) {.base.} =
        this.list.add(displayChangeEventListener)
        DisplayChangeEventHandler.getInstance().addListenerInterface(displayChangeEventListener)

method clear*(this: GameLevelDisplayChangeEventListenersFactory) {.base.} =
        var displayChangeEventHandler: BasicEventHandler = DisplayChangeEventHandler.getInstance()
        var displayChangeEventListener: DisplayChangeEventListener = nil
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                displayChangeEventListener = DisplayChangeEventListener(JObject(this.list.objectArray[index]))
                displayChangeEventHandler.removeListener(displayChangeEventListener)
        this.list.clear()

