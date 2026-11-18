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
    ScreenCaptureFactory* = ref object of JObject

proc newScreenCaptureFactory*(): ScreenCaptureFactory
proc getInstance*(t: typedesc[ScreenCaptureFactory]): ScreenCapture {.discardable.}
import org/allbinary/graphics/ScreenCaptureNoneFactory as ScreenCaptureNoneFactoryModule
export ScreenCaptureNoneFactoryModule

var ScreenCaptureFactory_instanceValue: ScreenCapture
var ScreenCaptureFactory_instanceSet = false
proc instance*(t: typedesc[ScreenCaptureFactory]): ScreenCapture =
    if not ScreenCaptureFactory_instanceSet:
        ScreenCaptureFactory_instanceSet = true
        ScreenCaptureFactory_instanceValue = ScreenCaptureNoneFactory.getInstance()
    ScreenCaptureFactory_instanceValue

proc initScreenCaptureFactory*(this: ScreenCaptureFactory) =
    discard

proc newScreenCaptureFactory*(): ScreenCaptureFactory =
    result = ScreenCaptureFactory()
    initScreenCaptureFactory(result)

proc getInstance*(t: typedesc[ScreenCaptureFactory]): ScreenCapture {.discardable.} =
        return ScreenCaptureFactory.instance

