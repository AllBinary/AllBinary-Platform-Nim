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
# package org.allbinary.math

{.warning[UnusedImport]: off.}
import allbinary_java

type
    PositionStrings* = ref object of JObject
        X*: string
        Y*: string
        X_LABEL*: string
        Y_LABEL*: string
        Z_LABEL*: string
        DX_LABEL*: string
        DY_LABEL*: string
        DZ_LABEL*: string

proc newPositionStrings*(): PositionStrings
proc getInstance*(t: typedesc[PositionStrings]): PositionStrings {.discardable.}

var PositionStrings_instanceValue: PositionStrings
var PositionStrings_instanceSet = false
proc instance*(t: typedesc[PositionStrings]): PositionStrings =
    if not PositionStrings_instanceSet:
        PositionStrings_instanceSet = true
        PositionStrings_instanceValue = newPositionStrings()
    PositionStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPositionStrings(this: PositionStrings) =
    this.X = "x"
    this.Y = "y"
    this.X_LABEL = "x: "
    this.Y_LABEL = "y: "
    this.Z_LABEL = "z: "
    this.DX_LABEL = "dx: "
    this.DY_LABEL = "dy: "
    this.DZ_LABEL = "dz: "
    discard

proc initPositionStrings*(this: PositionStrings) =
    this.initFieldsPositionStrings()

proc newPositionStrings*(): PositionStrings =
    result = PositionStrings()
    initPositionStrings(result)

proc getInstance*(t: typedesc[PositionStrings]): PositionStrings {.discardable.} =
        return PositionStrings.instance

