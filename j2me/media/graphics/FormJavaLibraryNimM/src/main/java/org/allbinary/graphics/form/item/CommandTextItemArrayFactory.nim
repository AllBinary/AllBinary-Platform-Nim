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
import java/lang/Boolean as BooleanModule
export BooleanModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule

type
    CommandTextItemArrayFactory* = ref object of JObject
        list*: BasicArrayList
        visitorInterface*: Visitor

proc newCommandTextItemArrayFactory*(visitorInterface: Visitor): CommandTextItemArrayFactory
proc initCommandTextItemArrayFactory*(this: CommandTextItemArrayFactory, visitorInterface: Visitor)
method getInstance*(this: CommandTextItemArrayFactory, vector: JObject, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): JArray[ABCustomItem] {.base, discardable.}
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/ImageItem as ImageItemModule
export ImageItemModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/form/ScreenInfo as ScreenInfoModule
export ScreenInfoModule
import org/allbinary/logic/VectorUtil as VectorUtilModule
export VectorUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/graphics/form/item/CommandTextItem as CommandTextItemModule
export CommandTextItemModule


# Java field initializers run after the base initializer
proc initFieldsCommandTextItemArrayFactory(this: CommandTextItemArrayFactory) =
    this.list = newBasicArrayListD()
    
    discard

proc initCommandTextItemArrayFactory*(this: CommandTextItemArrayFactory, visitorInterface: Visitor) =
        this.initFieldsCommandTextItemArrayFactory()
        this.visitorInterface = visitorInterface

proc newCommandTextItemArrayFactory*(visitorInterface: Visitor): CommandTextItemArrayFactory =
    result = CommandTextItemArrayFactory()
    initCommandTextItemArrayFactory(result, visitorInterface)

method getInstance*(this: CommandTextItemArrayFactory, vector: JObject, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): JArray[ABCustomItem] {.base, discardable.} =
        let vectorUtil: VectorUtil = VectorUtil.getInstance()
        let size: int32 = vectorUtil.getSize(vector)
        this.list.clear()
        var textItem: CommandTextItem = nil
        var priorityLimit: int32 = 7
        let displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        let isLargeEnoughDisplayForBigMenu: bool = (displayInfo.isPortrait() and displayInfo.getLastHeight() >= ScreenInfo.getInstance().MEDIUM_WIDTH) or ((not displayInfo.isPortrait()) and displayInfo.getLastWidth() >= ScreenInfo.getInstance().MEDIUM_WIDTH)
        if (not isLargeEnoughDisplayForBigMenu) and size > 3:
            priorityLimit = 3
        var command: Command = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                command = Command(JObject(vectorUtil.elementAt(vector, index)))
                if command.getPriority() < priorityLimit:
                    var aBoolean: bool = jUnboxBoolean(this.visitorInterface.visit(command))
                    if aBoolean.booleanValue():
                        textItem = newCommandTextItem(command, ImageItem.LAYOUT_DEFAULT, StringUtil.getInstance().EMPTY_STRING, backgroundBasicColor, foregroundBasicColor)
                        this.list.add(textItem)
        let textItemArray: JArray[ABCustomItem] = newJArray[ABCustomItem](this.list.size(), default(ABCustomItem))
        let size2: int32 = textItemArray.length
        block:
            var index: int32 = 0
            while index < size2:
                defer: index = index +% 1
                textItemArray[index] = ABCustomItem(JObject(this.list.objectArray[index]))
        return textItemArray

