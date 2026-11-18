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
# package org.allbinary.device

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/device/OpenGLESGraphicsFactory as OpenGLESGraphicsFactoryModule
export OpenGLESGraphicsFactoryModule

type
    OpenGLESGraphicsCompositeFactory* = ref object of JObject
        openGLESGraphicsFactory*: OpenGLESGraphicsFactory

proc newOpenGLESGraphicsCompositeFactory*(): OpenGLESGraphicsCompositeFactory
proc getInstance*(t: typedesc[OpenGLESGraphicsCompositeFactory]): OpenGLESGraphicsCompositeFactory {.discardable.}
method set*(this: OpenGLESGraphicsCompositeFactory, openGLESGraphicsFactory: OpenGLESGraphicsFactory) {.base.}
method get*(this: OpenGLESGraphicsCompositeFactory): OpenGLESGraphicsFactory {.base, discardable.}

var OpenGLESGraphicsCompositeFactory_instanceValue: OpenGLESGraphicsCompositeFactory
var OpenGLESGraphicsCompositeFactory_instanceSet = false
proc instance*(t: typedesc[OpenGLESGraphicsCompositeFactory]): OpenGLESGraphicsCompositeFactory =
    if not OpenGLESGraphicsCompositeFactory_instanceSet:
        OpenGLESGraphicsCompositeFactory_instanceSet = true
        OpenGLESGraphicsCompositeFactory_instanceValue = newOpenGLESGraphicsCompositeFactory()
    OpenGLESGraphicsCompositeFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsOpenGLESGraphicsCompositeFactory(this: OpenGLESGraphicsCompositeFactory) =
    this.openGLESGraphicsFactory = newOpenGLESGraphicsFactory()
    discard

proc initOpenGLESGraphicsCompositeFactory*(this: OpenGLESGraphicsCompositeFactory) =
    this.initFieldsOpenGLESGraphicsCompositeFactory()

proc newOpenGLESGraphicsCompositeFactory*(): OpenGLESGraphicsCompositeFactory =
    result = OpenGLESGraphicsCompositeFactory()
    initOpenGLESGraphicsCompositeFactory(result)

proc getInstance*(t: typedesc[OpenGLESGraphicsCompositeFactory]): OpenGLESGraphicsCompositeFactory {.discardable.} =
        return OpenGLESGraphicsCompositeFactory.instance

method set*(this: OpenGLESGraphicsCompositeFactory, openGLESGraphicsFactory: OpenGLESGraphicsFactory) {.base.} =
        this.openGLESGraphicsFactory = openGLESGraphicsFactory

method get*(this: OpenGLESGraphicsCompositeFactory): OpenGLESGraphicsFactory {.base, discardable.} =
        return this.openGLESGraphicsFactory

