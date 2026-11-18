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
    GraphicsFeature* = ref object of Feature

proc newGraphicsFeature*(name: string): GraphicsFeature
proc initGraphicsFeature*(this: GraphicsFeature, name: string)


proc initGraphicsFeature*(this: GraphicsFeature, name: string) =
        initFeature(this, name)

proc newGraphicsFeature*(name: string): GraphicsFeature =
    result = GraphicsFeature()
    initGraphicsFeature(result, name)

when declared(newGraphicsFeatureHook1):
    newGraphicsFeatureHook1 = proc (name: string): Feature = newGraphicsFeature(name)

