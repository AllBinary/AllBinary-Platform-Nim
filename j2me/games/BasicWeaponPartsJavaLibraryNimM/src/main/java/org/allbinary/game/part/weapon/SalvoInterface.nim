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
# package org.allbinary.game.part.weapon

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/combat/weapon/WeaponProperties as WeaponPropertiesModule
export WeaponPropertiesModule
import org/allbinary/game/score/ScoreableInterface as ScoreableInterfaceModule
export ScoreableInterfaceModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    SalvoInterface* = ref object of JObject


method process*(this: SalvoInterface, allbinaryLayerManager: AllBinaryLayerManager, angle: int16, otherAngle: int16) {.base.} =
        raise newJException("AbstractMethodError", "process")

method processScore*(this: SalvoInterface, allbinaryLayerManager: AllBinaryLayerManager, angle: int16, otherAngle: int16, weaponProperties: WeaponProperties, scoreableInterface: ScoreableInterface) {.base.} =
        raise newJException("AbstractMethodError", "processScore")

