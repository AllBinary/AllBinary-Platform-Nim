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
import org/allbinary/view/CenterStaticViewPositionFactory as CenterStaticViewPositionFactoryModule
export CenterStaticViewPositionFactoryModule

type
    CenterViewPositionFactory* = ref object of CenterStaticViewPositionFactory

proc newCenterViewPositionFactory*(): CenterViewPositionFactory


proc initCenterViewPositionFactory*(this: CenterViewPositionFactory) =
    initCenterStaticViewPositionFactory(this)

proc newCenterViewPositionFactory*(): CenterViewPositionFactory =
    result = CenterViewPositionFactory()
    initCenterViewPositionFactory(result)

when declared(newCenterViewPositionFactoryHook0):
    newCenterViewPositionFactoryHook0 = proc (): CenterStaticViewPositionFactory = newCenterViewPositionFactory()

