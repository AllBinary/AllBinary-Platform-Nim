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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/graphics/CellPosition as CellPositionModule
export CellPositionModule

type
    CellPositionFactory* = ref object of JObject
        logUtil*: LogUtil
        NONE*: CellPosition
        cellPositionArray*: JArray[JArray[CellPosition]]
        columns*: int32
        rows*: int32

proc newCellPositionFactory*(): CellPositionFactory
proc initCellPositionFactory*(this: CellPositionFactory)
proc getInstance*(t: typedesc[CellPositionFactory]): CellPositionFactory {.discardable.}
method init*(this: CellPositionFactory, columns: int32, rows: int32) {.base.}
method getInstanceColRow*(this: CellPositionFactory, i_column: int32, i_row: int32): CellPosition {.base, discardable.}
method createInstance*(this: CellPositionFactory, i_column: int32, i_row: int32): CellPosition {.base, discardable.}
method getColumns*(this: CellPositionFactory): int32 {.base, discardable.}
method getRows*(this: CellPositionFactory): int32 {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var CellPositionFactory_SINGLETONValue: CellPositionFactory
var CellPositionFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[CellPositionFactory]): CellPositionFactory =
    if not CellPositionFactory_SINGLETONSet:
        CellPositionFactory_SINGLETONSet = true
        CellPositionFactory_SINGLETONValue = newCellPositionFactory()
    CellPositionFactory_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[CellPositionFactory], value: CellPositionFactory) =
    CellPositionFactory_SINGLETONSet = true
    CellPositionFactory_SINGLETONValue = value

# Java field initializers run after the base initializer
proc initFieldsCellPositionFactory(this: CellPositionFactory) =
    this.logUtil = LogUtil.getInstance()
    this.NONE = newCellPosition(-1, -1, -1, -1)
    this.cellPositionArray = newJArrayOf[JArray[CellPosition]](0, proc (): JArray[CellPosition] = newJArray[CellPosition](0, default(CellPosition)))
    this.columns = 0
    this.rows = 0
    discard

proc getInstance*(t: typedesc[CellPositionFactory]): CellPositionFactory {.discardable.} =
        return CellPositionFactory.SINGLETON

proc initCellPositionFactory*(this: CellPositionFactory) =
        this.initFieldsCellPositionFactory()
        discard

proc newCellPositionFactory*(): CellPositionFactory =
    result = CellPositionFactory()
    initCellPositionFactory(result)

method init*(this: CellPositionFactory, columns: int32, rows: int32) {.base.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("Init: columns: ")
        stringBuffer.appendint(columns)
        stringBuffer.append(" rows: ")
        stringBuffer.appendint(rows)
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT)
        this.cellPositionArray = newJArrayOf[JArray[CellPosition]](columns, proc (): JArray[CellPosition] = newJArray[CellPosition](rows, default(CellPosition)))
        this.columns = columns
        this.rows = rows
        block:
            var column: int32 = 0
            while column < columns:
                defer: column = column +% 1
                block:
                    var row: int32 = 0
                    while row < rows:
                        defer: row = row +% 1
                        this.createInstance(column, row)

method getInstanceColRow*(this: CellPositionFactory, i_column: int32, i_row: int32): CellPosition {.base, discardable.} =
        try:
            return this.cellPositionArray[i_column][i_row]
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(newStringMaker().append("columns: ").appendint(this.getColumns()).append(" rows: ").appendint(this.getRows()).append(" col: ").appendint(i_column).append(" row: ").appendint(i_row).toString(), this, commonStrings.GET_INSTANCE, e)
            return this.NONE

method createInstance*(this: CellPositionFactory, i_column: int32, i_row: int32): CellPosition {.base, discardable.} =
        var cellPositionCanBeNull: CellPosition = this.cellPositionArray[i_column][i_row]
        if (jIsNil(cellPositionCanBeNull)):
            cellPositionCanBeNull = newCellPosition(i_column, i_row, this.columns, this.rows)
            this.cellPositionArray[i_column][i_row] = cellPositionCanBeNull
        return cellPositionCanBeNull

method getColumns*(this: CellPositionFactory): int32 {.base, discardable.} =
        return this.columns

method getRows*(this: CellPositionFactory): int32 {.base, discardable.} =
        return this.rows

