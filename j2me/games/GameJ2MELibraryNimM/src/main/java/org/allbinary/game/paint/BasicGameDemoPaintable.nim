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
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/graphics/paint/StatePaintable as StatePaintableModule
export StatePaintableModule

type
    BasicGameDemoPaintable* = ref object of StatePaintable
        mainDemoStatePaintable*: Paintable
        ownershipPaintable*: Paintable
        helpPaintableInterface*: Paintable
        currentStatePaintable*: Paintable

proc newBasicGameDemoPaintable*(mainDemoStatePaintable: Paintable, ownershipPaintable: Paintable, helpPaintableInterface: Paintable): BasicGameDemoPaintable
proc initBasicGameDemoPaintable*(this: BasicGameDemoPaintable, mainDemoStatePaintable: Paintable, ownershipPaintable: Paintable, helpPaintableInterface: Paintable)
method setState*(this: BasicGameDemoPaintable, state: int32)
method paint*(this: BasicGameDemoPaintable, graphics: Graphics)
method getHelpPaintableInterface*(this: BasicGameDemoPaintable): Paintable {.base, discardable.}
method setCurrentStatePaintable*(this: BasicGameDemoPaintable, currentStatePaintable: Paintable) {.base.}
method getCurrentStatePaintable*(this: BasicGameDemoPaintable): Paintable {.base, discardable.}
method getMainDemoStatePaintable*(this: BasicGameDemoPaintable): Paintable {.base, discardable.}
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule


# Java field initializers run after the base initializer
proc initFieldsBasicGameDemoPaintable(this: BasicGameDemoPaintable) =
    
    
    
    this.currentStatePaintable = NullPaintable.getInstance()
    discard

proc initBasicGameDemoPaintable*(this: BasicGameDemoPaintable, mainDemoStatePaintable: Paintable, ownershipPaintable: Paintable, helpPaintableInterface: Paintable) =
        initStatePaintable(this)
        this.initFieldsBasicGameDemoPaintable()
        this.mainDemoStatePaintable = mainDemoStatePaintable
        this.setCurrentStatePaintable(NullPaintable.getInstance())
        this.ownershipPaintable = ownershipPaintable
        this.helpPaintableInterface = helpPaintableInterface

proc newBasicGameDemoPaintable*(mainDemoStatePaintable: Paintable, ownershipPaintable: Paintable, helpPaintableInterface: Paintable): BasicGameDemoPaintable =
    result = BasicGameDemoPaintable()
    initBasicGameDemoPaintable(result, mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)

method setState*(this: BasicGameDemoPaintable, state: int32) =
        if state == 0:
            this.setCurrentStatePaintable(this.getMainDemoStatePaintable())
        elif state == 1:
            this.setCurrentStatePaintable(this.helpPaintableInterface)
        else:
            this.setCurrentStatePaintable(this.ownershipPaintable)

method paint*(this: BasicGameDemoPaintable, graphics: Graphics) =
        this.getCurrentStatePaintable().paint(graphics)

method getHelpPaintableInterface*(this: BasicGameDemoPaintable): Paintable {.base, discardable.} =
        return this.helpPaintableInterface

method setCurrentStatePaintable*(this: BasicGameDemoPaintable, currentStatePaintable: Paintable) {.base.} =
        this.currentStatePaintable = currentStatePaintable

method getCurrentStatePaintable*(this: BasicGameDemoPaintable): Paintable {.base, discardable.} =
        return this.currentStatePaintable

method getMainDemoStatePaintable*(this: BasicGameDemoPaintable): Paintable {.base, discardable.} =
        return this.mainDemoStatePaintable

when declared(newBasicGameDemoPaintableHook3):
    newBasicGameDemoPaintableHook3 = proc (mainDemoStatePaintable: Paintable, ownershipPaintable: Paintable, helpPaintableInterface: Paintable): StatePaintable = newBasicGameDemoPaintable(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)

