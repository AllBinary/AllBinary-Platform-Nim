#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/game/input/PlayerGameInputCompositeInterface as PlayerGameInputCompositeInterfaceModule
export PlayerGameInputCompositeInterfaceModule
import org/allbinary/game/input/PlayerGameInput as PlayerGameInputModule
export PlayerGameInputModule

type
    NullPlayerGameInputComposite* = ref object of PlayerGameInputCompositeInterface

proc newNullPlayerGameInputComposite*(): NullPlayerGameInputComposite
method getName*(this: NullPlayerGameInputComposite): string {.discardable.}
method processInput*(this: NullPlayerGameInputComposite, layerManager: AllBinaryLayerManager)
method initInputProcessors*(this: NullPlayerGameInputComposite)
method getPlayerGameInput*(this: NullPlayerGameInputComposite): PlayerGameInput {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/game/input/NoPlayerGameInput as NoPlayerGameInputModule
export NoPlayerGameInputModule

var NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITEValue: NullPlayerGameInputComposite
var NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITESet = false
proc NULL_PLAYER_GAME_INPUT_COMPOSITEStatic*(t: typedesc[NullPlayerGameInputComposite]): NullPlayerGameInputComposite =
    if not NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITESet:
        NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITESet = true
        NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITEValue = newNullPlayerGameInputComposite()
    NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITEValue

proc initNullPlayerGameInputComposite*(this: NullPlayerGameInputComposite) =
    discard

proc newNullPlayerGameInputComposite*(): NullPlayerGameInputComposite =
    result = NullPlayerGameInputComposite()
    initNullPlayerGameInputComposite(result)

method getName*(this: NullPlayerGameInputComposite): string {.discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method processInput*(this: NullPlayerGameInputComposite, layerManager: AllBinaryLayerManager) =
        discard

method initInputProcessors*(this: NullPlayerGameInputComposite) =
        discard

method getPlayerGameInput*(this: NullPlayerGameInputComposite): PlayerGameInput {.discardable.} =
        return NoPlayerGameInput.getInstance()

