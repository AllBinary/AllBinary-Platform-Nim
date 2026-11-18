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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/paint/InitUpdatePaintable as InitUpdatePaintableModule
export InitUpdatePaintableModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    OverlayPaintable* = ref object of InitUpdatePaintable
        logUtil*: LogUtil

proc newOverlayPaintable*(): OverlayPaintable
proc initOverlayPaintable*(this: OverlayPaintable)
method update*(this: OverlayPaintable)
method paint*(this: OverlayPaintable, graphics: Graphics)
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsOverlayPaintable(this: OverlayPaintable) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initOverlayPaintable*(this: OverlayPaintable) =
        initInitUpdatePaintable(this)
        this.initFieldsOverlayPaintable()
        discard

proc newOverlayPaintable*(): OverlayPaintable =
    result = OverlayPaintable()
    initOverlayPaintable(result)

method update*(this: OverlayPaintable) =
        try:
            discard
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e)

method paint*(this: OverlayPaintable, graphics: Graphics) =
        discard

when declared(newOverlayPaintableHook0):
    newOverlayPaintableHook0 = proc (): InitUpdatePaintable = newOverlayPaintable()

