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
# package org.allbinary.canvas

{.warning[UnusedImport]: off.}
import allbinary_java

type
    SpecialMessageUtil* = ref object of JObject

proc newSpecialMessageUtil*(): SpecialMessageUtil
proc getInstance*(t: typedesc[SpecialMessageUtil]): SpecialMessageUtil {.discardable.}
method get*(this: SpecialMessageUtil): string {.base, discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/system/Memory as MemoryModule
export MemoryModule
import org/allbinary/canvas/GameStatisticsFactory as GameStatisticsFactoryModule
export GameStatisticsFactoryModule

var SpecialMessageUtil_SINGLETONValue: SpecialMessageUtil
var SpecialMessageUtil_SINGLETONSet = false
proc SINGLETON*(t: typedesc[SpecialMessageUtil]): SpecialMessageUtil =
    if not SpecialMessageUtil_SINGLETONSet:
        SpecialMessageUtil_SINGLETONSet = true
        SpecialMessageUtil_SINGLETONValue = newSpecialMessageUtil()
    SpecialMessageUtil_SINGLETONValue

proc initSpecialMessageUtil*(this: SpecialMessageUtil) =
    discard

proc newSpecialMessageUtil*(): SpecialMessageUtil =
    result = SpecialMessageUtil()
    initSpecialMessageUtil(result)

proc getInstance*(t: typedesc[SpecialMessageUtil]): SpecialMessageUtil {.discardable.} =
        return SpecialMessageUtil.SINGLETON

method get*(this: SpecialMessageUtil): string {.base, discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(Memory.getInfo())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(GameStatisticsFactory.getInstance().toString())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(" Option: ")
        if Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT):
            stringBuffer.append(OpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT.getName())
        else:
            stringBuffer.append(OpenGLFeatureFactory.getInstance().OPENGL_MINIMUM.getName())
        return stringBuffer.toString()

