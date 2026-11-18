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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/mapping/PersistentInputMapping as PersistentInputMappingModule
export PersistentInputMappingModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/game/input/Input as InputModule
export InputModule

type
    PCGameInputMapping* = ref object of PersistentInputMapping

proc newPCGameInputMapping*(): PCGameInputMapping
proc initPCGameInputMapping*(this: PCGameInputMapping)
method init*(this: PCGameInputMapping, abeClientInformation: AbeClientInformationInterface)
method isDelete*(this: PCGameInputMapping, input: Input): bool {.discardable.}
method isSystemInput*(this: PCGameInputMapping, input: Input): bool {.discardable.}
import org/allbinary/game/configuration/persistance/GamePersistanceStrings as GamePersistanceStringsModule
export GamePersistanceStringsModule
import org/allbinary/input/motion/button/BasicTouchInputFactory as BasicTouchInputFactoryModule
export BasicTouchInputFactoryModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/input/motion/gesture/TrackballMotionGestureFactory as TrackballMotionGestureFactoryModule
export TrackballMotionGestureFactoryModule
import org/allbinary/game/input/PCKeyFactory as PCKeyFactoryModule
export PCKeyFactoryModule


proc initPCGameInputMapping*(this: PCGameInputMapping) =
        initPersistentInputMapping(this, GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID)

proc newPCGameInputMapping*(): PCGameInputMapping =
    result = PCGameInputMapping()
    initPCGameInputMapping(result)

method init*(this: PCGameInputMapping, abeClientInformation: AbeClientInformationInterface) =
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT)
        PCKeyFactory.getInstance()
        TouchMotionGestureFactory.getInstance()
        TrackballMotionGestureFactory.getInstance()
        BasicTouchInputFactory.getInstance()
        procCall PersistentInputMapping(this).init(abeClientInformation)
        if this.getTotalMapped() == 0 or this.isDefaultNew():
            this.getInputMapping().addMapping(this.getDefault())
            this.save(abeClientInformation)

method isDelete*(this: PCGameInputMapping, input: Input): bool {.discardable.} =
        if input == PCKeyFactory.getInstance().DEL:
            return true
        else:
            return false

method isSystemInput*(this: PCGameInputMapping, input: Input): bool {.discardable.} =
        return false

when declared(newPCGameInputMappingHook0):
    newPCGameInputMappingHook0 = proc (): PersistentInputMapping = newPCGameInputMapping()

