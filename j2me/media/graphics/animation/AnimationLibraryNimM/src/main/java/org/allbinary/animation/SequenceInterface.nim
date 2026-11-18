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
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java

type
    SequenceInterface* = ref object of JObject


method setSequence*(this: SequenceInterface, sequence: JArray[int32]) {.base.} =
        raise newJException("AbstractMethodError", "setSequence")

method getSequence*(this: SequenceInterface): JArray[int32] {.base, discardable.} =
        raise newJException("AbstractMethodError", "getSequence")

