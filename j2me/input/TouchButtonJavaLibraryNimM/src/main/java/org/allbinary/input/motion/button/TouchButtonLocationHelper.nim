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

type
    TouchButtonLocationHelper* = ref object of JObject
        totalColumns*: int32
        totalRows*: int32
        columnsRemainder*: int32
        rowsRemainder*: int32
        columnsRemainderHalf*: int32
        rowsRemainderHalf*: int32

proc newTouchButtonLocationHelper*(): TouchButtonLocationHelper
proc initTouchButtonLocationHelper*(this: TouchButtonLocationHelper)
method getTotalColumns*(this: TouchButtonLocationHelper): int32 {.base, discardable.}
method getTotalRows*(this: TouchButtonLocationHelper): int32 {.base, discardable.}
method getColumnsRemainder*(this: TouchButtonLocationHelper): int32 {.base, discardable.}
method getRowsRemainder*(this: TouchButtonLocationHelper): int32 {.base, discardable.}
method getColumnsRemainderHalf*(this: TouchButtonLocationHelper): int32 {.base, discardable.}
method getRowsRemainderHalf*(this: TouchButtonLocationHelper): int32 {.base, discardable.}
method toString*(this: TouchButtonLocationHelper): string {.discardable.}
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/input/motion/button/CommonButtons as CommonButtonsModule
export CommonButtonsModule


# Java field initializers run after the base initializer
proc initFieldsTouchButtonLocationHelper(this: TouchButtonLocationHelper) =
    
    
    
    
    
    
    discard

proc initTouchButtonLocationHelper*(this: TouchButtonLocationHelper) =
        this.initFieldsTouchButtonLocationHelper()
        var buttonSize: int32 = CommonButtons.getInstance().STANDARD_BUTTON_SIZE
        var displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        this.totalColumns = jround(float32(displayInfo.getLastWidth()) / float32(buttonSize))
        this.totalRows = jround(float32(displayInfo.getLastHeight()) / float32(buttonSize))
        this.columnsRemainder = displayInfo.getLastWidth() mod buttonSize
        this.columnsRemainderHalf = (ashr(this.columnsRemainder, 1))
        this.rowsRemainder = displayInfo.getLastHeight() mod buttonSize
        this.rowsRemainderHalf = (ashr(this.rowsRemainder, 1))

proc newTouchButtonLocationHelper*(): TouchButtonLocationHelper =
    result = TouchButtonLocationHelper()
    initTouchButtonLocationHelper(result)

method getTotalColumns*(this: TouchButtonLocationHelper): int32 {.base, discardable.} =
        return this.totalColumns

method getTotalRows*(this: TouchButtonLocationHelper): int32 {.base, discardable.} =
        return this.totalRows

method getColumnsRemainder*(this: TouchButtonLocationHelper): int32 {.base, discardable.} =
        return this.columnsRemainder

method getRowsRemainder*(this: TouchButtonLocationHelper): int32 {.base, discardable.} =
        return this.rowsRemainder

method getColumnsRemainderHalf*(this: TouchButtonLocationHelper): int32 {.base, discardable.} =
        return this.columnsRemainderHalf

method getRowsRemainderHalf*(this: TouchButtonLocationHelper): int32 {.base, discardable.} =
        return this.rowsRemainderHalf

method toString*(this: TouchButtonLocationHelper): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("totalColumns: ")
        stringBuffer.appendint(this.totalColumns)
        stringBuffer.append(" totalRows: ")
        stringBuffer.appendint(this.totalRows)
        stringBuffer.append(" columnsRemainder: ")
        stringBuffer.appendint(this.columnsRemainder)
        stringBuffer.append(" rowsRemainder: ")
        stringBuffer.appendint(this.rowsRemainder)
        stringBuffer.append(" columnsRemainderHalf: ")
        stringBuffer.appendint(this.columnsRemainderHalf)
        stringBuffer.append(" rowsRemainderHalf: ")
        stringBuffer.appendint(this.rowsRemainderHalf)
        return stringBuffer.toString()

