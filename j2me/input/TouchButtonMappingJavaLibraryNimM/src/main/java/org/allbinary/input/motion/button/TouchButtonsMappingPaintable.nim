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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/input/motion/button/TouchButtonLocationHelper as TouchButtonLocationHelperModule
export TouchButtonLocationHelperModule

type
    TouchButtonsMappingPaintable* = ref object of Paintable
        logUtil*: LogUtil
        foregroundColor*: int32
        paintableTable*: JArray[JArray[Paintable]]
        touchButtonLocationHelper*: TouchButtonLocationHelper

proc newTouchButtonsMappingPaintable*(basicColor: BasicColor): TouchButtonsMappingPaintable
proc initTouchButtonsMappingPaintable*(this: TouchButtonsMappingPaintable, basicColor: BasicColor)
method init*(this: TouchButtonsMappingPaintable) {.base.}
method createPaintableTable*(this: TouchButtonsMappingPaintable): JArray[JArray[Paintable]] {.base, discardable.}
method paint*(this: TouchButtonsMappingPaintable, graphics: Graphics)
import org/allbinary/graphics/CellPositionFactory as CellPositionFactoryModule
export CellPositionFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/input/motion/button/CommonButtons as CommonButtonsModule
export CommonButtonsModule
import org/allbinary/input/motion/button/TouchButton as TouchButtonModule
export TouchButtonModule
import org/allbinary/input/motion/button/BasicTouchInputFactory as BasicTouchInputFactoryModule
export BasicTouchInputFactoryModule
import org/allbinary/input/motion/button/TouchButtonBlankResource as TouchButtonBlankResourceModule
export TouchButtonBlankResourceModule


# Java field initializers run after the base initializer
proc initFieldsTouchButtonsMappingPaintable(this: TouchButtonsMappingPaintable) =
    this.logUtil = LogUtil.getInstance()
    
    this.paintableTable = newJArrayOf[JArray[Paintable]](0, proc (): JArray[Paintable] = newJArray[Paintable](0, default(Paintable)))
    this.touchButtonLocationHelper = newTouchButtonLocationHelper()
    discard

proc initTouchButtonsMappingPaintable*(this: TouchButtonsMappingPaintable, basicColor: BasicColor) =
        initPaintable(this)
        this.initFieldsTouchButtonsMappingPaintable()
        this.foregroundColor = basicColor.intValue()
        this.init()

proc newTouchButtonsMappingPaintable*(basicColor: BasicColor): TouchButtonsMappingPaintable =
    result = TouchButtonsMappingPaintable()
    initTouchButtonsMappingPaintable(result, basicColor)

method init*(this: TouchButtonsMappingPaintable) {.base.} =
        try:
            this.paintableTable = this.createPaintableTable()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, "updateRectangle", e)

method createPaintableTable*(this: TouchButtonsMappingPaintable): JArray[JArray[Paintable]] {.base, discardable.} =
        var totalColumns: int32 = this.touchButtonLocationHelper.getTotalColumns()
        var totalRows: int32 = this.touchButtonLocationHelper.getTotalRows()
        var paintableTable: JArray[JArray[Paintable]] = newJArrayOf[JArray[Paintable]](totalColumns, proc (): JArray[Paintable] = newJArray[Paintable](totalRows, default(Paintable)))
        var cellPositionFactory: CellPositionFactory = CellPositionFactory.getInstance()
        var commonButtons: CommonButtons = CommonButtons.getInstance()
        block:
            var index: int32 = totalColumns -% 1
            while index >= 0:
                defer: index = index -% 1
                block:
                    var rowIndex: int32 = totalRows -% 1
                    while rowIndex >= 0:
                        defer: rowIndex = rowIndex -% 1
                        this.paintableTable[index][rowIndex] = TouchButton.createButton(BasicTouchInputFactory.getInstance().NONE, TouchButtonBlankResource.getInstance(), commonButtons.NORMAL_BUTTON, cellPositionFactory.getInstanceColRow(index, rowIndex), this.touchButtonLocationHelper.getColumnsRemainderHalf(), this.touchButtonLocationHelper.getRowsRemainderHalf())
        return paintableTable

method paint*(this: TouchButtonsMappingPaintable, graphics: Graphics) =
        var totalColumns: int32 = this.touchButtonLocationHelper.getTotalColumns()
        var totalRows: int32 = this.touchButtonLocationHelper.getTotalRows()
        block:
            var index: int32 = totalColumns -% 1
            while index >= 0:
                defer: index = index -% 1
                block:
                    var rowIndex: int32 = totalRows -% 1
                    while rowIndex >= 0:
                        defer: rowIndex = rowIndex -% 1
                        this.paintableTable[index][rowIndex].paint(graphics)

when declared(newTouchButtonsMappingPaintableHook1):
    newTouchButtonsMappingPaintableHook1 = proc (basicColor: BasicColor): Paintable = newTouchButtonsMappingPaintable(basicColor)

