#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.image.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/image/opengles/OpenGLESImageProcessor as OpenGLESImageProcessorModule
export OpenGLESImageProcessorModule

type
    ModifierOpenGLESImageProcessor* = ref object of OpenGLESImageProcessor

proc newModifierOpenGLESImageProcessor*(): ModifierOpenGLESImageProcessor
proc getInstance*(t: typedesc[ModifierOpenGLESImageProcessor]): ModifierOpenGLESImageProcessor {.discardable.}

var ModifierOpenGLESImageProcessor_instanceCValue: ModifierOpenGLESImageProcessor
var ModifierOpenGLESImageProcessor_instanceCSet = false
proc instanceC*(t: typedesc[ModifierOpenGLESImageProcessor]): ModifierOpenGLESImageProcessor =
    if not ModifierOpenGLESImageProcessor_instanceCSet:
        ModifierOpenGLESImageProcessor_instanceCSet = true
        ModifierOpenGLESImageProcessor_instanceCValue = newModifierOpenGLESImageProcessor()
    ModifierOpenGLESImageProcessor_instanceCValue

proc initModifierOpenGLESImageProcessor*(this: ModifierOpenGLESImageProcessor) =
    initOpenGLESImageProcessor(this)

proc newModifierOpenGLESImageProcessor*(): ModifierOpenGLESImageProcessor =
    result = ModifierOpenGLESImageProcessor()
    initModifierOpenGLESImageProcessor(result)

proc getInstance*(t: typedesc[ModifierOpenGLESImageProcessor]): ModifierOpenGLESImageProcessor {.discardable.} =
        return ModifierOpenGLESImageProcessor.instanceC

when declared(newModifierOpenGLESImageProcessorHook0):
    newModifierOpenGLESImageProcessorHook0 = proc (): OpenGLESImageProcessor = newModifierOpenGLESImageProcessor()

