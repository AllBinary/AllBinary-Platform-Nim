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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/media/audio/SoundStrings as SoundStringsModule
export SoundStringsModule
import org/allbinary/media/audio/SoundsFactoryInterface as SoundsFactoryInterfaceModule
export SoundsFactoryInterfaceModule

type
    Sounds* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        soundStrings*: SoundStrings
        soundsFactoryInterface*: SoundsFactoryInterface

proc newSounds*(soundsFactoryInterface: SoundsFactoryInterface): Sounds
proc initSounds*(this: Sounds, soundsFactoryInterface: SoundsFactoryInterface)
method init*(this: Sounds) {.base.}
method stopAll*(this: Sounds) {.base.}
method closeAll*(this: Sounds) {.base.}
import javax/microedition/media/Player as PlayerModule
export PlayerModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/media/audio/Sound as SoundModule
export SoundModule


# Java field initializers run after the base initializer
proc initFieldsSounds(this: Sounds) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.soundStrings = SoundStrings.getInstance()
    
    discard

proc initSounds*(this: Sounds, soundsFactoryInterface: SoundsFactoryInterface) =
        this.initFieldsSounds()
        this.soundsFactoryInterface = soundsFactoryInterface

proc newSounds*(soundsFactoryInterface: SoundsFactoryInterface): Sounds =
    result = Sounds()
    initSounds(result, soundsFactoryInterface)

method init*(this: Sounds) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT)
        let commonLabels: CommonLabels = CommonLabels.getInstance()
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        this.soundsFactoryInterface.init()
        let soundInterfaceArray: JArray[Sound] = this.soundsFactoryInterface.getSoundInterfaceArray()
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        var indexInteger: int32 = 0
        var indexString: string = ""
        let stringBuffer: StringMaker = newStringMaker()
        block:
            var i: int32 = 0
            while i < soundInterfaceArray.length:
                defer: i = i +% 1
                let soundInterface: Sound = soundInterfaceArray[i]
                if (not jIsNil(soundInterface)):
                    indexInteger = smallIntegerSingletonFactory.getAt(i)
                    indexString = indexInteger.toString()
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append(commonLabels.INDEX_LABEL)
                    stringBuffer.append(indexString)
                    stringBuffer.append(this.soundStrings.SOUND)
                    stringBuffer.append(jClassName(soundInterface))
                    this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT)
                    soundInterface.init()
                    progressCanvas.addNormalPortion(100, newStringMaker().append(this.soundStrings.INIT_SOUND).append(indexString).toString())
        this.soundsFactoryInterface.setInitialized(true)
        this.logUtil.putF(this.commonStrings.END, this, this.commonStrings.INIT)

method stopAll*(this: Sounds) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.soundStrings.STOP_ALL)
        let soundInterfaceArray: JArray[Sound] = this.soundsFactoryInterface.getSoundInterfaceArray()
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        var player: Player = nil
        block:
            var index: int32 = 0
            while index < soundInterfaceArray.length:
                defer: index = index +% 1
                if (not jIsNil(soundInterfaceArray[index])):
                    player = soundInterfaceArray[index].getPlayerP()
                    if (not jIsNil(player)):
                        player.stop()
                        progressCanvas.addPortion(100, this.soundStrings.STOPPING_SOUND, index)

method closeAll*(this: Sounds) {.base.} =
        this.logUtil.putF(this.commonStrings.START, this, this.soundStrings.CLOSE_ALL)
        let soundInterfaceArray: JArray[Sound] = this.soundsFactoryInterface.getSoundInterfaceArray()
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        var player: Player = nil
        block:
            var index: int32 = 0
            while index < soundInterfaceArray.length:
                defer: index = index +% 1
                if (not jIsNil(soundInterfaceArray[index])):
                    player = soundInterfaceArray[index].getPlayerP()
                    if (not jIsNil(player)):
                        player.close()
                        progressCanvas.addPortion(100, this.soundStrings.CLOSING_SOUND, index)

