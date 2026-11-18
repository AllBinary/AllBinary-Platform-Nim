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
# package org.allbinary.game.ag.vector

{.warning[UnusedImport]: off.}
import allbinary_java

type
    MineVectorData* = ref object of JObject

proc newMineVectorData*(): MineVectorData
proc initMineVectorData*(this: MineVectorData)

var MineVectorData_pointsValue: JArray[JArray[JArray[int32]]]
var MineVectorData_pointsSet = false
proc points*(t: typedesc[MineVectorData]): JArray[JArray[JArray[int32]]] =
    if not MineVectorData_pointsSet:
        MineVectorData_pointsSet = true
        MineVectorData_pointsValue = newJArrayFrom[JArray[JArray[int32]]]([newJArrayFrom[JArray[int32]]([newJArrayFrom[int32]([10, 5]), newJArrayFrom[int32]([2, 6]), newJArrayFrom[int32]([1000, 1000]), newJArrayFrom[int32]([2, 2]), newJArrayFrom[int32]([10, 9]), newJArrayFrom[int32]([1000, 1000]), newJArrayFrom[int32]([10, 2]), newJArrayFrom[int32]([2, 9]), newJArrayFrom[int32]([1000, 1000]), newJArrayFrom[int32]([2, 5]), newJArrayFrom[int32]([10, 6]), newJArrayFrom[int32]([1000, 1000]), newJArrayFrom[int32]([7, 9]), newJArrayFrom[int32]([5, 2]), newJArrayFrom[int32]([1000, 1000]), newJArrayFrom[int32]([7, 2]), newJArrayFrom[int32]([5, 9]), newJArrayFrom[int32]([1000, 1000])])])
    MineVectorData_pointsValue
proc `points=`*(t: typedesc[MineVectorData], value: JArray[JArray[JArray[int32]]]) =
    MineVectorData_pointsSet = true
    MineVectorData_pointsValue = value

proc initMineVectorData*(this: MineVectorData) =
        discard
        discard

proc newMineVectorData*(): MineVectorData =
    result = MineVectorData()
    initMineVectorData(result)

