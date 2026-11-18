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
# package org.allbinary.game.paint

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule

type
    PressStartMenuPaintable* = ref object of Paintable
        displayInfo*: DisplayInfoSingleton
        PRESS_START*: string
        KEY_START*: string
        MENU_START*: string
        myFontProcessor*: MyFontProcessor
        startString*: string
        timeDelayHelper*: TimeDelayHelper
        flash*: bool
        anchor*: int32
        beginWidth*: int32
        line*: int32

converter jAsUpdateMyFontInterface*(value: PressStartMenuPaintable): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newPressStartMenuPaintable*(): PressStartMenuPaintable
proc initPressStartMenuPaintable*(this: PressStartMenuPaintable)
method updateMeasurement*(this: PressStartMenuPaintable, graphics: Graphics)
method paint*(this: PressStartMenuPaintable, graphics: Graphics)
method setFlash*(this: PressStartMenuPaintable, flash: bool) {.base.}
method isFlash*(this: PressStartMenuPaintable): bool {.base, discardable.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/AppletUtil as AppletUtilModule
export AppletUtilModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/input/motion/button/TouchScreenFactory as TouchScreenFactoryModule
export TouchScreenFactoryModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsPressStartMenuPaintable(this: PressStartMenuPaintable) =
    this.displayInfo = DisplayInfoSingleton.getInstance()
    this.PRESS_START = "Press Screen To Start"
    this.KEY_START = "Press or Click F2 To Begin"
    this.MENU_START = "Press Start From The Menu To Begin"
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.startString = StringUtil.getInstance().EMPTY_STRING
    this.timeDelayHelper = newTimeDelayHelper(1100)
    this.flash = false
    this.anchor = Anchor.TOP_LEFT
    this.beginWidth = 0
    this.line = 0
    discard

proc initPressStartMenuPaintable*(this: PressStartMenuPaintable) =
        initPaintable(this)
        this.initFieldsPressStartMenuPaintable()
        if TouchScreenFactory.getInstance().isTouch():
            this.startString = this.PRESS_START
        elif AppletUtil.isAppletLoader(this):
            this.startString = this.KEY_START
        else:
            this.startString = this.MENU_START

proc newPressStartMenuPaintable*(): PressStartMenuPaintable =
    result = PressStartMenuPaintable()
    initPressStartMenuPaintable(result)

method updateMeasurement*(this: PressStartMenuPaintable, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.beginWidth = (ashr(graphics.getFont().stringWidth(this.startString), 1))
        this.line = (4 *% MyFontProcessor.defaultCharWidth(font)) +% (ashr(font.getHeight(), 1))
        this.myFontProcessor = MyFontProcessor.getInstance()

method paint*(this: PressStartMenuPaintable, graphics: Graphics) =
        if this.timeDelayHelper.isTimeTNT():
            if this.isFlash():
                this.setFlash(false)
            else:
                this.setFlash(true)
        if this.isFlash():
            this.myFontProcessor.process(graphics)
            graphics.drawString(this.startString, this.displayInfo.getLastHalfWidth() -% this.beginWidth, this.displayInfo.getLastHeight() -% this.line, this.anchor)

method setFlash*(this: PressStartMenuPaintable, flash: bool) {.base.} =
        this.flash = flash

method isFlash*(this: PressStartMenuPaintable): bool {.base, discardable.} =
        return this.flash

when declared(newPressStartMenuPaintableHook0):
    newPressStartMenuPaintableHook0 = proc (): Paintable = newPressStartMenuPaintable()

