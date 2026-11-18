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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/form/item/ABTextItem as ABTextItemModule
export ABTextItemModule

type
    SelectableTextItem* = ref object of ABTextItem

proc newSelectableTextItem*(label: string, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): SelectableTextItem
proc initSelectableTextItem*(this: SelectableTextItem, label: string, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method isFocusable*(this: SelectableTextItem): bool {.discardable.}
method paintXY*(this: SelectableTextItem, graphics: Graphics, x: int32, y: int32)
import org/allbinary/graphics/form/item/ABStringComponent as ABStringComponentModule
export ABStringComponentModule


proc initSelectableTextItem*(this: SelectableTextItem, label: string, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initABTextItem(this, label, layout, altText, backgroundBasicColor, foregroundBasicColor)

proc newSelectableTextItem*(label: string, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): SelectableTextItem =
    result = SelectableTextItem()
    initSelectableTextItem(result, label, layout, altText, backgroundBasicColor, foregroundBasicColor)

method isFocusable*(this: SelectableTextItem): bool {.discardable.} =
        return true

method paintXY*(this: SelectableTextItem, graphics: Graphics, x: int32, y: int32) =
        this.myFontProcessor.process(graphics)
        var stringComponent: ABStringComponent = this.getLabelStringComponent()
        if (not jIsNil(stringComponent)):
            graphics.setColor(stringComponent.getForegroundBasicColor().intValue())
        graphics.drawString(this.getLabel(), x +% 2, y, 0)

when declared(newSelectableTextItemHook5):
    newSelectableTextItemHook5 = proc (label: string, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABTextItem = newSelectableTextItem(label, layout, altText, backgroundBasicColor, foregroundBasicColor)

