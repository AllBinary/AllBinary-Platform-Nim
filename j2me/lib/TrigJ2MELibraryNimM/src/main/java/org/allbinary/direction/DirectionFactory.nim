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
# package org.allbinary.direction

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/direction/Direction as DirectionModule
export DirectionModule

type
    DirectionFactory* = ref object of JObject
        NAME*: string
        LEFT*: Direction
        RIGHT*: Direction
        DOWN*: Direction
        UP*: Direction
        UP_LEFT*: Direction
        UP_RIGHT*: Direction
        DOWN_LEFT*: Direction
        DOWN_RIGHT*: Direction
        NOT_BORDERED_WITH*: Direction
        NO_DIRECTION*: Direction
        TOP*: Direction
        BOTTOM*: Direction
        ALL_DIRECTION*: Direction

proc newDirectionFactory*(): DirectionFactory
proc initDirectionFactory*(this: DirectionFactory)
proc getInstance*(t: typedesc[DirectionFactory]): DirectionFactory {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonPhoneStrings as CommonPhoneStringsModule
export CommonPhoneStringsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule

var DirectionFactory_instanceValue: DirectionFactory
var DirectionFactory_instanceSet = false
proc instance*(t: typedesc[DirectionFactory]): DirectionFactory =
    if not DirectionFactory_instanceSet:
        DirectionFactory_instanceSet = true
        DirectionFactory_instanceValue = newDirectionFactory()
    DirectionFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsDirectionFactory(this: DirectionFactory) =
    this.NAME = "DIRECTION"
    this.LEFT = newDirection(CommonPhoneStrings.getInstance().LEFT, "WEST", 0, 1)
    this.RIGHT = newDirection(CommonPhoneStrings.getInstance().RIGHT, "EAST", 1, 0)
    this.DOWN = newDirection(CommonPhoneStrings.getInstance().DOWN, "SOUTH", 2, 0)
    this.UP = newDirection(CommonPhoneStrings.getInstance().UP, "NORTH", 3, 0)
    
    
    
    
    this.NOT_BORDERED_WITH = newDirection("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", 8, 0)
    this.NO_DIRECTION = newDirection("NO_DIRECTION", "NO_DIRECTION", 9, 0)
    this.TOP = newDirection("TOP", "TOP", 10, 0)
    this.BOTTOM = newDirection("BOTTOM", "BOTTOM", 11, 0)
    this.ALL_DIRECTION = newDirection("ALL_DIRECTION", "ALL_DIRECTION", 12, 0)
    discard

proc getInstance*(t: typedesc[DirectionFactory]): DirectionFactory {.discardable.} =
        return DirectionFactory.instance

proc initDirectionFactory*(this: DirectionFactory) =
        this.initFieldsDirectionFactory()
        var stringBuffer: StringMaker = newStringMaker()
        var commonSeps: CommonSeps = CommonSeps.getInstance()
        this.UP_LEFT = newDirection("UP LEFT", stringBuffer.append(this.UP.getOtherName()).append(commonSeps.SPACE).append(this.LEFT.getOtherName()).toString(), 4, 0)
        stringBuffer.delete(0, stringBuffer.length())
        this.UP_RIGHT = newDirection("UP RIGHT", stringBuffer.append(this.UP.getOtherName()).append(commonSeps.SPACE).append(this.RIGHT.getOtherName()).toString(), 5, 0)
        stringBuffer.delete(0, stringBuffer.length())
        this.DOWN_LEFT = newDirection("DOWN LEFT", stringBuffer.append(this.DOWN.getOtherName()).append(commonSeps.SPACE).append(this.LEFT.getOtherName()).toString(), 6, 0)
        stringBuffer.delete(0, stringBuffer.length())
        this.DOWN_RIGHT = newDirection("DOWN RIGHT", stringBuffer.append(this.DOWN.getOtherName()).append(commonSeps.SPACE).append(this.RIGHT.getOtherName()).toString(), 7, 0)

proc newDirectionFactory*(): DirectionFactory =
    result = DirectionFactory()
    initDirectionFactory(result)

