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
# package org.allbinary.view

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule

type
    CenterStaticViewPositionFactory* = ref object of JObject

proc newCenterStaticViewPositionFactory*(): CenterStaticViewPositionFactory
proc initCenterStaticViewPositionFactory*(this: CenterStaticViewPositionFactory)
method getInstance*(this: CenterStaticViewPositionFactory, z: int32): ViewPositionBase {.base, discardable.}
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/view/StaticViewPosition as StaticViewPositionModule
export StaticViewPositionModule


proc initCenterStaticViewPositionFactory*(this: CenterStaticViewPositionFactory) =
        discard
        discard

proc newCenterStaticViewPositionFactory*(): CenterStaticViewPositionFactory =
    result = CenterStaticViewPositionFactory()
    initCenterStaticViewPositionFactory(result)

method getInstance*(this: CenterStaticViewPositionFactory, z: int32): ViewPositionBase {.base, discardable.} =
        var displayInfoSingleton: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        return newStaticViewPosition((ashr(displayInfoSingleton.getLastWidth(), 1)), (ashr(displayInfoSingleton.getLastHeight(), 1)), z)

