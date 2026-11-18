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
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/ScreenCapture as ScreenCaptureModule
export ScreenCaptureModule

type
    ScreenCaptureNoneFactory* = ref object of JObject

proc newScreenCaptureNoneFactory*(): ScreenCaptureNoneFactory
proc getInstance*(t: typedesc[ScreenCaptureNoneFactory]): ScreenCapture {.discardable.}

var ScreenCaptureNoneFactory_instanceValue: ScreenCapture
var ScreenCaptureNoneFactory_instanceSet = false
proc instance*(t: typedesc[ScreenCaptureNoneFactory]): ScreenCapture =
    if not ScreenCaptureNoneFactory_instanceSet:
        ScreenCaptureNoneFactory_instanceSet = true
        ScreenCaptureNoneFactory_instanceValue = newScreenCapture()
    ScreenCaptureNoneFactory_instanceValue

proc initScreenCaptureNoneFactory*(this: ScreenCaptureNoneFactory) =
    discard

proc newScreenCaptureNoneFactory*(): ScreenCaptureNoneFactory =
    result = ScreenCaptureNoneFactory()
    initScreenCaptureNoneFactory(result)

proc getInstance*(t: typedesc[ScreenCaptureNoneFactory]): ScreenCapture {.discardable.} =
        return ScreenCaptureNoneFactory.instance

