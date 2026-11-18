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

type
    Direction* = ref object of JObject
        name*: string
        otherName*: string
        value*: int32
        frameFactor*: int32

proc newDirection*(name: string, otherName: string, value: int32, frameFactor: int32): Direction
proc initDirection*(this: Direction, name: string, otherName: string, value: int32, frameFactor: int32)
proc getInstance*(t: typedesc[Direction], direction: int32): Direction {.discardable.}
method getValue*(this: Direction): int32 {.base, discardable.}
method getFrameFactor*(this: Direction): int32 {.base, discardable.}
method getOtherName*(this: Direction): string {.base, discardable.}
method getName*(this: Direction): string {.base, discardable.}
method toString*(this: Direction): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

var Direction_directionArrayValue: JArray[Direction]
var Direction_directionArraySet = false
proc directionArray*(t: typedesc[Direction]): JArray[Direction] =
    if not Direction_directionArraySet:
        Direction_directionArraySet = true
        Direction_directionArrayValue = newJArray[Direction](13, default(Direction))
    Direction_directionArrayValue
proc `directionArray=`*(t: typedesc[Direction], value: JArray[Direction]) =
    Direction_directionArraySet = true
    Direction_directionArrayValue = value

# Java field initializers run after the base initializer
proc initFieldsDirection(this: Direction) =
    
    
    
    
    discard

proc initDirection*(this: Direction, name: string, otherName: string, value: int32, frameFactor: int32) =
        this.initFieldsDirection()
        this.name = name
        this.otherName = otherName
        this.value = value
        this.frameFactor = frameFactor
        Direction.directionArray[value] = this

proc newDirection*(name: string, otherName: string, value: int32, frameFactor: int32): Direction =
    result = Direction()
    initDirection(result, name, otherName, value, frameFactor)

proc getInstance*(t: typedesc[Direction], direction: int32): Direction {.discardable.} =
        return Direction.directionArray[direction]

method getValue*(this: Direction): int32 {.base, discardable.} =
        return this.value

method getFrameFactor*(this: Direction): int32 {.base, discardable.} =
        return this.frameFactor

method getOtherName*(this: Direction): string {.base, discardable.} =
        return this.otherName

method getName*(this: Direction): string {.base, discardable.} =
        return this.name

method toString*(this: Direction): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("Direction: ")
        stringBuffer.append(this.getName())
        stringBuffer.append(" Or: ")
        stringBuffer.append(this.getOtherName())
        stringBuffer.append(" Value: ")
        stringBuffer.appendint(this.value)
        return stringBuffer.toString()

