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
# package org.allbinary.image.opengles

{.warning[UnusedImport]: off.}
import allbinary_java

type
    OpenGLImageSpecificFactory* = ref object of JObject
        updating*: bool

proc newOpenGLImageSpecificFactory*(): OpenGLImageSpecificFactory
proc getInstance*(t: typedesc[OpenGLImageSpecificFactory]): OpenGLImageSpecificFactory {.discardable.}

var OpenGLImageSpecificFactory_instanceValue: OpenGLImageSpecificFactory
var OpenGLImageSpecificFactory_instanceSet = false
proc instance*(t: typedesc[OpenGLImageSpecificFactory]): OpenGLImageSpecificFactory =
    if not OpenGLImageSpecificFactory_instanceSet:
        OpenGLImageSpecificFactory_instanceSet = true
        OpenGLImageSpecificFactory_instanceValue = newOpenGLImageSpecificFactory()
    OpenGLImageSpecificFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsOpenGLImageSpecificFactory(this: OpenGLImageSpecificFactory) =
    this.updating = false
    discard

proc initOpenGLImageSpecificFactory*(this: OpenGLImageSpecificFactory) =
    this.initFieldsOpenGLImageSpecificFactory()

proc newOpenGLImageSpecificFactory*(): OpenGLImageSpecificFactory =
    result = OpenGLImageSpecificFactory()
    initOpenGLImageSpecificFactory(result)

proc getInstance*(t: typedesc[OpenGLImageSpecificFactory]): OpenGLImageSpecificFactory {.discardable.} =
        return OpenGLImageSpecificFactory.instance

