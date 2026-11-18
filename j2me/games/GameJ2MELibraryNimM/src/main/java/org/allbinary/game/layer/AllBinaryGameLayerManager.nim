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
# package org.allbinary.game.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/game/input/PlayerGameInputCompositeInterface as PlayerGameInputCompositeInterfaceModule
export PlayerGameInputCompositeInterfaceModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    AllBinaryGameLayerManager* = ref object of AllBinaryLayerManager
        backgroundBasicColor*: BasicColor
        foregroundBasicColor*: BasicColor
        gameInfo*: GameInfo
        playerGameInputCompositeInterface*: PlayerGameInputCompositeInterface

proc newAllBinaryGameLayerManager*(backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor, gameInfo: GameInfo): AllBinaryGameLayerManager
proc initAllBinaryGameLayerManager*(this: AllBinaryGameLayerManager, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor, gameInfo: GameInfo)
proc getNullInstance*(t: typedesc[AllBinaryGameLayerManager]): AllBinaryGameLayerManager {.discardable.}
method getLayerManager*(this: AllBinaryGameLayerManager): AllBinaryLayerManager {.base, discardable.}
method init*(this: AllBinaryGameLayerManager) {.base.}
method getBackgroundBasicColor*(this: AllBinaryGameLayerManager): BasicColor {.base, discardable.}
method setBackgroundBasicColor*(this: AllBinaryGameLayerManager, backgroundBasicColor: BasicColor) {.base.}
method getForegroundBasicColor*(this: AllBinaryGameLayerManager): BasicColor {.base, discardable.}
method setForegroundBasicColor*(this: AllBinaryGameLayerManager, foregroundBasicColor: BasicColor) {.base.}
method getGameInfo*(this: AllBinaryGameLayerManager): GameInfo {.base, discardable.}
method setGameInfo*(this: AllBinaryGameLayerManager, gameInfo: GameInfo) {.base.}
method setLayerProcessorList*(this: AllBinaryGameLayerManager, list: BasicArrayList) {.base.}
method setPlayerGameInputCompositeInterface*(this: AllBinaryGameLayerManager, playerGameInputCompositeInterface: PlayerGameInputCompositeInterface) {.base.}
method getPlayerGameInputCompositeInterface*(this: AllBinaryGameLayerManager): PlayerGameInputCompositeInterface {.base, discardable.}
import org/allbinary/game/input/NullPlayerGameInputComposite as NullPlayerGameInputCompositeModule
export NullPlayerGameInputCompositeModule
import org/allbinary/graphics/ItemColorFactory as ItemColorFactoryModule
export ItemColorFactoryModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/layer/LayerProcessor as LayerProcessorModule
export LayerProcessorModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule

var AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERValue: JObject
var AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERSet = false
proc NULL_ALLBINARY_LAYER_MANAGER*(t: typedesc[AllBinaryGameLayerManager]): JObject =
    if not AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERSet:
        AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERSet = true
        AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERValue = NullUtil.getInstance().NULL_OBJECT
    AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERValue
proc `NULL_ALLBINARY_LAYER_MANAGER=`*(t: typedesc[AllBinaryGameLayerManager], value: JObject) =
    AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERSet = true
    AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGERValue = value
var AllBinaryGameLayerManager_IDValue: int32
var AllBinaryGameLayerManager_IDSet = false
proc ID*(t: typedesc[AllBinaryGameLayerManager]): int32 =
    if not AllBinaryGameLayerManager_IDSet:
        AllBinaryGameLayerManager_IDSet = true
        AllBinaryGameLayerManager_IDValue = SmallIntegerSingletonFactory.getInstance().getAt(22)
    AllBinaryGameLayerManager_IDValue

# Java field initializers run after the base initializer
proc initFieldsAllBinaryGameLayerManager(this: AllBinaryGameLayerManager) =
    
    
    
    this.playerGameInputCompositeInterface = NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITEStatic
    discard

proc getNullInstance*(t: typedesc[AllBinaryGameLayerManager]): AllBinaryGameLayerManager {.discardable.} =
        if AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER == NullUtil.getInstance().NULL_OBJECT:
            AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER = newAllBinaryGameLayerManager(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE, GameInfo.NONE)
        return AllBinaryGameLayerManager(JObject(AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER))

proc initAllBinaryGameLayerManager*(this: AllBinaryGameLayerManager, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor, gameInfo: GameInfo) =
        initAllBinaryLayerManager(this)
        this.initFieldsAllBinaryGameLayerManager()
        this.backgroundBasicColor = backgroundBasicColor
        this.foregroundBasicColor = foregroundBasicColor
        var itemColorFactory: ItemColorFactory = ItemColorFactory.getInstance()
        itemColorFactory.INVERT_PAINT = this.backgroundBasicColor.intValue()
        itemColorFactory.PAINT = this.foregroundBasicColor.intValue()
        this.gameInfo = gameInfo

proc newAllBinaryGameLayerManager*(backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor, gameInfo: GameInfo): AllBinaryGameLayerManager =
    result = AllBinaryGameLayerManager()
    initAllBinaryGameLayerManager(result, backgroundBasicColor, foregroundBasicColor, gameInfo)

method getLayerManager*(this: AllBinaryGameLayerManager): AllBinaryLayerManager {.base, discardable.} =
        return this

method init*(this: AllBinaryGameLayerManager) {.base.} =
        discard

method getBackgroundBasicColor*(this: AllBinaryGameLayerManager): BasicColor {.base, discardable.} =
        return this.backgroundBasicColor

method setBackgroundBasicColor*(this: AllBinaryGameLayerManager, backgroundBasicColor: BasicColor) {.base.} =
        this.backgroundBasicColor = backgroundBasicColor
        ItemColorFactory.getInstance().INVERT_PAINT = this.backgroundBasicColor.intValue()

method getForegroundBasicColor*(this: AllBinaryGameLayerManager): BasicColor {.base, discardable.} =
        return this.foregroundBasicColor

method setForegroundBasicColor*(this: AllBinaryGameLayerManager, foregroundBasicColor: BasicColor) {.base.} =
        this.foregroundBasicColor = foregroundBasicColor
        ItemColorFactory.getInstance().PAINT = this.foregroundBasicColor.intValue()

method getGameInfo*(this: AllBinaryGameLayerManager): GameInfo {.base, discardable.} =
        return this.gameInfo

method setGameInfo*(this: AllBinaryGameLayerManager, gameInfo: GameInfo) {.base.} =
        this.gameInfo = gameInfo

method setLayerProcessorList*(this: AllBinaryGameLayerManager, list: BasicArrayList) {.base.} =
        let layerProcessorInterfaceArray: JArray[LayerProcessor] = newJArray[LayerProcessor](list.size(), default(LayerProcessor))
        var size: int32 = layerProcessorInterfaceArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                layerProcessorInterfaceArray[index] = LayerProcessor(JObject(list.objectArray[index]))
        this.setLayerProcessorArray(layerProcessorInterfaceArray)

method setPlayerGameInputCompositeInterface*(this: AllBinaryGameLayerManager, playerGameInputCompositeInterface: PlayerGameInputCompositeInterface) {.base.} =
        this.playerGameInputCompositeInterface = playerGameInputCompositeInterface

method getPlayerGameInputCompositeInterface*(this: AllBinaryGameLayerManager): PlayerGameInputCompositeInterface {.base, discardable.} =
        return this.playerGameInputCompositeInterface

when declared(newAllBinaryGameLayerManagerHook3):
    newAllBinaryGameLayerManagerHook3 = proc (backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor, gameInfo: GameInfo): AllBinaryLayerManager = newAllBinaryGameLayerManager(backgroundBasicColor, foregroundBasicColor, gameInfo)

