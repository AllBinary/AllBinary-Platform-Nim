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
# package org.allbinary.graphics.displayable.command

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Command as CommandModule
export CommandModule

type
    MyCommandInterface* = ref object of JObject


method addCommand*(this: MyCommandInterface, command: Command) {.base.} =
        raise newJException("AbstractMethodError", "addCommand")

method removeAllCommands*(this: MyCommandInterface) {.base.} =
        raise newJException("AbstractMethodError", "removeAllCommands")

