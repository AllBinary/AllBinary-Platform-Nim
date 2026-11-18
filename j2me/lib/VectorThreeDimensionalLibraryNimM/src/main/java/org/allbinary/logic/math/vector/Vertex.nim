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
# package org.allbinary.logic.math.vector

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule

type
    Vertex* = ref object of JObject
        x*: BasicDecimal
        y*: BasicDecimal
        z*: BasicDecimal

proc newVertex*(): Vertex
proc initVertex*(this: Vertex)
method toString*(this: Vertex): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/math/PositionStrings as PositionStringsModule
export PositionStringsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsVertex(this: Vertex) =
    this.x = newBasicDecimal(0)
    this.y = newBasicDecimal(0)
    this.z = newBasicDecimal(0)
    discard

proc initVertex*(this: Vertex) =
        this.initFieldsVertex()
        discard

proc newVertex*(): Vertex =
    result = Vertex()
    initVertex(result)

method toString*(this: Vertex): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        var positionStrings: PositionStrings = PositionStrings.getInstance()
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.append(this.x.toString())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.append(this.y.toString())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.append(this.z.toString())
        return stringBuffer.toString()

