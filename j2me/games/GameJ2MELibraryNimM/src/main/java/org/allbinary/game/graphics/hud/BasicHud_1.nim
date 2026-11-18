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
# package org.allbinary.game.graphics.hud

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/BasicColorSetUtil as BasicColorSetUtilModule
export BasicColorSetUtilModule
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/displayable/event/DisplayChangeEvent as DisplayChangeEventModule
export DisplayChangeEventModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/graphics/hud/HudGraphicsPosition as HudGraphicsPositionModule
export HudGraphicsPositionModule

type
    BasicHud_1* = ref object of UpdateMyFontInterface
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        canvasStrings*: CanvasStrings
        basicSetColorUtil*: BasicColorSetUtil
        displayInfo*: DisplayInfoSingleton
        updateMyFontProcessor*: MyFontProcessor
        myFontProcessor*: MyFontProcessor
        location*: int32
        direction*: int32
        bufferZone*: int32
        hudGraphicsPosition*: HudGraphicsPosition
        x*: int32
        y*: int32
        basicColor*: BasicColor
        color*: int32
        updateMaxWidth*: int32
        updateMaxHeight*: int32
        offsetY*: int32

proc newBasicHud_1*(location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): BasicHud_1
proc initBasicHud_1*(this: BasicHud_1, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor)
method updateMeasurement*(this: BasicHud_1, graphics: Graphics)
method getLocation*(this: BasicHud_1): int32 {.base, discardable.}
method getDirection*(this: BasicHud_1): int32 {.base, discardable.}
method getHudGraphicsPositionWH*(this: BasicHud_1, width: int32, height: int32, maxWidth: int32, maxHeight: int32): HudGraphicsPosition {.base, discardable.}
method onEvent*(this: BasicHud_1, eventObject: AllBinaryEventObject) {.base.}
method onDisplayChangeEvent*(this: BasicHud_1, displayChangeEvent: DisplayChangeEvent) {.base.}
method getPoint*(this: BasicHud_1, x: int32, y: int32): GPoint {.base, discardable.}
method getBufferZone*(this: BasicHud_1): int32 {.base, discardable.}
method setBufferZone*(this: BasicHud_1, bufferZone: int32) {.base.}
method setLocation*(this: BasicHud_1, location: int32) {.base.}
method setDirection*(this: BasicHud_1, direction: int32) {.base.}
method getHudGraphicsPosition*(this: BasicHud_1): HudGraphicsPosition {.base, discardable.}
method getColor*(this: BasicHud_1): int32 {.base, discardable.}
method getX*(this: BasicHud_1): int32 {.base, discardable.}
method setX*(this: BasicHud_1, x: int32) {.base.}
method setBasicColorP*(this: BasicHud_1, basicColor: BasicColor) {.base.}
method getBasicColorP*(this: BasicHud_1): BasicColor {.base, discardable.}
method setY*(this: BasicHud_1, y: int32) {.base.}
method getY*(this: BasicHud_1): int32 {.base, discardable.}
method paintSSO*(this: BasicHud_1, graphics: Graphics, string: string, string2: string, offset: int32) {.base.}
method paintSSOO*(this: BasicHud_1, graphics: Graphics, string: string, string2: string, offset: int32, offset2: int32) {.base.}
method paintDXY*(this: BasicHud_1, graphics: Graphics, charArray: JArray[uint16], offset: int32, len: int32, charArray2: JArray[uint16], offset2: int32, len2: int32, xOffset: int32, xOffset2: int32) {.base.}
method paintDX*(this: BasicHud_1, graphics: Graphics, charArray: JArray[uint16], offset: int32, len: int32, charArray2: JArray[uint16], offset2: int32, len2: int32, xOffset: int32) {.base.}
method paintOffsetAndLength*(this: BasicHud_1, graphics: Graphics, charArray: JArray[uint16], offset: int32, len: int32) {.base.}
method paintString*(this: BasicHud_1, graphics: Graphics, string: string) {.base.}
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/game/graphics/hud/BasicHudFactory as BasicHudFactoryModule
export BasicHudFactoryModule


# Java field initializers run after the base initializer
proc initFieldsBasicHud_1(this: BasicHud_1) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.canvasStrings = CanvasStrings.getInstance()
    this.basicSetColorUtil = BasicColorSetUtil.getInstance()
    this.displayInfo = DisplayInfoSingleton.getInstance()
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.location = 0
    this.direction = 0
    this.bufferZone = 0
    this.hudGraphicsPosition = HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION
    this.x = 0
    this.y = 0
    this.basicColor = BasicColorFactory.getInstance().BLACK
    
    this.updateMaxWidth = 0
    this.updateMaxHeight = 0
    this.offsetY = 0
    discard

proc initBasicHud_1*(this: BasicHud_1, location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor) =
        this.initFieldsBasicHud_1()
        this.setLocation(location)
        this.setDirection(direction)
        this.setBufferZone(bufferZone)
        this.onDisplayChangeEvent(DisplayInfoSingleton.getInstance().displayChangeEvent)
        this.setBasicColorP(basicColor)
        this.color = basicColor.intValue()

proc newBasicHud_1*(location: int32, direction: int32, bufferZone: int32, basicColor: BasicColor): BasicHud_1 =
    result = BasicHud_1()
    initBasicHud_1(result, location, direction, bufferZone, basicColor)

method updateMeasurement*(this: BasicHud_1, graphics: Graphics) =
        try:
            this.hudGraphicsPosition = this.getHudGraphicsPositionWH(this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight(), this.updateMaxWidth, this.updateMaxHeight)
            this.x = this.hudGraphicsPosition.getPoint().getX()
            this.setY(this.hudGraphicsPosition.getPoint().getY())
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        this.myFontProcessor = MyFontProcessor.getInstance()

method getLocation*(this: BasicHud_1): int32 {.base, discardable.} =
        return this.location

method getDirection*(this: BasicHud_1): int32 {.base, discardable.} =
        return this.direction

method getHudGraphicsPositionWH*(this: BasicHud_1, width: int32, height: int32, maxWidth: int32, maxHeight: int32): HudGraphicsPosition {.base, discardable.} =
        var x: int32 = 0
        var y: int32 = 0
        var anchor: int32 = 0
        let basicHudFactory: BasicHudFactory = BasicHudFactory.getInstance()
        if basicHudFactory.BOTTOMLEFT == this.getLocation():
            x = this.bufferZone +% 2
            y = height -% maxHeight -% this.bufferZone
            anchor = Graphics.BOTTOM and Graphics.LEFT
        elif basicHudFactory.BOTTOMRIGHT == this.getLocation():
            x = width -% maxWidth
            y = height -% maxHeight -% this.bufferZone
            anchor = Graphics.BOTTOM and Graphics.RIGHT
        elif basicHudFactory.TOPLEFT == this.getLocation():
            x = this.bufferZone +% 2
            y = this.bufferZone +% 5
            anchor = Anchor.TOP_LEFT
        elif basicHudFactory.TOPRIGHT == this.getLocation():
            x = width -% maxWidth
            y = this.bufferZone +% 5
            anchor = Graphics.TOP and Graphics.RIGHT
        elif basicHudFactory.TOPCENTER == this.getLocation():
            x = ((width -% maxWidth) div 2)
            y = this.bufferZone +% 5
            anchor = Graphics.TOP and Graphics.HCENTER
        elif basicHudFactory.BOTTOMCENTER == this.getLocation():
            x = ((width -% maxWidth) div 2)
            y = height -% maxHeight -% this.bufferZone
            anchor = Graphics.BOTTOM and Graphics.HCENTER
        elif basicHudFactory.ABSOLUTE == this.getLocation():
            x = maxHeight
            y = maxWidth
            anchor = 0
        return newHudGraphicsPosition(this.getPoint(x, y), anchor)

method onEvent*(this: BasicHud_1, eventObject: AllBinaryEventObject) {.base.} =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onDisplayChangeEvent*(this: BasicHud_1, displayChangeEvent: DisplayChangeEvent) {.base.} =
        this.myFontProcessor = this.updateMyFontProcessor

method getPoint*(this: BasicHud_1, x: int32, y: int32): GPoint {.base, discardable.} =
        return PointFactory.getInstance().createXY(x, y)

method getBufferZone*(this: BasicHud_1): int32 {.base, discardable.} =
        return this.bufferZone

method setBufferZone*(this: BasicHud_1, bufferZone: int32) {.base.} =
        this.bufferZone = bufferZone

method setLocation*(this: BasicHud_1, location: int32) {.base.} =
        this.location = location

method setDirection*(this: BasicHud_1, direction: int32) {.base.} =
        this.direction = direction

method getHudGraphicsPosition*(this: BasicHud_1): HudGraphicsPosition {.base, discardable.} =
        return this.hudGraphicsPosition

method getColor*(this: BasicHud_1): int32 {.base, discardable.} =
        return this.color

method getX*(this: BasicHud_1): int32 {.base, discardable.} =
        return this.x

method setX*(this: BasicHud_1, x: int32) {.base.} =
        this.x = x

method setBasicColorP*(this: BasicHud_1, basicColor: BasicColor) {.base.} =
        this.basicColor = basicColor

method getBasicColorP*(this: BasicHud_1): BasicColor {.base, discardable.} =
        return this.basicColor

method setY*(this: BasicHud_1, y: int32) {.base.} =
        this.y = y

method getY*(this: BasicHud_1): int32 {.base, discardable.} =
        return this.y

method paintSSO*(this: BasicHud_1, graphics: Graphics, string: string, string2: string, offset: int32) {.base.} =
        this.myFontProcessor.process(graphics)
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP())
        graphics.drawString(string, this.x, this.getY(), this.hudGraphicsPosition.getAnchor())
        graphics.drawString(string2, this.x +% offset, this.getY(), this.hudGraphicsPosition.getAnchor())

method paintSSOO*(this: BasicHud_1, graphics: Graphics, string: string, string2: string, offset: int32, offset2: int32) {.base.} =
        this.myFontProcessor.process(graphics)
        graphics.setColor(this.getColor())
        graphics.drawString(string, this.x +% offset, this.getY(), this.hudGraphicsPosition.getAnchor())
        graphics.drawString(string2, this.x +% offset2, this.getY(), this.hudGraphicsPosition.getAnchor())

method paintDXY*(this: BasicHud_1, graphics: Graphics, charArray: JArray[uint16], offset: int32, len: int32, charArray2: JArray[uint16], offset2: int32, len2: int32, xOffset: int32, xOffset2: int32) {.base.} =
        this.myFontProcessor.process(graphics)
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP())
        let y: int32 = this.getY()
        graphics.drawChars(charArray, offset, len, this.x +% xOffset, y, this.hudGraphicsPosition.getAnchor())
        graphics.drawChars(charArray2, offset2, len2, this.x +% xOffset2, y, this.hudGraphicsPosition.getAnchor())

method paintDX*(this: BasicHud_1, graphics: Graphics, charArray: JArray[uint16], offset: int32, len: int32, charArray2: JArray[uint16], offset2: int32, len2: int32, xOffset: int32) {.base.} =
        this.myFontProcessor.process(graphics)
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP())
        let y: int32 = this.getY()
        graphics.drawChars(charArray, offset, len, this.x, y, this.hudGraphicsPosition.getAnchor())
        graphics.drawChars(charArray2, offset2, len2, this.x +% xOffset, y, this.hudGraphicsPosition.getAnchor())

method paintOffsetAndLength*(this: BasicHud_1, graphics: Graphics, charArray: JArray[uint16], offset: int32, len: int32) {.base.} =
        this.myFontProcessor.process(graphics)
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP())
        let y: int32 = this.getY()
        graphics.drawChars(charArray, offset, len, this.x, y, this.hudGraphicsPosition.getAnchor())

method paintString*(this: BasicHud_1, graphics: Graphics, string: string) {.base.} =
        this.myFontProcessor.process(graphics)
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP())
        let y: int32 = this.getY() +% this.offsetY
        graphics.drawString(string, this.x, y, this.hudGraphicsPosition.getAnchor())

