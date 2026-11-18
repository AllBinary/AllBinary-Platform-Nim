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
# package org.allbinary.game.ag.layer.pickup.points

{.warning[UnusedImport]: off.}
import allbinary_java

type
    PointsResources* = ref object of JObject
        RESOURCE*: string
        RESOURCE_2*: string
        RESOURCE_3*: string
        RESOURCE_4*: string

proc newPointsResources*(): PointsResources
proc initPointsResources*(this: PointsResources)
proc getInstance*(t: typedesc[PointsResources]): PointsResources {.discardable.}

var PointsResources_SINGLETONValue: PointsResources
var PointsResources_SINGLETONSet = false
proc SINGLETON*(t: typedesc[PointsResources]): PointsResources =
    if not PointsResources_SINGLETONSet:
        PointsResources_SINGLETONSet = true
        PointsResources_SINGLETONValue = newPointsResources()
    PointsResources_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsPointsResources(this: PointsResources) =
    this.RESOURCE = "points_drop_20_by_20.png"
    this.RESOURCE_2 = "points_2_drop_20_by_20.png"
    this.RESOURCE_3 = "points_3_drop_20_by_20.png"
    this.RESOURCE_4 = "points_4_drop_20_by_20.png"
    discard

proc initPointsResources*(this: PointsResources) =
        this.initFieldsPointsResources()
        discard

proc newPointsResources*(): PointsResources =
    result = PointsResources()
    initPointsResources(result)

proc getInstance*(t: typedesc[PointsResources]): PointsResources {.discardable.} =
        return PointsResources.SINGLETON

