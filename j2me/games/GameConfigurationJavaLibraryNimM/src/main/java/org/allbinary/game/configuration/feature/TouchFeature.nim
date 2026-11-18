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
    TouchFeature* = ref object of Feature

proc newTouchFeature*(name: string): TouchFeature
proc initTouchFeature*(this: TouchFeature, name: string)


proc initTouchFeature*(this: TouchFeature, name: string) =
        initFeature(this, name)

proc newTouchFeature*(name: string): TouchFeature =
    result = TouchFeature()
    initTouchFeature(result, name)

when declared(newTouchFeatureHook1):
    newTouchFeatureHook1 = proc (name: string): Feature = newTouchFeature(name)

