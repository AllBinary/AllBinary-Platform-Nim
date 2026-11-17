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
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/ResizableListenerInterface as ResizableListenerInterfaceModule
export ResizableListenerInterfaceModule

type
    ResizableEmptyListener* = ref object of ResizableListenerInterface

proc newResizableEmptyListener*(): ResizableEmptyListener
method onResizable*(this: ResizableEmptyListener, isResizable: bool)


proc initResizableEmptyListener*(this: ResizableEmptyListener) =
    discard

proc newResizableEmptyListener*(): ResizableEmptyListener =
    result = ResizableEmptyListener()
    initResizableEmptyListener(result)

method onResizable*(this: ResizableEmptyListener, isResizable: bool) =
        discard

