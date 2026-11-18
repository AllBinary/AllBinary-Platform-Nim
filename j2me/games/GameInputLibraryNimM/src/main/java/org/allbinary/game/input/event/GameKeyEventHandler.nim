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
# package org.allbinary.game.input.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/input/event/PressGameKeyEventHandler as PressGameKeyEventHandlerModule
export PressGameKeyEventHandlerModule
import org/allbinary/game/input/event/UpGameKeyEventHandler as UpGameKeyEventHandlerModule
export UpGameKeyEventHandlerModule
import org/allbinary/game/input/event/DownGameKeyEventHandler as DownGameKeyEventHandlerModule
export DownGameKeyEventHandlerModule

type
    GameKeyEventHandler* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        pressGameKeyEventHandler*: PressGameKeyEventHandler
        upGameKeyEventHandler*: UpGameKeyEventHandler
        downGameKeyEventHandler*: DownGameKeyEventHandler

proc newGameKeyEventHandler*(): GameKeyEventHandler
proc getInstance*(t: typedesc[GameKeyEventHandler]): GameKeyEventHandler {.discardable.}
method removeAllListeners*(this: GameKeyEventHandler) {.base.}
method addListenerForPlayer*(this: GameKeyEventHandler, eventListenerInterface: EventListenerInterface, playerInputId: int32) {.base.}
method addListener*(this: GameKeyEventHandler, eventListenerInterface: EventListenerInterface) {.base.}
method removeListener*(this: GameKeyEventHandler, eventListenerInterface: EventListenerInterface) {.base.}

var GameKeyEventHandler_instanceValue: GameKeyEventHandler
var GameKeyEventHandler_instanceSet = false
proc instance*(t: typedesc[GameKeyEventHandler]): GameKeyEventHandler =
    if not GameKeyEventHandler_instanceSet:
        GameKeyEventHandler_instanceSet = true
        GameKeyEventHandler_instanceValue = newGameKeyEventHandler()
    GameKeyEventHandler_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGameKeyEventHandler(this: GameKeyEventHandler) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.pressGameKeyEventHandler = PressGameKeyEventHandler.getInstance()
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    discard

proc initGameKeyEventHandler*(this: GameKeyEventHandler) =
    this.initFieldsGameKeyEventHandler()

proc newGameKeyEventHandler*(): GameKeyEventHandler =
    result = GameKeyEventHandler()
    initGameKeyEventHandler(result)

proc getInstance*(t: typedesc[GameKeyEventHandler]): GameKeyEventHandler {.discardable.} =
        return GameKeyEventHandler.instance

method removeAllListeners*(this: GameKeyEventHandler) {.base.} =
        this.pressGameKeyEventHandler.removeAllListeners()
        this.upGameKeyEventHandler.removeAllListeners()
        this.downGameKeyEventHandler.removeAllListeners()

method addListenerForPlayer*(this: GameKeyEventHandler, eventListenerInterface: EventListenerInterface, playerInputId: int32) {.base.} =
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.ADD_LISTENER)
        this.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        this.upGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface)
        this.downGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface)

method addListener*(this: GameKeyEventHandler, eventListenerInterface: EventListenerInterface) {.base.} =
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.ADD_LISTENER)
        this.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        this.upGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        this.downGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)

method removeListener*(this: GameKeyEventHandler, eventListenerInterface: EventListenerInterface) {.base.} =
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.REMOVE_LISTENER)
        this.pressGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
        this.upGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
        this.downGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)

