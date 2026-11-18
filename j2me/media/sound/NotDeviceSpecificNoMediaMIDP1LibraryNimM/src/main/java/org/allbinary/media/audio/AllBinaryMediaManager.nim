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
# package org.allbinary.media.audio

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/InputStream as InputStreamModule
export InputStreamModule
import javax/microedition/media/Player as PlayerModule
export PlayerModule
import org/allbinary/media/audio/SoundsFactoryInterface as SoundsFactoryInterfaceModule
export SoundsFactoryInterfaceModule

#NotDeviceSpecificNoMediaMIDP1Library
type
    AllBinaryMediaManager* = ref object of JObject

proc newAllBinaryMediaManager*(): AllBinaryMediaManager
proc initAllBinaryMediaManager*(this: AllBinaryMediaManager)
proc isMuted*(t: typedesc[AllBinaryMediaManager]): bool {.discardable.}
proc setMuted*(t: typedesc[AllBinaryMediaManager], aMuted: bool)
proc update*(t: typedesc[AllBinaryMediaManager]): bool {.discardable.}
proc init*(t: typedesc[AllBinaryMediaManager], soundsFactoryInterface: SoundsFactoryInterface)
proc shutdown*(t: typedesc[AllBinaryMediaManager], soundsFactoryInterface: SoundsFactoryInterface)
proc createPlayerFromInputStream*(t: typedesc[AllBinaryMediaManager], stream: InputStream, `type`: string): Player {.discardable.}
proc createPlayer*(t: typedesc[AllBinaryMediaManager], locator: string): Player {.discardable.}
proc playTone*(t: typedesc[AllBinaryMediaManager], frequency: int32, time: int32, volume: int32)
proc getSupportedContentTypes*(t: typedesc[AllBinaryMediaManager], protocol: string): JArray[string] {.discardable.}
proc getSupportedProtocols*(t: typedesc[AllBinaryMediaManager], content_type: string): JArray[string] {.discardable.}
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/media/audio/Sounds as SoundsModule
export SoundsModule
import org/allbinary/media/audio/NoPlayer as NoPlayerModule
export NoPlayerModule

var AllBinaryMediaManager_THISValue: string
var AllBinaryMediaManager_THISSet = false
proc THIS*(t: typedesc[AllBinaryMediaManager]): string =
    if not AllBinaryMediaManager_THISSet:
        AllBinaryMediaManager_THISSet = true
        AllBinaryMediaManager_THISValue = "AllBinaryMediaManagerNoMediaMIDP1"
    AllBinaryMediaManager_THISValue

proc initAllBinaryMediaManager*(this: AllBinaryMediaManager) =
        discard
        discard

proc newAllBinaryMediaManager*(): AllBinaryMediaManager =
    result = AllBinaryMediaManager()
    initAllBinaryMediaManager(result)

proc isMuted*(t: typedesc[AllBinaryMediaManager]): bool {.discardable.} =
        return false

proc setMuted*(t: typedesc[AllBinaryMediaManager], aMuted: bool) =
        discard

proc update*(t: typedesc[AllBinaryMediaManager]): bool {.discardable.} =
        return true

proc init*(t: typedesc[AllBinaryMediaManager], soundsFactoryInterface: SoundsFactoryInterface) =
        let logUtil: LogUtil = LogUtil.getInstance()
        let commonString: CommonStrings = CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager.THIS, commonString.INIT)
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Media Manager")
        newSounds(soundsFactoryInterface).init()

proc shutdown*(t: typedesc[AllBinaryMediaManager], soundsFactoryInterface: SoundsFactoryInterface) =
        newSounds(soundsFactoryInterface).stopAll()
        newSounds(soundsFactoryInterface).closeAll()
        TsUtil.getInstance().gc()

proc createPlayerFromInputStream*(t: typedesc[AllBinaryMediaManager], stream: InputStream, `type`: string): Player {.discardable.} =
        let logUtil: LogUtil = LogUtil.getInstance()
        let commonString: CommonStrings = CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager.THIS, "creatPlayer(InputStream)")
        return Player(JObject(NoPlayer.NO_PLAYERStatic))

proc createPlayer*(t: typedesc[AllBinaryMediaManager], locator: string): Player {.discardable.} =
        let logUtil: LogUtil = LogUtil.getInstance()
        let commonString: CommonStrings = CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager.THIS, "creatPlayer(locator)")
        return Player(JObject(NoPlayer.NO_PLAYERStatic))

proc playTone*(t: typedesc[AllBinaryMediaManager], frequency: int32, time: int32, volume: int32) =
        discard

proc getSupportedContentTypes*(t: typedesc[AllBinaryMediaManager], protocol: string): JArray[string] {.discardable.} =
        return StringUtil.getInstance().getArrayInstance()

proc getSupportedProtocols*(t: typedesc[AllBinaryMediaManager], content_type: string): JArray[string] {.discardable.} =
        return StringUtil.getInstance().getArrayInstance()

