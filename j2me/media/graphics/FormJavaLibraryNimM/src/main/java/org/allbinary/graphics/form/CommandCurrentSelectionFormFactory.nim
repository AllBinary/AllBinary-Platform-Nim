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
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule
import org/allbinary/graphics/form/ScrollSelectionForm as ScrollSelectionFormModule
export ScrollSelectionFormModule
import org/allbinary/graphics/form/FormType as FormTypeModule
export FormTypeModule

type
    CommandCurrentSelectionFormFactory* = ref object of JObject

proc newCommandCurrentSelectionFormFactory*(): CommandCurrentSelectionFormFactory
proc getInstance*(t: typedesc[CommandCurrentSelectionFormFactory], title: string, items: JArray[ABCustomItem], rectangle: Rectangle, formType: FormType, border: int32, moveForSmallScreen: bool, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ScrollSelectionForm {.discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/TouchFeatureFactory as TouchFeatureFactoryModule
export TouchFeatureFactoryModule
import org/allbinary/graphics/form/ScrollSelectionFormNoneFactory as ScrollSelectionFormNoneFactoryModule
export ScrollSelectionFormNoneFactoryModule
import org/allbinary/graphics/form/CommandCurrentSelectionForm as CommandCurrentSelectionFormModule
export CommandCurrentSelectionFormModule


proc initCommandCurrentSelectionFormFactory*(this: CommandCurrentSelectionFormFactory) =
    discard

proc newCommandCurrentSelectionFormFactory*(): CommandCurrentSelectionFormFactory =
    result = CommandCurrentSelectionFormFactory()
    initCommandCurrentSelectionFormFactory(result)

proc getInstance*(t: typedesc[CommandCurrentSelectionFormFactory], title: string, items: JArray[ABCustomItem], rectangle: Rectangle, formType: FormType, border: int32, moveForSmallScreen: bool, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ScrollSelectionForm {.discardable.} =
        if Features.getInstance().isFeature(TouchFeatureFactory.getInstance().TOUCH_ENABLED):
            let scrollSelectionForm: ScrollSelectionForm = newCommandCurrentSelectionForm(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
            scrollSelectionForm.init(rectangle, formType)
            return scrollSelectionForm
        else:
            return ScrollSelectionFormNoneFactory.getInstance()

