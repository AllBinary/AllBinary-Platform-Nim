# Generated Code Do Not Modify
# package org.allbinary.game.configuration.feature

{.warning[UnusedImport]: off.}
import allbinary_java

type
    MultiPlayerGameFeatureFactory* = ref object of JObject

proc newMultiPlayerGameFeatureFactory*(): MultiPlayerGameFeatureFactory
proc initMultiPlayerGameFeatureFactory*(this: MultiPlayerGameFeatureFactory)
proc getInstance*(t: typedesc[MultiPlayerGameFeatureFactory]): MultiPlayerGameFeatureFactory {.discardable.}
method addCommands*(this: MultiPlayerGameFeatureFactory, anyType: JObject) {.base.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule

var MultiPlayerGameFeatureFactory_instanceValue: MultiPlayerGameFeatureFactory
var MultiPlayerGameFeatureFactory_instanceSet = false
proc instance*(t: typedesc[MultiPlayerGameFeatureFactory]): MultiPlayerGameFeatureFactory =
    if not MultiPlayerGameFeatureFactory_instanceSet:
        MultiPlayerGameFeatureFactory_instanceSet = true
        MultiPlayerGameFeatureFactory_instanceValue = newMultiPlayerGameFeatureFactory()
    MultiPlayerGameFeatureFactory_instanceValue

proc getInstance*(t: typedesc[MultiPlayerGameFeatureFactory]): MultiPlayerGameFeatureFactory {.discardable.} =
        return MultiPlayerGameFeatureFactory.instance

proc initMultiPlayerGameFeatureFactory*(this: MultiPlayerGameFeatureFactory) =
        discard
        discard

proc newMultiPlayerGameFeatureFactory*(): MultiPlayerGameFeatureFactory =
    result = MultiPlayerGameFeatureFactory()
    initMultiPlayerGameFeatureFactory(result)

method addCommands*(this: MultiPlayerGameFeatureFactory, anyType: JObject) {.base.} =
        let gameCommandsFactory: GameCommandsFactory = GameCommandsFactory.getInstance()
        let canvas: Canvas = Canvas(JObject(anyType))
        canvas.addCommand(gameCommandsFactory.QUIT_COMMAND)

