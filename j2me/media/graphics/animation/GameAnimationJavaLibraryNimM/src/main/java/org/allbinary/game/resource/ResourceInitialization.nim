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
# package org.allbinary.game.resource

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/init/Init as InitModule
export InitModule

type
    ResourceInitialization* = ref object of Init

proc newResourceInitialization*(): ResourceInitialization


proc initResourceInitialization*(this: ResourceInitialization) =
    initInit(this)

proc newResourceInitialization*(): ResourceInitialization =
    result = ResourceInitialization()
    initResourceInitialization(result)

when declared(newResourceInitializationHook0):
    newResourceInitializationHook0 = proc (): Init = newResourceInitialization()

