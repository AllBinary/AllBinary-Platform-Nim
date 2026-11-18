#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.logic.system

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/InputStream as InputStreamModule
export InputStreamModule

type
    PlatformAssetManager* = ref object of JObject

proc newPlatformAssetManager*(): PlatformAssetManager
proc getInstance*(t: typedesc[PlatformAssetManager]): PlatformAssetManager {.discardable.}
method getResourceAsStream*(this: PlatformAssetManager, resource: string): InputStream {.base, discardable.}
import org/allbinary/data/resource/ResourceUtil as ResourceUtilModule
export ResourceUtilModule

var PlatformAssetManager_instanceValue: PlatformAssetManager
var PlatformAssetManager_instanceSet = false
proc instance*(t: typedesc[PlatformAssetManager]): PlatformAssetManager =
    if not PlatformAssetManager_instanceSet:
        PlatformAssetManager_instanceSet = true
        PlatformAssetManager_instanceValue = newPlatformAssetManager()
    PlatformAssetManager_instanceValue

proc initPlatformAssetManager*(this: PlatformAssetManager) =
    discard

proc newPlatformAssetManager*(): PlatformAssetManager =
    result = PlatformAssetManager()
    initPlatformAssetManager(result)

proc getInstance*(t: typedesc[PlatformAssetManager]): PlatformAssetManager {.discardable.} =
        return PlatformAssetManager.instance

method getResourceAsStream*(this: PlatformAssetManager, resource: string): InputStream {.base, discardable.} =
        let resourceUtil: ResourceUtil = ResourceUtil.getInstance()
        let inputStream: InputStream = resourceUtil.getResourceAsStream(resource)
        return inputStream

