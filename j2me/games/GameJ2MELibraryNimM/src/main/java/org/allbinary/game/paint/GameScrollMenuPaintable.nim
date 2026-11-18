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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/ColorChangeListener as ColorChangeListenerModule
export ColorChangeListenerModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/game/paint/BasicGameDemoPaintable as BasicGameDemoPaintableModule
export BasicGameDemoPaintableModule

type
    GameScrollMenuPaintable* = ref object of BasicGameDemoPaintable

converter jAsColorChangeListener*(value: GameScrollMenuPaintable): ColorChangeListener = cast[ColorChangeListener](value)
proc newGameScrollMenuPaintable*(mainDemoStatePaintable: Paintable, ownershipPaintable: Paintable, helpPaintableInterface: Paintable, basicColor: BasicColor): GameScrollMenuPaintable
proc initGameScrollMenuPaintable*(this: GameScrollMenuPaintable, mainDemoStatePaintable: Paintable, ownershipPaintable: Paintable, helpPaintableInterface: Paintable, basicColor: BasicColor)
method setState*(this: GameScrollMenuPaintable, state: int32)
method onEvent*(this: GameScrollMenuPaintable, eventObject: AllBinaryEventObject)
method setColor*(this: GameScrollMenuPaintable, basicColor: BasicColor) {.base.}
import org/allbinary/graphics/color/ColorChangeEventHandler as ColorChangeEventHandlerModule
export ColorChangeEventHandlerModule
import org/allbinary/graphics/form/FormPaintable as FormPaintableModule
export FormPaintableModule
import org/allbinary/graphics/form/ScrollSelectionForm as ScrollSelectionFormModule
export ScrollSelectionFormModule
import org/allbinary/graphics/form/item/ABStringComponent as ABStringComponentModule
export ABStringComponentModule
import org/allbinary/graphics/form/item/ABTextItem as ABTextItemModule
export ABTextItemModule
import org/allbinary/game/paint/MainGameDemoStatePaintable as MainGameDemoStatePaintableModule
export MainGameDemoStatePaintableModule


proc initGameScrollMenuPaintable*(this: GameScrollMenuPaintable, mainDemoStatePaintable: Paintable, ownershipPaintable: Paintable, helpPaintableInterface: Paintable, basicColor: BasicColor) =
        initBasicGameDemoPaintable(this, mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
        this.setColor(basicColor)
        ColorChangeEventHandler.getInstance().addListenerInterface(this)

proc newGameScrollMenuPaintable*(mainDemoStatePaintable: Paintable, ownershipPaintable: Paintable, helpPaintableInterface: Paintable, basicColor: BasicColor): GameScrollMenuPaintable =
    result = GameScrollMenuPaintable()
    initGameScrollMenuPaintable(result, mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface, basicColor)

method setState*(this: GameScrollMenuPaintable, state: int32) =
        this.setCurrentStatePaintable(this.getMainDemoStatePaintable())

method onEvent*(this: GameScrollMenuPaintable, eventObject: AllBinaryEventObject) =
        discard

method setColor*(this: GameScrollMenuPaintable, basicColor: BasicColor) {.base.} =
        let mainGameDemoStatePaintable: MainGameDemoStatePaintable = MainGameDemoStatePaintable(JObject(this.getMainDemoStatePaintable()))
        let formPaintable: FormPaintable = FormPaintable(JObject(mainGameDemoStatePaintable.getMenuPaintableInterface()))
        let scrollSelectionForm: ScrollSelectionForm = ScrollSelectionForm(JObject(formPaintable.getForm()))
        mainGameDemoStatePaintable.getOwnershipPaintableInterface().setBasicColorP(basicColor)
        scrollSelectionForm.setButtonBasicColor(basicColor)
        var item: ABTextItem = nil
        var stringComponent: ABStringComponent = nil
        block:
            var index: int32 = scrollSelectionForm.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                item = ABTextItem(JObject(scrollSelectionForm.get(index)))
                stringComponent = item.getLabelStringComponent()
                if (not jIsNil(stringComponent)):
                    stringComponent.setForegroundBasicColor(basicColor)

when declared(newGameScrollMenuPaintableHook4):
    newGameScrollMenuPaintableHook4 = proc (mainDemoStatePaintable: Paintable, ownershipPaintable: Paintable, helpPaintableInterface: Paintable, basicColor: BasicColor): BasicGameDemoPaintable = newGameScrollMenuPaintable(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface, basicColor)

