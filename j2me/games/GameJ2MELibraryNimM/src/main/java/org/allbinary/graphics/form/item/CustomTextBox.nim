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
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Font as FontModule
export FontModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/displayable/canvas/GameCommandCanvas as GameCommandCanvasModule
export GameCommandCanvasModule
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/game/input/event/RawKeyEventListener as RawKeyEventListenerModule
export RawKeyEventListenerModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/form/item/ABTextFieldItem as ABTextFieldItemModule
export ABTextFieldItemModule

type
    CustomTextBox* = ref object of GameCommandCanvas
        textFieldItem*: ABTextFieldItem
        inputFactory*: InputFactory

converter jAsRawKeyEventListener*(value: CustomTextBox): RawKeyEventListener = cast[RawKeyEventListener](value)
proc newCustomTextBox*(cmdListener: CommandListener, label: string, text: string, maxSize: int32, constraints: int32, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CustomTextBox
proc initCustomTextBox*(this: CustomTextBox, cmdListener: CommandListener, label: string, text: string, maxSize: int32, constraints: int32, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method submit*(this: CustomTextBox) {.base.}
method onEventRaw*(this: CustomTextBox, keyCode: int32, deviceId: int32, repeated: bool)
method keyPressed*(this: CustomTextBox, keyCode: int32)
method keyReleased*(this: CustomTextBox, keyCode: int32)
method keyRepeated*(this: CustomTextBox, keyCode: int32)
method keyPressedByDevice*(this: CustomTextBox, keyCode: int32, deviceId: int32)
method keyReleasedByDevice*(this: CustomTextBox, keyCode: int32, deviceId: int32)
method paint*(this: CustomTextBox, graphics: Graphics)
method paintXY*(this: CustomTextBox, graphics: Graphics, x: int32, y: int32) {.base.}
method getTextFieldItem*(this: CustomTextBox): ABTextFieldItem {.base, discardable.}
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/game/input/Input as InputModule
export InputModule
import org/allbinary/game/input/PlatformKeyFactory as PlatformKeyFactoryModule
export PlatformKeyFactoryModule
import org/allbinary/graphics/form/item/validation/TextItemVisitor as TextItemVisitorModule
export TextItemVisitorModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsCustomTextBox(this: CustomTextBox) =
    
    this.inputFactory = InputFactory.getInstance()
    discard

proc initCustomTextBox*(this: CustomTextBox, cmdListener: CommandListener, label: string, text: string, maxSize: int32, constraints: int32, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initGameCommandCanvas(this, cmdListener, label, backgroundBasicColor, foregroundBasicColor)
        this.initFieldsCustomTextBox()
        let stringUtil: StringUtil = StringUtil.getInstance()
        let textFieldItem: ABTextFieldItem = newABTextFieldItem(this, newTextItemVisitor(), stringUtil.EMPTY_STRING, stringUtil.EMPTY_STRING, maxSize, 0, stringUtil.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor)
        textFieldItem.setString(text)
        this.textFieldItem = textFieldItem
        this.setTitle(label)

proc newCustomTextBox*(cmdListener: CommandListener, label: string, text: string, maxSize: int32, constraints: int32, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CustomTextBox =
    result = CustomTextBox()
    initCustomTextBox(result, cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)

method submit*(this: CustomTextBox) {.base.} =
        discard

method onEventRaw*(this: CustomTextBox, keyCode: int32, deviceId: int32, repeated: bool) =
        this.logUtil.putF(newStringMaker().append(this.commonStrings.START).appendint(keyCode).toString(), this, "onEvent")
        this.keyPressedByDevice(keyCode, deviceId)

method keyPressed*(this: CustomTextBox, keyCode: int32) =
        this.keyPressedByDevice(keyCode, 0)

method keyReleased*(this: CustomTextBox, keyCode: int32) =
        this.keyReleasedByDevice(keyCode, 0)

method keyRepeated*(this: CustomTextBox, keyCode: int32) =
        this.keyRepeatedByDevice(keyCode, 0)

method keyPressedByDevice*(this: CustomTextBox, keyCode: int32, deviceId: int32) =
        try:
            this.logUtil.putF(newStringMaker().append(CommonSeps.getInstance().SPACE).appendint(keyCode).toString(), this, this.gameInputStrings.KEY_PRESSED)
            let platformKeyFactory: PlatformKeyFactory = PlatformKeyFactory.getInstance()
            let input: Input = this.inputFactory.getInstanceById(keyCode)
            if platformKeyFactory.isSubmission(input):
                this.submit()
            else:
                this.textFieldItem.keyPressed(keyCode)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.KEY_PRESSED, e)

method keyReleasedByDevice*(this: CustomTextBox, keyCode: int32, deviceId: int32) =
        discard

method paint*(this: CustomTextBox, graphics: Graphics) =
        graphics.setColor(this.backgroundColor)
        graphics.fillRect(0, 0, this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight())
        graphics.setColor(this.foregroundColor)
        if (not J2MEUtil.isJ2ME()):
            graphics.drawString(this.getTitle(), 8, 1, 0)
        this.paintXY(graphics, 8, graphics.getFont().getHeight() +% 2)
        procCall GameCommandCanvas(this).paint(graphics)

method paintXY*(this: CustomTextBox, graphics: Graphics, x: int32, y: int32) {.base.} =
        this.textFieldItem.paintXY(graphics, x, y)

method getTextFieldItem*(this: CustomTextBox): ABTextFieldItem {.base, discardable.} =
        return this.textFieldItem

when declared(newCustomTextBoxHook8):
    newCustomTextBoxHook8 = proc (cmdListener: CommandListener, label: string, text: string, maxSize: int32, constraints: int32, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): GameCommandCanvas = newCustomTextBox(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)

