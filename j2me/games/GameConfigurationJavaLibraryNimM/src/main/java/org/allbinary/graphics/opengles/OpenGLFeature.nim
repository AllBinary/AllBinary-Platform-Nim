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
# package org.allbinary.graphics.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/feature/Feature as FeatureModule
export FeatureModule

type
    OpenGLFeature* = ref object of Feature

proc newOpenGLFeature*(name: string): OpenGLFeature
proc initOpenGLFeature*(this: OpenGLFeature, name: string)


proc initOpenGLFeature*(this: OpenGLFeature, name: string) =
        initFeature(this, name)

proc newOpenGLFeature*(name: string): OpenGLFeature =
    result = OpenGLFeature()
    initOpenGLFeature(result, name)

when declared(newOpenGLFeatureHook1):
    newOpenGLFeatureHook1 = proc (name: string): Feature = newOpenGLFeature(name)

