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
# package org.allbinary.game

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/business/advertisement/GameAdStateBase as GameAdStateBaseModule
export GameAdStateBaseModule
import org/allbinary/business/advertisement/AdConfiguration as AdConfigurationModule
export AdConfigurationModule
import org/allbinary/input/event/VirtualKeyboardEvent as VirtualKeyboardEventModule
export VirtualKeyboardEventModule
import org/allbinary/input/event/VirtualKeyboardEventListenerInterface as VirtualKeyboardEventListenerInterfaceModule
export VirtualKeyboardEventListenerInterfaceModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    GameAdState* = ref object of GameAdStateBase

converter jAsVirtualKeyboardEventListenerInterface*(value: GameAdState): VirtualKeyboardEventListenerInterface = cast[VirtualKeyboardEventListenerInterface](value)
converter jAsEventListenerInterface*(value: GameAdState): EventListenerInterface = cast[EventListenerInterface](value)
proc newGameAdState*(adConfiguration: AdConfiguration): GameAdState
proc initGameAdState*(this: GameAdState, adConfiguration: AdConfiguration)
method onVirtualKeyboardEvent*(this: GameAdState, virtualKeyboardEvent: VirtualKeyboardEvent)
method onEvent*(this: GameAdState, eventObject: AllBinaryEventObject)
import org/allbinary/input/event/VirtualKeyboardEventHandler as VirtualKeyboardEventHandlerModule
export VirtualKeyboardEventHandlerModule


proc initGameAdState*(this: GameAdState, adConfiguration: AdConfiguration) =
        initGameAdStateBase(this, adConfiguration)
        VirtualKeyboardEventHandler.getInstance().addListenerInterface(this)

proc newGameAdState*(adConfiguration: AdConfiguration): GameAdState =
    result = GameAdState()
    initGameAdState(result, adConfiguration)

method onVirtualKeyboardEvent*(this: GameAdState, virtualKeyboardEvent: VirtualKeyboardEvent) =
        discard

method onEvent*(this: GameAdState, eventObject: AllBinaryEventObject) =
        jSuperStatement(procCall GameAdStateBase(this).onEvent(eventObject))

when declared(newGameAdStateHook1):
    newGameAdStateHook1 = proc (adConfiguration: AdConfiguration): GameAdStateBase = newGameAdState(adConfiguration)

