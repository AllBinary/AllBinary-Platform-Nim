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
# package org.allbinary.game.configuration.feature

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/feature/Feature as FeatureModule
export FeatureModule

type
    InputFeature* = ref object of Feature

proc newInputFeature*(name: string): InputFeature
proc initInputFeature*(this: InputFeature, name: string)


proc initInputFeature*(this: InputFeature, name: string) =
        initFeature(this, name)

proc newInputFeature*(name: string): InputFeature =
    result = InputFeature()
    initInputFeature(result, name)

when declared(newInputFeatureHook1):
    newInputFeatureHook1 = proc (name: string): Feature = newInputFeature(name)

