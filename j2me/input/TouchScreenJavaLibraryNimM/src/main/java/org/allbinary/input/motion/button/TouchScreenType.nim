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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java

type
    TouchScreenType* = ref object of JObject
        name*: string

proc newTouchScreenType*(name: string): TouchScreenType
proc initTouchScreenType*(this: TouchScreenType, name: string)
method getName*(this: TouchScreenType): string {.base, discardable.}
method toString*(this: TouchScreenType): string {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsTouchScreenType(this: TouchScreenType) =
    
    discard

proc initTouchScreenType*(this: TouchScreenType, name: string) =
        this.initFieldsTouchScreenType()
        this.name = name

proc newTouchScreenType*(name: string): TouchScreenType =
    result = TouchScreenType()
    initTouchScreenType(result, name)

method getName*(this: TouchScreenType): string {.base, discardable.} =
        return this.name

method toString*(this: TouchScreenType): string {.discardable.} =
        return this.getName()

