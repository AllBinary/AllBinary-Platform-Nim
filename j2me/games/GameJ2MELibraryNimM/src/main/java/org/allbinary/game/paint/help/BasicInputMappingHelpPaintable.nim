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
# package org.allbinary.game.paint.help

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/Input as InputModule
export InputModule
import org/allbinary/game/input/mapping/GameInputMapping as GameInputMappingModule
export GameInputMappingModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/paint/help/HelpPaintable as HelpPaintableModule
export HelpPaintableModule

type
    BasicInputMappingHelpPaintable* = ref object of HelpPaintable
        gameInputMappingArray*: JArray[GameInputMapping]
        NONE*: GameKey

proc newBasicInputMappingHelpPaintable*(gameInputMappingArray: JArray[GameInputMapping], basicColor: BasicColor): BasicInputMappingHelpPaintable
proc initBasicInputMappingHelpPaintable*(this: BasicInputMappingHelpPaintable, gameInputMappingArray: JArray[GameInputMapping], basicColor: BasicColor)
method update*(this: BasicInputMappingHelpPaintable, selectedGameKey: GameKey, selectedInput: Input) {.base.}
method get*(this: BasicInputMappingHelpPaintable, keyList: BasicArrayList): string {.base, discardable.}
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/game/input/mapping/PersistentInputMapping as PersistentInputMappingModule
export PersistentInputMappingModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsBasicInputMappingHelpPaintable(this: BasicInputMappingHelpPaintable) =
    
    this.NONE = GameKeyFactory.getInstance().NONE
    discard

proc initBasicInputMappingHelpPaintable*(this: BasicInputMappingHelpPaintable, gameInputMappingArray: JArray[GameInputMapping], basicColor: BasicColor) =
        initHelpPaintable(this, "Help Screen", BasicColorFactory.getInstance().BLACK, basicColor)
        this.initFieldsBasicInputMappingHelpPaintable()
        this.gameInputMappingArray = gameInputMappingArray
        this.update(this.NONE, this.NONE)

proc newBasicInputMappingHelpPaintable*(gameInputMappingArray: JArray[GameInputMapping], basicColor: BasicColor): BasicInputMappingHelpPaintable =
    result = BasicInputMappingHelpPaintable()
    initBasicInputMappingHelpPaintable(result, gameInputMappingArray, basicColor)

method update*(this: BasicInputMappingHelpPaintable, selectedGameKey: GameKey, selectedInput: Input) {.base.} =
        let gameKeyMapping: PersistentInputMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        let EQUAL: string = " = "
        let stringMaker: StringMaker = newStringMaker()
        let size: int32 = this.gameInputMappingArray.length
        let keyInfo: JArray[string] = newJArray[string](size, default(string))
        var gameInputMapping: GameInputMapping = nil
        var gameKey: GameKey = nil
        var list: BasicArrayList = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                gameInputMapping = this.gameInputMappingArray[index]
                gameKey = gameInputMapping.getGameKey()
                list = gameKeyMapping.getInputMapping().getMappedInput(gameKey)
                stringMaker.delete(0, stringMaker.length())
                keyInfo[index] = stringMaker.append(gameInputMapping.getName()).append(EQUAL).append(this.get(list)).toString()
        procCall HelpPaintable(this).setInputInfoP(keyInfo)

method get*(this: BasicInputMappingHelpPaintable, keyList: BasicArrayList): string {.base, discardable.} =
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        let stringBuffer: StringMaker = newStringMaker()
        let AND: string = "and "
        var key: Input = nil
        let size: int32 = keyList.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                key = Input(JObject(keyList.objectArray[index]))
                stringBuffer.append(key.getName())
                if index +% 1 < keyList.size():
                    if keyList.size() == 2:
                        stringBuffer.append(commonSeps.SPACE).append(AND)
                    else:
                        if index +% 2 == keyList.size():
                            stringBuffer.append(commonSeps.COMMA_SEP)
                            stringBuffer.append(AND)
                        else:
                            stringBuffer.append(commonSeps.COMMA_SEP)
        return stringBuffer.toString()

when declared(newBasicInputMappingHelpPaintableHook2):
    newBasicInputMappingHelpPaintableHook2 = proc (gameInputMappingArray: JArray[GameInputMapping], basicColor: BasicColor): HelpPaintable = newBasicInputMappingHelpPaintable(gameInputMappingArray, basicColor)

