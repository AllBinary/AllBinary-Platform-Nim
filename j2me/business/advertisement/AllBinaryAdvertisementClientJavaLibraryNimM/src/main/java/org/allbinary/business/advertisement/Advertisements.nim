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
# package org.allbinary.business.advertisement

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/rand/MyRandomFactory as MyRandomFactoryModule
export MyRandomFactoryModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/business/advertisement/AdvertisementProcessorInterface as AdvertisementProcessorInterfaceModule
export AdvertisementProcessorInterfaceModule

type
    Advertisements* = ref object of JObject
        bannerList*: BasicArrayList
        pageList*: BasicArrayList
        myRandomFactory*: MyRandomFactory

proc newAdvertisements*(): Advertisements
method addPage*(this: Advertisements, advertisementProcessorInterface: AdvertisementProcessorInterface) {.base.}
method startRandomPage*(this: Advertisements) {.base.}
method processRandomPage*(this: Advertisements) {.base.}
method stopAllPage*(this: Advertisements) {.base.}
method addBanner*(this: Advertisements, advertisementProcessorInterface: AdvertisementProcessorInterface) {.base.}
method startAll*(this: Advertisements) {.base.}
method stopAllBanner*(this: Advertisements) {.base.}
method getBanner*(this: Advertisements, index: int32): AdvertisementProcessorInterface {.base, discardable.}
method stopAll*(this: Advertisements) {.base.}
import org/allbinary/logic/system/security/licensing/LockedUtil as LockedUtilModule
export LockedUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsAdvertisements(this: Advertisements) =
    this.bannerList = newBasicArrayListD()
    this.pageList = newBasicArrayListD()
    this.myRandomFactory = MyRandomFactory.getInstance()
    discard

proc initAdvertisements*(this: Advertisements) =
    this.initFieldsAdvertisements()

proc newAdvertisements*(): Advertisements =
    result = Advertisements()
    initAdvertisements(result)

method addPage*(this: Advertisements, advertisementProcessorInterface: AdvertisementProcessorInterface) {.base.} =
        if (not this.pageList.contains(advertisementProcessorInterface)):
            this.pageList.add(advertisementProcessorInterface)

method startRandomPage*(this: Advertisements) {.base.} =
        var size: int32 = this.pageList.size()
        if size > 0:
            var random: int32 = this.myRandomFactory.getAbsoluteNextInt(size)
            var advertisementProcessorInterface: AdvertisementProcessorInterface = AdvertisementProcessorInterface(JObject(this.pageList.objectArray[random]))
            advertisementProcessorInterface.start()

method processRandomPage*(this: Advertisements) {.base.} =
        if LockedUtil.getInstance().isLocked():
            var size: int32 = this.pageList.size()
            if size > 0:
                var random: int32 = this.myRandomFactory.getAbsoluteNextInt(size)
                var advertisementProcessorInterface: AdvertisementProcessorInterface = AdvertisementProcessorInterface(JObject(this.pageList.objectArray[random]))
                advertisementProcessorInterface.process()

method stopAllPage*(this: Advertisements) {.base.} =
        block:
            var index: int32 = this.pageList.size()
            while jPreDecrement(index) >= 0:
                var advertisementProcessorInterface: AdvertisementProcessorInterface = AdvertisementProcessorInterface(JObject(this.pageList.objectArray[index]))
                advertisementProcessorInterface.stop()

method addBanner*(this: Advertisements, advertisementProcessorInterface: AdvertisementProcessorInterface) {.base.} =
        if (not this.bannerList.contains(advertisementProcessorInterface)):
            this.bannerList.add(advertisementProcessorInterface)

method startAll*(this: Advertisements) {.base.} =
        block:
            var index: int32 = this.bannerList.size()
            while jPreDecrement(index) >= 0:
                var advertisementProcessorInterface: AdvertisementProcessorInterface = AdvertisementProcessorInterface(JObject(this.bannerList.objectArray[index]))
                advertisementProcessorInterface.start()

method stopAllBanner*(this: Advertisements) {.base.} =
        block:
            var index: int32 = this.bannerList.size()
            while jPreDecrement(index) >= 0:
                var advertisementProcessorInterface: AdvertisementProcessorInterface = AdvertisementProcessorInterface(JObject(this.bannerList.objectArray[index]))
                advertisementProcessorInterface.stop()

method getBanner*(this: Advertisements, index: int32): AdvertisementProcessorInterface {.base, discardable.} =
        var advertisementProcessorInterface: AdvertisementProcessorInterface = AdvertisementProcessorInterface(JObject(this.bannerList.objectArray[index]))
        return advertisementProcessorInterface

method stopAll*(this: Advertisements) {.base.} =
        this.stopAllBanner()
        this.stopAllPage()

