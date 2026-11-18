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
# package org.allbinary.ag.game.vector

{.warning[UnusedImport]: off.}
import allbinary_java

type
    HealthVectorData* = ref object of JObject

proc newHealthVectorData*(): HealthVectorData

var HealthVectorData_pointsValue: JArray[JArray[JArray[int32]]]
var HealthVectorData_pointsSet = false
proc points*(t: typedesc[HealthVectorData]): JArray[JArray[JArray[int32]]] =
    if not HealthVectorData_pointsSet:
        HealthVectorData_pointsSet = true
        HealthVectorData_pointsValue = newJArrayFrom[JArray[JArray[int32]]]([newJArrayFrom[JArray[int32]]([newJArrayFrom[int32]([2, 1]), newJArrayFrom[int32]([3, 2]), newJArrayFrom[int32]([3, 2]), newJArrayFrom[int32]([4, 1]), newJArrayFrom[int32]([4, 1]), newJArrayFrom[int32]([5, 1]), newJArrayFrom[int32]([5, 1]), newJArrayFrom[int32]([6, 2]), newJArrayFrom[int32]([6, 2]), newJArrayFrom[int32]([6, 3]), newJArrayFrom[int32]([6, 3]), newJArrayFrom[int32]([3, 6]), newJArrayFrom[int32]([3, 6]), newJArrayFrom[int32]([0, 3]), newJArrayFrom[int32]([0, 3]), newJArrayFrom[int32]([0, 2]), newJArrayFrom[int32]([0, 2]), newJArrayFrom[int32]([1, 1]), newJArrayFrom[int32]([1, 1]), newJArrayFrom[int32]([2, 1]), newJArrayFrom[int32]([1000, 1000])])])
    HealthVectorData_pointsValue
proc `points=`*(t: typedesc[HealthVectorData], value: JArray[JArray[JArray[int32]]]) =
    HealthVectorData_pointsSet = true
    HealthVectorData_pointsValue = value

proc initHealthVectorData*(this: HealthVectorData) =
    discard

proc newHealthVectorData*(): HealthVectorData =
    result = HealthVectorData()
    initHealthVectorData(result)

