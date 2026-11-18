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
# package org.allbinary.animation.text

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/form/item/CustomTextBox as CustomTextBoxModule
export CustomTextBoxModule

type
    CustomTextBox2* = ref object of CustomTextBox

proc newCustomTextBox2*(cmdListener: CommandListener, label: string, text: string, maxSize: int32, constraints: int32, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CustomTextBox2
proc initCustomTextBox2*(this: CustomTextBox2, cmdListener: CommandListener, label: string, text: string, maxSize: int32, constraints: int32, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)


proc initCustomTextBox2*(this: CustomTextBox2, cmdListener: CommandListener, label: string, text: string, maxSize: int32, constraints: int32, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initCustomTextBox(this, cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        this.getTextFieldItem().setFocus(true)

proc newCustomTextBox2*(cmdListener: CommandListener, label: string, text: string, maxSize: int32, constraints: int32, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CustomTextBox2 =
    result = CustomTextBox2()
    initCustomTextBox2(result, cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)

when declared(newCustomTextBox2Hook8):
    newCustomTextBox2Hook8 = proc (cmdListener: CommandListener, label: string, text: string, maxSize: int32, constraints: int32, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CustomTextBox = newCustomTextBox2(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)

