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
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/form/item/ABTextItem as ABTextItemModule
export ABTextItemModule

type
    CommandTextItem* = ref object of ABTextItem
        command*: Command

proc newCommandTextItem*(command: Command, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandTextItem
proc initCommandTextItem*(this: CommandTextItem, command: Command, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method isFocusable*(this: CommandTextItem): bool {.discardable.}
method getCommand*(this: CommandTextItem): Command {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsCommandTextItem(this: CommandTextItem) =
    
    discard

proc initCommandTextItem*(this: CommandTextItem, command: Command, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initABTextItem(this, command.getLabel(), layout, altText, backgroundBasicColor, foregroundBasicColor)
        this.initFieldsCommandTextItem()
        this.command = command

proc newCommandTextItem*(command: Command, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandTextItem =
    result = CommandTextItem()
    initCommandTextItem(result, command, layout, altText, backgroundBasicColor, foregroundBasicColor)

method isFocusable*(this: CommandTextItem): bool {.discardable.} =
        return true

method getCommand*(this: CommandTextItem): Command {.base, discardable.} =
        return this.command

when declared(newCommandTextItemHook5):
    newCommandTextItemHook5 = proc (command: Command, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABTextItem = newCommandTextItem(command, layout, altText, backgroundBasicColor, foregroundBasicColor)

