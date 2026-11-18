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
import org/allbinary/game/IntermissionInterface as IntermissionInterfaceModule
export IntermissionInterfaceModule
import org/allbinary/game/IntermissionEnableListenerInterface as IntermissionEnableListenerInterfaceModule
export IntermissionEnableListenerInterfaceModule

type
    Intermission* = ref object of IntermissionInterface
        enabled*: bool
        timeElapsedHelper*: TimeDelayHelper
        intermissionEnableListener*: IntermissionEnableListenerInterface

proc newIntermission*(): Intermission
proc initIntermission*(this: Intermission)
method setListener*(this: Intermission, enableListener: IntermissionEnableListenerInterface)
method getTimeDelayHelper*(this: Intermission): TimeDelayHelper {.discardable.}
method setEnabled*(this: Intermission, enabled: bool)
method isEnabled*(this: Intermission): bool {.discardable.}
import org/allbinary/game/NullIntermissionEnableListener as NullIntermissionEnableListenerModule
export NullIntermissionEnableListenerModule


# Java field initializers run after the base initializer
proc initFieldsIntermission(this: Intermission) =
    this.enabled = false
    this.timeElapsedHelper = newTimeDelayHelper(0)
    this.intermissionEnableListener = NullIntermissionEnableListener.getInstance()
    discard

proc initIntermission*(this: Intermission) =
        this.initFieldsIntermission()
        discard

proc newIntermission*(): Intermission =
    result = Intermission()
    initIntermission(result)

method setListener*(this: Intermission, enableListener: IntermissionEnableListenerInterface) =
        this.intermissionEnableListener = enableListener

method getTimeDelayHelper*(this: Intermission): TimeDelayHelper {.discardable.} =
        return this.timeElapsedHelper

method setEnabled*(this: Intermission, enabled: bool) =
        this.enabled = enabled
        if this.isEnabled():
            this.getTimeDelayHelper().setStartTimeTNT()
        this.intermissionEnableListener.notifyIntermission(enabled)

method isEnabled*(this: Intermission): bool {.discardable.} =
        return this.enabled

