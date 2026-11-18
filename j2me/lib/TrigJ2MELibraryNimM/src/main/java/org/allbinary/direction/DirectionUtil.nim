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
import org/allbinary/math/Angle as AngleModule
export AngleModule
import org/allbinary/direction/Direction as DirectionModule
export DirectionModule

type
    DirectionUtil* = ref object of JObject
        directionArray*: JArray[Angle]
        directionArray2*: JArray[Angle]

proc newDirectionUtil*(): DirectionUtil
proc initDirectionUtil*(this: DirectionUtil)
proc getInstance*(t: typedesc[DirectionUtil]): DirectionUtil {.discardable.}
method getAngle*(this: DirectionUtil, direction: Direction): Angle {.base, discardable.}
method getFrameAngle*(this: DirectionUtil, direction: Direction): Angle {.base, discardable.}
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/direction/DirectionFactory as DirectionFactoryModule
export DirectionFactoryModule

var DirectionUtil_instanceValue: DirectionUtil
var DirectionUtil_instanceSet = false
proc instance*(t: typedesc[DirectionUtil]): DirectionUtil =
    if not DirectionUtil_instanceSet:
        DirectionUtil_instanceSet = true
        DirectionUtil_instanceValue = newDirectionUtil()
    DirectionUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsDirectionUtil(this: DirectionUtil) =
    this.directionArray = newJArray[Angle](10, default(Angle))
    this.directionArray2 = newJArray[Angle](10, default(Angle))
    discard

proc getInstance*(t: typedesc[DirectionUtil]): DirectionUtil {.discardable.} =
        return DirectionUtil.instance

proc initDirectionUtil*(this: DirectionUtil) =
        this.initFieldsDirectionUtil()
        var angleFactory: AngleFactory = AngleFactory.getInstance()
        var directionFactory: DirectionFactory = DirectionFactory.getInstance()
        this.directionArray[directionFactory.LEFT.getValue()] = angleFactory.LEFT
        this.directionArray[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT
        this.directionArray[directionFactory.UP.getValue()] = angleFactory.UP
        this.directionArray[directionFactory.DOWN.getValue()] = angleFactory.DOWN
        this.directionArray2[directionFactory.LEFT.getValue()] = angleFactory.LEFT
        this.directionArray2[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT
        this.directionArray2[directionFactory.UP.getValue()] = angleFactory.UP
        this.directionArray2[directionFactory.DOWN.getValue()] = angleFactory.DOWN

proc newDirectionUtil*(): DirectionUtil =
    result = DirectionUtil()
    initDirectionUtil(result)

method getAngle*(this: DirectionUtil, direction: Direction): Angle {.base, discardable.} =
        return this.directionArray2[direction.getValue()]

method getFrameAngle*(this: DirectionUtil, direction: Direction): Angle {.base, discardable.} =
        return this.directionArray[direction.getValue()]

