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

#NotDeviceSpecificMIDP2JavaLibrary
type
    AllBinaryMediaManager* = ref object of JObject

proc newAllBinaryMediaManager*(): AllBinaryMediaManager
proc initAllBinaryMediaManager*(this: AllBinaryMediaManager)
proc isMuted*(t: typedesc[AllBinaryMediaManager]): bool {.discardable.}
proc setMuted*(t: typedesc[AllBinaryMediaManager], aMuted: bool)
proc update*(t: typedesc[AllBinaryMediaManager]): bool {.discardable.}
proc init*(t: typedesc[AllBinaryMediaManager], soundsFactoryInterface: SoundsFactoryInterface)
proc shutdown*(t: typedesc[AllBinaryMediaManager], soundsFactoryInterface: SoundsFactoryInterface)
proc createPlayer*(t: typedesc[AllBinaryMediaManager], resource: string): Player {.discardable.}
proc playTone*(t: typedesc[AllBinaryMediaManager], frequency: int32, time: int32, volume: int32)
import javax/microedition/media/Manager as ManagerModule
export ManagerModule
import javax/microedition/media/MediaException as MediaExceptionModule
export MediaExceptionModule
import org/allbinary/MIDPUtil as MIDPUtilModule
export MIDPUtilModule
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/audio/AudioContentTypeDataFactory as AudioContentTypeDataFactoryModule
export AudioContentTypeDataFactoryModule
import org/allbinary/data/resource/ResourceUtil as ResourceUtilModule
export ResourceUtilModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/GameFeatureFactory as GameFeatureFactoryModule
export GameFeatureFactoryModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
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
        AllBinaryMediaManager_THISValue = "AllBinaryMediaManagerNoMIPD2"
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

proc createPlayer*(t: typedesc[AllBinaryMediaManager], resource: string): Player {.discardable.} =
        if Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND):
            if TsUtil.getInstance().compareTo(resource, Manager.TONE_DEVICE_LOCATOR) == 0:
                return Manager.createPlayer(resource)
            else:
                var inputStream: InputStream = ResourceUtil.getInstance().getResourceAsStream(resource)
                return MIDPUtil.getInstance().createPlayerFromInputStream(inputStream, AudioContentTypeDataFactory.getInstance().MIME_AUDIO_WAV.getName())
        else:
            return NoPlayer.NO_PLAYERStatic

proc playTone*(t: typedesc[AllBinaryMediaManager], frequency: int32, time: int32, volume: int32) =
        if Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND):
            Manager.playTone(frequency, time, volume)

