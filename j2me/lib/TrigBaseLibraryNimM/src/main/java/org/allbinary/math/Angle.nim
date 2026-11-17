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
    Angle* = ref object of JObject
        value*: int16

proc newAngle*(angle: int16): Angle
proc initAngle*(this: Angle, angle: int16)
method getValue*(this: Angle): int16 {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsAngle(this: Angle) =
    
    discard

proc initAngle*(this: Angle, angle: int16) =
        this.initFieldsAngle()
        this.value = angle

proc newAngle*(angle: int16): Angle =
    result = Angle()
    initAngle(result, angle)

method getValue*(this: Angle): int16 {.base, discardable.} =
        return this.value

