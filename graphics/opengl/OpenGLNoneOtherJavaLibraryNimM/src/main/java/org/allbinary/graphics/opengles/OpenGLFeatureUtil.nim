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
# package org.allbinary.graphics.opengles

{.warning[UnusedImport]: off.}
import allbinary_java

type
    OpenGLFeatureUtil* = ref object of JObject

proc newOpenGLFeatureUtil*(): OpenGLFeatureUtil
proc initOpenGLFeatureUtil*(this: OpenGLFeatureUtil)
proc getInstance*(t: typedesc[OpenGLFeatureUtil]): OpenGLFeatureUtil {.discardable.}
method isAnyThreed*(this: OpenGLFeatureUtil): bool {.base, discardable.}

var OpenGLFeatureUtil_instanceValue: OpenGLFeatureUtil
var OpenGLFeatureUtil_instanceSet = false
proc instance*(t: typedesc[OpenGLFeatureUtil]): OpenGLFeatureUtil =
    if not OpenGLFeatureUtil_instanceSet:
        OpenGLFeatureUtil_instanceSet = true
        OpenGLFeatureUtil_instanceValue = newOpenGLFeatureUtil()
    OpenGLFeatureUtil_instanceValue

proc getInstance*(t: typedesc[OpenGLFeatureUtil]): OpenGLFeatureUtil {.discardable.} =
        return OpenGLFeatureUtil.instance

proc initOpenGLFeatureUtil*(this: OpenGLFeatureUtil) =
        discard
        discard

proc newOpenGLFeatureUtil*(): OpenGLFeatureUtil =
    result = OpenGLFeatureUtil()
    initOpenGLFeatureUtil(result)

method isAnyThreed*(this: OpenGLFeatureUtil): bool {.base, discardable.} =
        return false

