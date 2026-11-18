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
# package org.allbinary.graphics.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule

type
    DisplayableInterface* = ref object of JObject


method addCommand*(this: DisplayableInterface, cmd: Command) {.base.} =
        raise newJException("AbstractMethodError", "addCommand")

method getHeight*(this: DisplayableInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getHeight")

method getWidth*(this: DisplayableInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getWidth")

method removeCommand*(this: DisplayableInterface, cmd: Command) {.base.} =
        raise newJException("AbstractMethodError", "removeCommand")

method setCommandListener*(this: DisplayableInterface, l: CommandListener) {.base.} =
        raise newJException("AbstractMethodError", "setCommandListener")

