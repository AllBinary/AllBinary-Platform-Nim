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
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule

type
    FullScreenUtil* = ref object of JObject

proc newFullScreenUtil*(): FullScreenUtil
proc getInstance*(t: typedesc[FullScreenUtil]): FullScreenUtil {.discardable.}
method initOnRun*(this: FullScreenUtil, fullScreenInterface: Canvas, commandListener: CommandListener) {.base.}
method init*(this: FullScreenUtil, fullScreenInterface: Canvas) {.base.}
method isScreenChange*(this: FullScreenUtil, isFullScreen: bool): bool {.base, discardable.}
method isScreenChangeCanvas*(this: FullScreenUtil, fullScreenInterface: Canvas): bool {.base, discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/MainFeatureFactory as MainFeatureFactoryModule
export MainFeatureFactoryModule

var FullScreenUtil_instanceValue: FullScreenUtil
var FullScreenUtil_instanceSet = false
proc instance*(t: typedesc[FullScreenUtil]): FullScreenUtil =
    if not FullScreenUtil_instanceSet:
        FullScreenUtil_instanceSet = true
        FullScreenUtil_instanceValue = newFullScreenUtil()
    FullScreenUtil_instanceValue

proc initFullScreenUtil*(this: FullScreenUtil) =
    discard

proc newFullScreenUtil*(): FullScreenUtil =
    result = FullScreenUtil()
    initFullScreenUtil(result)

proc getInstance*(t: typedesc[FullScreenUtil]): FullScreenUtil {.discardable.} =
        return FullScreenUtil.instance

method initOnRun*(this: FullScreenUtil, fullScreenInterface: Canvas, commandListener: CommandListener) {.base.} =
        if (not jIsNil(commandListener)):
            this.init(fullScreenInterface)

method init*(this: FullScreenUtil, fullScreenInterface: Canvas) {.base.} =
        discard

method isScreenChange*(this: FullScreenUtil, isFullScreen: bool): bool {.base, discardable.} =
        let mainFeatureFactory: MainFeatureFactory = MainFeatureFactory.getInstance()
        let features: Features = Features.getInstance()
        if features.isFeature(mainFeatureFactory.FULL_SCREEN) != isFullScreen:
            return true
        return false

method isScreenChangeCanvas*(this: FullScreenUtil, fullScreenInterface: Canvas): bool {.base, discardable.} =
        return this.isScreenChange(false)

