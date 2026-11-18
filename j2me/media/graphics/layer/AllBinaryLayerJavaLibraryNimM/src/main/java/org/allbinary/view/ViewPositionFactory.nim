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
import org/allbinary/view/ViewPositionFactoryInterface as ViewPositionFactoryInterfaceModule
export ViewPositionFactoryInterfaceModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule

type
    ViewPositionFactory* = ref object of ViewPositionFactoryInterface

proc newViewPositionFactory*(): ViewPositionFactory
method getInstance*(this: ViewPositionFactory): ViewPositionBase {.discardable.}
import org/allbinary/view/ViewPosition as ViewPositionModule
export ViewPositionModule


proc initViewPositionFactory*(this: ViewPositionFactory) =
    discard

proc newViewPositionFactory*(): ViewPositionFactory =
    result = ViewPositionFactory()
    initViewPositionFactory(result)

method getInstance*(this: ViewPositionFactory): ViewPositionBase {.discardable.} =
        return ViewPosition.getInstanceD()

