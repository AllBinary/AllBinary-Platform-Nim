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
# package org.allbinary.game.layer.resources

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory as BaseResourceAnimationInterfaceFactoryInterfaceFactoryModule
export BaseResourceAnimationInterfaceFactoryInterfaceFactoryModule
import org/allbinary/image/ImageCache as ImageCacheModule
export ImageCacheModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    OnDemandResources* = ref object of JObject
        logUtil*: LogUtil

proc newOnDemandResources*(): OnDemandResources
proc initOnDemandResources*(this: OnDemandResources)
method waitFor*(this: OnDemandResources) {.base.}
method init*(this: OnDemandResources) {.base.}
method initAt*(this: OnDemandResources, imageCache: ImageCache, resourceAnimationInterfaceFactoryInterfaceFactory: BaseResourceAnimationInterfaceFactoryInterfaceFactory, portion: int32, loadingString: string, index: int32): int32 {.base, discardable.}

var OnDemandResources_NULL_ON_DEMAND_RESOURCESValue: OnDemandResources
var OnDemandResources_NULL_ON_DEMAND_RESOURCESSet = false
proc NULL_ON_DEMAND_RESOURCES*(t: typedesc[OnDemandResources]): OnDemandResources =
    if not OnDemandResources_NULL_ON_DEMAND_RESOURCESSet:
        OnDemandResources_NULL_ON_DEMAND_RESOURCESSet = true
        OnDemandResources_NULL_ON_DEMAND_RESOURCESValue = newOnDemandResources()
    OnDemandResources_NULL_ON_DEMAND_RESOURCESValue

# Java field initializers run after the base initializer
proc initFieldsOnDemandResources(this: OnDemandResources) =
    this.logUtil = LogUtil.getInstance()
    discard

proc initOnDemandResources*(this: OnDemandResources) =
        this.initFieldsOnDemandResources()
        discard

proc newOnDemandResources*(): OnDemandResources =
    result = OnDemandResources()
    initOnDemandResources(result)

method waitFor*(this: OnDemandResources) {.base.} =
        discard

method init*(this: OnDemandResources) {.base.} =
        discard

method initAt*(this: OnDemandResources, imageCache: ImageCache, resourceAnimationInterfaceFactoryInterfaceFactory: BaseResourceAnimationInterfaceFactoryInterfaceFactory, portion: int32, loadingString: string, index: int32): int32 {.base, discardable.} =
        return 0

