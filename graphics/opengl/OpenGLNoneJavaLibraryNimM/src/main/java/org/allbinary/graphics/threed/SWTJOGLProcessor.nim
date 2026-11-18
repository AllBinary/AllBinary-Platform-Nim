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
# package org.allbinary.graphics.threed

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Runnable as RunnableModule
export RunnableModule
import javax/microedition/lcdui/Font as FontModule
export FontModule
import javax/microedition/midlet/MIDlet as MIDletModule
export MIDletModule
import org/allbinary/graphics/threed/RatioProcessor as RatioProcessorModule
export RatioProcessorModule

#OpenGLNone
type
    SWTJOGLProcessor* = ref object of Runnable

proc newSWTJOGLProcessor*(): SWTJOGLProcessor
proc getInstance*(t: typedesc[SWTJOGLProcessor]): SWTJOGLProcessor {.discardable.}
method init*(this: SWTJOGLProcessor, display: JObject, comp: JObject) {.base.}
method isHolderCreated*(this: SWTJOGLProcessor): bool {.base, discardable.}
method setRenderer*(this: SWTJOGLProcessor, renderer: JObject) {.base.}
method isJOGL*(this: SWTJOGLProcessor): bool {.base, discardable.}
method createSurface*(this: SWTJOGLProcessor) {.base.}
method onSurfaceCreated*(this: SWTJOGLProcessor) {.base.}
method onSurfaceChangedForEvent*(this: SWTJOGLProcessor, event: JObject) {.base.}
method onSurfaceChanged*(this: SWTJOGLProcessor) {.base.}
method onSurfaceChangedWH*(this: SWTJOGLProcessor, width: int32, height: int32) {.base.}
method addListener*(this: SWTJOGLProcessor) {.base.}
method addListeners*(this: SWTJOGLProcessor, midlet: MIDlet) {.base.}
method run*(this: SWTJOGLProcessor)
method clear*(this: SWTJOGLProcessor) {.base.}
method setCustom*(this: SWTJOGLProcessor, width: int32, height: int32, ratio: float32) {.base.}
method setRatioProcessor*(this: SWTJOGLProcessor, ratioProcessor: RatioProcessor) {.base.}
method isPortraitRatioProcessor*(this: SWTJOGLProcessor): bool {.base, discardable.}
method charWidth*(this: SWTJOGLProcessor, font: Font, ch: uint16): int32 {.base, discardable.}
method charsWidth*(this: SWTJOGLProcessor, font: Font, ch: JArray[uint16], offset: int32, length: int32): int32 {.base, discardable.}
method stringWidth*(this: SWTJOGLProcessor, font: Font, str: string): int32 {.base, discardable.}
method substringWidth*(this: SWTJOGLProcessor, font: Font, str: string, offset: int32, len: int32): int32 {.base, discardable.}

var SWTJOGLProcessor_instanceValue: SWTJOGLProcessor
var SWTJOGLProcessor_instanceSet = false
proc instance*(t: typedesc[SWTJOGLProcessor]): SWTJOGLProcessor =
    if not SWTJOGLProcessor_instanceSet:
        SWTJOGLProcessor_instanceSet = true
        SWTJOGLProcessor_instanceValue = newSWTJOGLProcessor()
    SWTJOGLProcessor_instanceValue

proc initSWTJOGLProcessor*(this: SWTJOGLProcessor) =
    discard

proc newSWTJOGLProcessor*(): SWTJOGLProcessor =
    result = SWTJOGLProcessor()
    initSWTJOGLProcessor(result)

proc getInstance*(t: typedesc[SWTJOGLProcessor]): SWTJOGLProcessor {.discardable.} =
        return SWTJOGLProcessor.instance

method init*(this: SWTJOGLProcessor, display: JObject, comp: JObject) {.base.} =
        discard

method isHolderCreated*(this: SWTJOGLProcessor): bool {.base, discardable.} =
        return true

method setRenderer*(this: SWTJOGLProcessor, renderer: JObject) {.base.} =
        discard

method isJOGL*(this: SWTJOGLProcessor): bool {.base, discardable.} =
        return false

method createSurface*(this: SWTJOGLProcessor) {.base.} =
        discard

method onSurfaceCreated*(this: SWTJOGLProcessor) {.base.} =
        discard

method onSurfaceChangedForEvent*(this: SWTJOGLProcessor, event: JObject) {.base.} =
        discard

method onSurfaceChanged*(this: SWTJOGLProcessor) {.base.} =
        discard

method onSurfaceChangedWH*(this: SWTJOGLProcessor, width: int32, height: int32) {.base.} =
        discard

method addListener*(this: SWTJOGLProcessor) {.base.} =
        discard

method addListeners*(this: SWTJOGLProcessor, midlet: MIDlet) {.base.} =
        discard

method run*(this: SWTJOGLProcessor) =
        discard

method clear*(this: SWTJOGLProcessor) {.base.} =
        discard

method setCustom*(this: SWTJOGLProcessor, width: int32, height: int32, ratio: float32) {.base.} =
        discard

method setRatioProcessor*(this: SWTJOGLProcessor, ratioProcessor: RatioProcessor) {.base.} =
        discard

method isPortraitRatioProcessor*(this: SWTJOGLProcessor): bool {.base, discardable.} =
        return true

method charWidth*(this: SWTJOGLProcessor, font: Font, ch: uint16): int32 {.base, discardable.} =
        raise newJException("RuntimeException", "")

method charsWidth*(this: SWTJOGLProcessor, font: Font, ch: JArray[uint16], offset: int32, length: int32): int32 {.base, discardable.} =
        raise newJException("RuntimeException", "")

method stringWidth*(this: SWTJOGLProcessor, font: Font, str: string): int32 {.base, discardable.} =
        raise newJException("RuntimeException", "")

method substringWidth*(this: SWTJOGLProcessor, font: Font, str: string, offset: int32, len: int32): int32 {.base, discardable.} =
        raise newJException("RuntimeException", "")

