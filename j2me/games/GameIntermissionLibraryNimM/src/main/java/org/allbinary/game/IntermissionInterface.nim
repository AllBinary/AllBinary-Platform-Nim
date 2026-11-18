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
# package org.allbinary.game

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/game/IntermissionEnableListenerInterface as IntermissionEnableListenerInterfaceModule
export IntermissionEnableListenerInterfaceModule

type
    IntermissionInterface* = ref object of JObject


method getTimeDelayHelper*(this: IntermissionInterface): TimeDelayHelper {.base, discardable.} =
        raise newJException("AbstractMethodError", "getTimeDelayHelper")

method isEnabled*(this: IntermissionInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isEnabled")

method setEnabled*(this: IntermissionInterface, value: bool) {.base.} =
        raise newJException("AbstractMethodError", "setEnabled")

method setListener*(this: IntermissionInterface, enableListener: IntermissionEnableListenerInterface) {.base.} =
        raise newJException("AbstractMethodError", "setListener")

