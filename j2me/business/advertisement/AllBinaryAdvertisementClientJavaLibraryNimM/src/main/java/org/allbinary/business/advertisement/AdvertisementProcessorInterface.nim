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

type
    AdvertisementProcessorInterface* = ref object of JObject

proc newAdvertisementProcessorInterface*(): AdvertisementProcessorInterface
method process*(this: AdvertisementProcessorInterface) {.base.}
method start*(this: AdvertisementProcessorInterface) {.base.}
method stop*(this: AdvertisementProcessorInterface) {.base.}


proc initAdvertisementProcessorInterface*(this: AdvertisementProcessorInterface) =
    discard

proc newAdvertisementProcessorInterface*(): AdvertisementProcessorInterface =
    result = AdvertisementProcessorInterface()
    initAdvertisementProcessorInterface(result)

method process*(this: AdvertisementProcessorInterface) {.base.} =
        discard

method start*(this: AdvertisementProcessorInterface) {.base.} =
        discard

method stop*(this: AdvertisementProcessorInterface) {.base.} =
        discard

