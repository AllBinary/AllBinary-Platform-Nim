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
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule

type
    LimitCommandsVisitor* = ref object of Visitor
        isNotSmallDisplay*: bool

proc newLimitCommandsVisitor*(): LimitCommandsVisitor
proc initLimitCommandsVisitor*(this: LimitCommandsVisitor)
method visit*(this: LimitCommandsVisitor, anyType: JObject): JObject {.discardable.}
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/form/ScreenInfo as ScreenInfoModule
export ScreenInfoModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule


# Java field initializers run after the base initializer
proc initFieldsLimitCommandsVisitor(this: LimitCommandsVisitor) =
    
    discard

proc initLimitCommandsVisitor*(this: LimitCommandsVisitor) =
        initVisitor(this)
        this.initFieldsLimitCommandsVisitor()
        var displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        this.isNotSmallDisplay = (displayInfo.isPortrait() and displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_WIDTH) or ((not displayInfo.isPortrait()) and displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_HEIGHT)

proc newLimitCommandsVisitor*(): LimitCommandsVisitor =
    result = LimitCommandsVisitor()
    initLimitCommandsVisitor(result)

method visit*(this: LimitCommandsVisitor, anyType: JObject): JObject {.discardable.} =
        var command: Command = Command(JObject(anyType))
        var booleanFactory: BooleanFactory = BooleanFactory.getInstance()
        if this.isNotSmallDisplay or command.getPriority() == 1 or (jSame(command, GameCommandsFactory.getInstance().EXIT_COMMAND)) or (jSame(command, GameCommandsFactory.getInstance().EXIT_WITHOUT_PROGRESS_COMMAND)):
            return booleanFactory.TRUE
        else:
            return booleanFactory.FALSE

when declared(newLimitCommandsVisitorHook0):
    newLimitCommandsVisitorHook0 = proc (): Visitor = newLimitCommandsVisitor()

