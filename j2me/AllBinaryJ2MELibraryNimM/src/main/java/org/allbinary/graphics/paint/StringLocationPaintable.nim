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
# package org.allbinary.graphics.paint

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/paint/LocationPaintable as LocationPaintableModule
export LocationPaintableModule

type
    StringLocationPaintable* = ref object of LocationPaintable
        value*: string

proc newStringLocationPaintable*(value: string): StringLocationPaintable
proc initStringLocationPaintable*(this: StringLocationPaintable, value: string)
method paintXY*(this: StringLocationPaintable, graphics: Graphics, x: int32, y: int32)


# Java field initializers run after the base initializer
proc initFieldsStringLocationPaintable(this: StringLocationPaintable) =
    
    discard

proc initStringLocationPaintable*(this: StringLocationPaintable, value: string) =
        initLocationPaintable(this)
        this.initFieldsStringLocationPaintable()
        this.value = value

proc newStringLocationPaintable*(value: string): StringLocationPaintable =
    result = StringLocationPaintable()
    initStringLocationPaintable(result, value)

method paintXY*(this: StringLocationPaintable, graphics: Graphics, x: int32, y: int32) =
        graphics.drawString(this.value, x, y, 0)

when declared(newStringLocationPaintableHook1):
    newStringLocationPaintableHook1 = proc (value: string): LocationPaintable = newStringLocationPaintable(value)

