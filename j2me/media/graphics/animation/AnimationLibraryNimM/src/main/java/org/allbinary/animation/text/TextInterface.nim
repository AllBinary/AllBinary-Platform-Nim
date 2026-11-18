#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.animation.text

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/text/TextChangeListener as TextChangeListenerModule
export TextChangeListenerModule

type
    TextInterface* = ref object of JObject


method setTextWithOnMeasure*(this: TextInterface, text: string, textChangeListener: TextChangeListener) {.base.} =
        raise newJException("AbstractMethodError", "setTextWithOnMeasure")

method getText*(this: TextInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getText")

method setText*(this: TextInterface, text: string) {.base.} =
        raise newJException("AbstractMethodError", "setText")

method getFontHeight*(this: TextInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getFontHeight")

method getWidth*(this: TextInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getWidth")

