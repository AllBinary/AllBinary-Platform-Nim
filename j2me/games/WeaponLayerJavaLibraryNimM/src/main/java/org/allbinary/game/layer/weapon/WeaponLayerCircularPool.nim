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
# package org.allbinary.game.layer.weapon

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/combat/weapon/WeaponProperties as WeaponPropertiesModule
export WeaponPropertiesModule
import org/allbinary/game/score/ScoreableInterface as ScoreableInterfaceModule
export ScoreableInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerCircularPool as AllBinaryLayerCircularPoolModule
export AllBinaryLayerCircularPoolModule
import org/allbinary/game/layer/weapon/WeaponLayer as WeaponLayerModule
export WeaponLayerModule

type
    WeaponLayerCircularPool* = ref object of AllBinaryLayerCircularPool

proc newWeaponLayerCircularPool*(): WeaponLayerCircularPool
proc initWeaponLayerCircularPool*(this: WeaponLayerCircularPool)
method getInstanceWeaponLayer*(this: WeaponLayerCircularPool, sourceLayerInterface: AllBinaryLayer, x: int32, y: int32, z: int32, angle: int32, otherAngle: int32, weaponProperties: WeaponProperties, scoreable: ScoreableInterface): WeaponLayer {.base, discardable.}


proc initWeaponLayerCircularPool*(this: WeaponLayerCircularPool) =
        initAllBinaryLayerCircularPool(this)
        discard

proc newWeaponLayerCircularPool*(): WeaponLayerCircularPool =
    result = WeaponLayerCircularPool()
    initWeaponLayerCircularPool(result)

method getInstanceWeaponLayer*(this: WeaponLayerCircularPool, sourceLayerInterface: AllBinaryLayer, x: int32, y: int32, z: int32, angle: int32, otherAngle: int32, weaponProperties: WeaponProperties, scoreable: ScoreableInterface): WeaponLayer {.base, discardable.} =
        var weaponLayer: WeaponLayer = WeaponLayer(JObject(procCall AllBinaryLayerCircularPool(this).getNextInstance()))
        weaponLayer.initXYZ(x, y, z)
        weaponLayer.init(sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable)
        return weaponLayer

when declared(newWeaponLayerCircularPoolHook0):
    newWeaponLayerCircularPoolHook0 = proc (): AllBinaryLayerCircularPool = newWeaponLayerCircularPool()

