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
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graph/V as VModule
export VModule

type
    CellPosition* = ref object of V
        id*: int32
        column*: int32
        row*: int32

proc newCellPosition*(column: int32, row: int32, columns: int32, rows: int32): CellPosition
proc initCellPosition*(this: CellPosition, column: int32, row: int32, columns: int32, rows: int32)
method getColumn*(this: CellPosition): int32 {.base, discardable.}
method getRow*(this: CellPosition): int32 {.base, discardable.}
method toString*(this: CellPosition): string {.discardable.}
proc toStringCellPosition*(t: typedesc[CellPosition], basicGeographicMapCellPosition: CellPosition): string {.discardable.}
proc toStringColRow*(t: typedesc[CellPosition], i_column: int32, i_row: int32): string {.discardable.}
method getId*(this: CellPosition): int32 {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsCellPosition(this: CellPosition) =
    
    
    
    discard

proc initCellPosition*(this: CellPosition, column: int32, row: int32, columns: int32, rows: int32) =
        initV(this)
        this.initFieldsCellPosition()
        this.column = column
        this.row = row
        this.id = (row *% columns) +% column

proc newCellPosition*(column: int32, row: int32, columns: int32, rows: int32): CellPosition =
    result = CellPosition()
    initCellPosition(result, column, row, columns, rows)

method getColumn*(this: CellPosition): int32 {.base, discardable.} =
        return this.column

method getRow*(this: CellPosition): int32 {.base, discardable.} =
        return this.row

method toString*(this: CellPosition): string {.discardable.} =
        return CellPosition.toStringColRow(this.getColumn(), this.getRow())

proc toStringCellPosition*(t: typedesc[CellPosition], basicGeographicMapCellPosition: CellPosition): string {.discardable.} =
        return CellPosition.toStringColRow(basicGeographicMapCellPosition.getColumn(), basicGeographicMapCellPosition.getRow())

proc toStringColRow*(t: typedesc[CellPosition], i_column: int32, i_row: int32): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        var commonSeps: CommonSeps = CommonSeps.getInstance()
        stringBuffer.append(commonSeps.PARENTHESIS_OPEN)
        stringBuffer.appendint(i_column)
        stringBuffer.append(commonSeps.COMMA)
        stringBuffer.appendint(i_row)
        stringBuffer.append(commonSeps.PARENTHESIS_CLOSE)
        return stringBuffer.toString()

method getId*(this: CellPosition): int32 {.discardable.} =
        return this.id

when declared(newCellPositionHook4):
    newCellPositionHook4 = proc (column: int32, row: int32, columns: int32, rows: int32): V = newCellPosition(column, row, columns, rows)

