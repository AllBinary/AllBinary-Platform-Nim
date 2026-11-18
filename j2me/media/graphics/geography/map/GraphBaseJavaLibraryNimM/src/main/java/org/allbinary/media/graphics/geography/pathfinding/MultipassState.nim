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
# package org.allbinary.media.graphics.geography.pathfinding

{.warning[UnusedImport]: off.}
import allbinary_java

type
    MultipassState* = ref object of JObject
        step*: int32
        iteration*: int32
        iteration2*: int32

proc newMultipassState*(): MultipassState


# Java field initializers run after the base initializer
proc initFieldsMultipassState(this: MultipassState) =
    this.step = 0
    this.iteration = 0
    this.iteration2 = 0
    discard

proc initMultipassState*(this: MultipassState) =
    this.initFieldsMultipassState()

proc newMultipassState*(): MultipassState =
    result = MultipassState()
    initMultipassState(result)

