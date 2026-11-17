#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
import org/allbinary/math/Angle as AngleModule
export AngleModule

type
    NamedAngle* = ref object of Angle
        name*: string

proc newNamedAngle*(angle: int16, name: string): NamedAngle
proc initNamedAngle*(this: NamedAngle, angle: int16, name: string)


# Java field initializers run after the base initializer
proc initFieldsNamedAngle(this: NamedAngle) =
    
    discard

proc initNamedAngle*(this: NamedAngle, angle: int16, name: string) =
        initAngle(this, angle)
        this.initFieldsNamedAngle()
        this.name = name

proc newNamedAngle*(angle: int16, name: string): NamedAngle =
    result = NamedAngle()
    initNamedAngle(result, angle, name)

when declared(newNamedAngleHook2):
    newNamedAngleHook2 = proc (angle: int16, name: string): Angle = newNamedAngle(angle, name)

