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
    J2MEGameInputMapping* = ref object of PersistentInputMapping

proc newJ2MEGameInputMapping*(): J2MEGameInputMapping
proc initJ2MEGameInputMapping*(this: J2MEGameInputMapping)
method init*(this: J2MEGameInputMapping, abeClientInformation: AbeClientInformationInterface)
method isDelete*(this: J2MEGameInputMapping, input: Input): bool {.discardable.}
method isSystemInput*(this: J2MEGameInputMapping, input: Input): bool {.discardable.}
import org/allbinary/game/configuration/persistance/GamePersistanceStrings as GamePersistanceStringsModule
export GamePersistanceStringsModule
import org/allbinary/game/input/J2MEKeyFactory as J2MEKeyFactoryModule
export J2MEKeyFactoryModule
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule


proc initJ2MEGameInputMapping*(this: J2MEGameInputMapping) =
        initPersistentInputMapping(this, GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID)

proc newJ2MEGameInputMapping*(): J2MEGameInputMapping =
    result = J2MEGameInputMapping()
    initJ2MEGameInputMapping(result)

method init*(this: J2MEGameInputMapping, abeClientInformation: AbeClientInformationInterface) =
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT)
        J2MEKeyFactory.getInstance().init()
        procCall PersistentInputMapping(this).init(abeClientInformation)
        if this.getTotalMapped() == 0 or this.isDefaultNew():
            this.getInputMapping().addMapping(this.getDefault())
            this.save(abeClientInformation)

method isDelete*(this: J2MEGameInputMapping, input: Input): bool {.discardable.} =
        if input == GameKeyFactory.getInstance().GAME_D:
            return true
        else:
            return false

method isSystemInput*(this: J2MEGameInputMapping, input: Input): bool {.discardable.} =
        return false

when declared(newJ2MEGameInputMappingHook0):
    newJ2MEGameInputMappingHook0 = proc (): PersistentInputMapping = newJ2MEGameInputMapping()

