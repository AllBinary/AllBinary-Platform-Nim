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
# package org.allbinary.game.score.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/game/score/HighScore as HighScoreModule
export HighScoreModule
import org/allbinary/game/score/HighScoresHelperBaseInterface as HighScoresHelperBaseInterfaceModule
export HighScoresHelperBaseInterfaceModule
import org/allbinary/game/score/HighScoresFactoryInterface as HighScoresFactoryInterfaceModule
export HighScoresFactoryInterfaceModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/form/item/CustomTextBox as CustomTextBoxModule
export CustomTextBoxModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/input/event/VirtualKeyboardEventHandler as VirtualKeyboardEventHandlerModule
export VirtualKeyboardEventHandlerModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/game/score/displayable/HighScoreUtil as HighScoreUtilModule
export HighScoreUtilModule

type
    HighScoreTextBox* = ref object of CustomTextBox
        virtualKeyboardEventHandler*: VirtualKeyboardEventHandler
        highScoreUtil*: HighScoreUtil
        pleaseWait*: Paintable
        paintable*: Paintable
        submitted*: bool

proc newHighScoreTextBox*(highScoresFactoryInterface: HighScoresFactoryInterface, highScoresHelper: HighScoresHelperBaseInterface, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, cmdListener: CommandListener, name: string, highScore: HighScore, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): HighScoreTextBox
proc initHighScoreTextBox*(this: HighScoreTextBox, highScoresFactoryInterface: HighScoresFactoryInterface, highScoresHelper: HighScoresHelperBaseInterface, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, cmdListener: CommandListener, name: string, highScore: HighScore, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method initCommands*(this: HighScoreTextBox, cmdListener: CommandListener)
method open*(this: HighScoreTextBox)
method close*(this: HighScoreTextBox)
method update*(this: HighScoreTextBox)
method paint*(this: HighScoreTextBox, graphics: Graphics)
method saveHighScore*(this: HighScoreTextBox) {.base.}
method submit*(this: HighScoreTextBox)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import javax/microedition/lcdui/TextField as TextFieldModule
export TextFieldModule
import org/allbinary/PostGameCommandFactory as PostGameCommandFactoryModule
export PostGameCommandFactoryModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule
import org/allbinary/graphics/paint/SimpleTextPaintable as SimpleTextPaintableModule
export SimpleTextPaintableModule
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule
import org/allbinary/logic/system/os/OperatingSystemFactory as OperatingSystemFactoryModule
export OperatingSystemFactoryModule
import org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory as InApplicationPurchaseFactoryModule
export InApplicationPurchaseFactoryModule


# Java field initializers run after the base initializer
proc initFieldsHighScoreTextBox(this: HighScoreTextBox) =
    this.virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance()
    
    this.pleaseWait = newSimpleTextPaintable(this.commonStrings.PLEASE_WAIT, BasicColorFactory.getInstance().WHITE)
    this.paintable = NullPaintable.getInstance()
    this.submitted = false
    discard

proc initHighScoreTextBox*(this: HighScoreTextBox, highScoresFactoryInterface: HighScoresFactoryInterface, highScoresHelper: HighScoresHelperBaseInterface, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, cmdListener: CommandListener, name: string, highScore: HighScore, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initCustomTextBox(this, cmdListener, "New High Score Enter Name:", name, 12, TextField.ANY, Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor)
        this.initFieldsHighScoreTextBox()
        this.highScoreUtil = newHighScoreUtil(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)
        let operatingSystemInterface: GenericOperatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        if operatingSystemInterface.isOverScan():
            var username: string = InApplicationPurchaseFactory.getInstance().getUserName()
            this.getTextFieldItem().setString(username)

proc newHighScoreTextBox*(highScoresFactoryInterface: HighScoresFactoryInterface, highScoresHelper: HighScoresHelperBaseInterface, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, cmdListener: CommandListener, name: string, highScore: HighScore, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): HighScoreTextBox =
    result = HighScoreTextBox()
    initHighScoreTextBox(result, highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore, backgrounBasicColor, foregroundBasicColor)

method initCommands*(this: HighScoreTextBox, cmdListener: CommandListener) =
        this.removeAllCommands()
        PostGameCommandFactory.getInstance().addCommands(this)
        this.addCommand(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND)
        this.setCommandListener(cmdListener)

method open*(this: HighScoreTextBox) =
        this.virtualKeyboardEventHandler.open()
        this.paintable = NullPaintable.getInstance()
        jSuperStatement(procCall CustomTextBox(this).open())

method close*(this: HighScoreTextBox) =
        this.virtualKeyboardEventHandler.close()
        this.paintable = this.pleaseWait
        this.repaintBehavior.onChangeRepaint(this)
        jSuperStatement(procCall CustomTextBox(this).close())
        this.removeCommand(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND)
        this.update()
        if this.submitted:
            this.highScoreUtil.saveHighScore()
        else:
            discard
        this.paintable = NullPaintable.getInstance()
        this.repaintBehavior.onChangeRepaint(this)

method update*(this: HighScoreTextBox) =
        let name: string = this.getTextFieldItem().getString()
        this.highScoreUtil.update(name)
        jSuperStatement(procCall CustomTextBox(this).update())

method paint*(this: HighScoreTextBox, graphics: Graphics) =
        jSuperStatement(procCall CustomTextBox(this).paint(graphics))
        this.paintable.paint(graphics)

method saveHighScore*(this: HighScoreTextBox) {.base.} =
        this.highScoreUtil.saveHighScore()

method submit*(this: HighScoreTextBox) =
        this.highScoreUtil.submit(this)

when declared(newHighScoreTextBoxHook9):
    newHighScoreTextBoxHook9 = proc (highScoresFactoryInterface: HighScoresFactoryInterface, highScoresHelper: HighScoresHelperBaseInterface, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, cmdListener: CommandListener, name: string, highScore: HighScore, backgrounBasicColor: BasicColor, foregroundBasicColor: BasicColor): CustomTextBox = newHighScoreTextBox(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore, backgrounBasicColor, foregroundBasicColor)

