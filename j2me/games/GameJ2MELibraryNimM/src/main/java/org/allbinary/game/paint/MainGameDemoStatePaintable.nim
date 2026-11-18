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

type
    MainGameDemoStatePaintable* = ref object of Paintable
        ownershipPaintableInterface*: Paintable
        menuPaintableInterface*: Paintable

proc newMainGameDemoStatePaintable*(ownershipPaintableInterface: Paintable, menuPaintableInterface: Paintable): MainGameDemoStatePaintable
proc initMainGameDemoStatePaintable*(this: MainGameDemoStatePaintable, ownershipPaintableInterface: Paintable, menuPaintableInterface: Paintable)
method paint*(this: MainGameDemoStatePaintable, graphics: Graphics)
method getOwnershipPaintableInterface*(this: MainGameDemoStatePaintable): Paintable {.base, discardable.}
method getMenuPaintableInterface*(this: MainGameDemoStatePaintable): Paintable {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsMainGameDemoStatePaintable(this: MainGameDemoStatePaintable) =
    
    
    discard

proc initMainGameDemoStatePaintable*(this: MainGameDemoStatePaintable, ownershipPaintableInterface: Paintable, menuPaintableInterface: Paintable) =
        initPaintable(this)
        this.initFieldsMainGameDemoStatePaintable()
        this.ownershipPaintableInterface = ownershipPaintableInterface
        this.menuPaintableInterface = menuPaintableInterface

proc newMainGameDemoStatePaintable*(ownershipPaintableInterface: Paintable, menuPaintableInterface: Paintable): MainGameDemoStatePaintable =
    result = MainGameDemoStatePaintable()
    initMainGameDemoStatePaintable(result, ownershipPaintableInterface, menuPaintableInterface)

method paint*(this: MainGameDemoStatePaintable, graphics: Graphics) =
        this.menuPaintableInterface.paint(graphics)
        this.ownershipPaintableInterface.paint(graphics)

method getOwnershipPaintableInterface*(this: MainGameDemoStatePaintable): Paintable {.base, discardable.} =
        return this.ownershipPaintableInterface

method getMenuPaintableInterface*(this: MainGameDemoStatePaintable): Paintable {.base, discardable.} =
        return this.menuPaintableInterface

when declared(newMainGameDemoStatePaintableHook2):
    newMainGameDemoStatePaintableHook2 = proc (ownershipPaintableInterface: Paintable, menuPaintableInterface: Paintable): Paintable = newMainGameDemoStatePaintable(ownershipPaintableInterface, menuPaintableInterface)

