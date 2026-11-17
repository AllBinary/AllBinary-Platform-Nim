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
import org/allbinary/graphics/ScreenListenerInterface as ScreenListenerInterfaceModule
export ScreenListenerInterfaceModule

type
    ScreenEmptyListener* = ref object of ScreenListenerInterface

proc newScreenEmptyListener*(): ScreenEmptyListener
method onFullScreen*(this: ScreenEmptyListener, isFullScreen: bool)
method onFullScreenDisplay*(this: ScreenEmptyListener)


proc initScreenEmptyListener*(this: ScreenEmptyListener) =
    discard

proc newScreenEmptyListener*(): ScreenEmptyListener =
    result = ScreenEmptyListener()
    initScreenEmptyListener(result)

method onFullScreen*(this: ScreenEmptyListener, isFullScreen: bool) =
        discard

method onFullScreenDisplay*(this: ScreenEmptyListener) =
        discard

