#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    DemoGameBehavior* = ref object of JObject
        logUtil*: LogUtil

proc newDemoGameBehavior*(): DemoGameBehavior
proc getInstance*(t: typedesc[DemoGameBehavior]): DemoGameBehavior {.discardable.}
method init*(this: DemoGameBehavior) {.base.}
method pause*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method unPause*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method updateTouch*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method updateScreenButtonPaintable*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method setGameState*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method removeAllGameKeyInputListeners*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method updateEndGameProcessor*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method buildGame*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method run*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.}
method setHighScore*(this: DemoGameBehavior, abeClientInformation: AbeClientInformationInterface, allBinaryGameCanvas: AllBinaryGameCanvas, name: string, score: int64, autoSubmit: bool, isLast: bool) {.base.}
import org/allbinary/game/GameTypeFactory as GameTypeFactoryModule
export GameTypeFactoryModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var DemoGameBehavior_instanceValue: DemoGameBehavior
var DemoGameBehavior_instanceSet = false
proc instance*(t: typedesc[DemoGameBehavior]): DemoGameBehavior =
    if not DemoGameBehavior_instanceSet:
        DemoGameBehavior_instanceSet = true
        DemoGameBehavior_instanceValue = newDemoGameBehavior()
    DemoGameBehavior_instanceValue

# Java field initializers run after the base initializer
proc initFieldsDemoGameBehavior(this: DemoGameBehavior) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initDemoGameBehavior*(this: DemoGameBehavior) =
    this.initFieldsDemoGameBehavior()

proc newDemoGameBehavior*(): DemoGameBehavior =
    result = DemoGameBehavior()
    initDemoGameBehavior(result)

proc getInstance*(t: typedesc[DemoGameBehavior]): DemoGameBehavior {.discardable.} =
        return DemoGameBehavior.instance

method init*(this: DemoGameBehavior) {.base.} =
        discard

method pause*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        discard

method unPause*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        discard

method updateTouch*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        discard

method updateScreenButtonPaintable*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        allBinaryGameCanvas.setTouchPaintableP(NullPaintable.getInstance())

method setGameState*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        discard

method removeAllGameKeyInputListeners*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        discard

method updateEndGameProcessor*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        discard

method buildGame*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        discard

method run*(this: DemoGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) {.base.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        this.logUtil.putF(GameTypeFactory.getInstance().BOT.toString(), this, commonStrings.RUN)

method setHighScore*(this: DemoGameBehavior, abeClientInformation: AbeClientInformationInterface, allBinaryGameCanvas: AllBinaryGameCanvas, name: string, score: int64, autoSubmit: bool, isLast: bool) {.base.} =
        discard

