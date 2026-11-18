#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.business.advertisement

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/SoftwareInformation as SoftwareInformationModule
export SoftwareInformationModule
import org/allbinary/business/advertisement/GameAdStateBase as GameAdStateBaseModule
export GameAdStateBaseModule

type
    GameAdStateFactoryInterface* = ref object of JObject


method getInstanceForApp*(this: GameAdStateFactoryInterface, softwareInformation: SoftwareInformation): GameAdStateBase {.base, discardable.} =
        raise newJException("AbstractMethodError", "getInstanceForApp")

