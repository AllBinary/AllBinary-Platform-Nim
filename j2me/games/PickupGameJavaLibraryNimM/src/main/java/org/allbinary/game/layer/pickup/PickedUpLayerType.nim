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
# package org.allbinary.game.layer.pickup

{.warning[UnusedImport]: off.}
import allbinary_java

type
    PickedUpLayerType* = ref object of JObject
        name*: string

proc newPickedUpLayerType*(name: string): PickedUpLayerType
proc initPickedUpLayerType*(this: PickedUpLayerType, name: string)
method toString*(this: PickedUpLayerType): string {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsPickedUpLayerType(this: PickedUpLayerType) =
    
    discard

proc initPickedUpLayerType*(this: PickedUpLayerType, name: string) =
        this.initFieldsPickedUpLayerType()
        this.name = name

proc newPickedUpLayerType*(name: string): PickedUpLayerType =
    result = PickedUpLayerType()
    initPickedUpLayerType(result, name)

method toString*(this: PickedUpLayerType): string {.discardable.} =
        return this.name

