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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/Input as InputModule
export InputModule
import org/allbinary/game/input/mapping/GameInputMapping as GameInputMappingModule
export GameInputMappingModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/paint/help/HelpPaintable as HelpPaintableModule
export HelpPaintableModule
import org/allbinary/game/paint/help/UpdateMyFontProperties as UpdateMyFontPropertiesModule
export UpdateMyFontPropertiesModule

type
    InputMappingHelpPaintable* = ref object of HelpPaintable
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        commonSeps*: CommonSeps
        stringUtil*: StringUtil
        basicColorFactory*: BasicColorFactory
        NONE*: GameKey
        EMPTY_STRING*: string
        gameInputMappingArray*: JArray[GameInputMapping]
        keyMappingArray*: JArray[BasicArrayList]
        actionBasicColor*: JArray[BasicColor]
        inputBasicColorArray*: JArray[JArray[BasicColor]]
        selectedBasicColor*: BasicColor
        updateMyFontProperties*: UpdateMyFontProperties

proc newInputMappingHelpPaintable*(gameInputMappingArray: JArray[GameInputMapping], backgroundBasicColor: BasicColor, basicColor: BasicColor): InputMappingHelpPaintable
proc initInputMappingHelpPaintable*(this: InputMappingHelpPaintable, gameInputMappingArray: JArray[GameInputMapping], backgroundBasicColor: BasicColor, basicColor: BasicColor)
method updateMeasurement*(this: InputMappingHelpPaintable, graphics: Graphics)
method update*(this: InputMappingHelpPaintable, selectedGameKey: GameKey, selectedInput: Input) {.base.}
method get*(this: InputMappingHelpPaintable, keyList: BasicArrayList): string {.base, discardable.}
method paint*(this: InputMappingHelpPaintable, graphics: Graphics)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/game/input/mapping/PersistentInputMapping as PersistentInputMappingModule
export PersistentInputMappingModule
import org/allbinary/graphics/color/BasicColorUtil as BasicColorUtilModule
export BasicColorUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule

var InputMappingHelpPaintable_ANDValue: string
var InputMappingHelpPaintable_ANDSet = false
proc AND*(t: typedesc[InputMappingHelpPaintable]): string =
    if not InputMappingHelpPaintable_ANDSet:
        InputMappingHelpPaintable_ANDSet = true
        InputMappingHelpPaintable_ANDValue = " and "
    InputMappingHelpPaintable_ANDValue
var InputMappingHelpPaintable_SEPValue: string
var InputMappingHelpPaintable_SEPSet = false
proc SEP*(t: typedesc[InputMappingHelpPaintable]): string =
    if not InputMappingHelpPaintable_SEPSet:
        InputMappingHelpPaintable_SEPSet = true
        InputMappingHelpPaintable_SEPValue = ", "
    InputMappingHelpPaintable_SEPValue
var InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDValue: string
var InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDSet = false
proc MORE_THAN_TWO_IN_LIST_AND*(t: typedesc[InputMappingHelpPaintable]): string =
    if not InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDSet:
        InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDSet = true
        InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDValue = ", and "
    InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_ANDValue

# Java field initializers run after the base initializer
proc initFieldsInputMappingHelpPaintable(this: InputMappingHelpPaintable) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.commonSeps = CommonSeps.getInstance()
    this.stringUtil = StringUtil.getInstance()
    this.basicColorFactory = BasicColorFactory.getInstance()
    this.NONE = GameKeyFactory.getInstance().NONE
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    
    this.keyMappingArray = newJArray[BasicArrayList](0, default(BasicArrayList))
    this.actionBasicColor = BasicColorUtil.getInstance().ZERO_ARRAY
    this.inputBasicColorArray = newJArrayOf[JArray[BasicColor]](0, proc (): JArray[BasicColor] = newJArray[BasicColor](0, default(BasicColor)))
    
    this.updateMyFontProperties = newUpdateMyFontProperties()
    discard

proc initInputMappingHelpPaintable*(this: InputMappingHelpPaintable, gameInputMappingArray: JArray[GameInputMapping], backgroundBasicColor: BasicColor, basicColor: BasicColor) =
        initHelpPaintable(this, "Input Mapping", backgroundBasicColor, basicColor)
        this.initFieldsInputMappingHelpPaintable()
        this.gameInputMappingArray = gameInputMappingArray
        this.update(this.NONE, this.NONE)
        if (jSame(backgroundBasicColor, this.basicColorFactory.WHITE)) or (jSame(basicColor, this.basicColorFactory.WHITE)):
            this.selectedBasicColor = this.basicColorFactory.RED
        else:
            this.selectedBasicColor = this.basicColorFactory.WHITE

proc newInputMappingHelpPaintable*(gameInputMappingArray: JArray[GameInputMapping], backgroundBasicColor: BasicColor, basicColor: BasicColor): InputMappingHelpPaintable =
    result = InputMappingHelpPaintable()
    initInputMappingHelpPaintable(result, gameInputMappingArray, backgroundBasicColor, basicColor)

method updateMeasurement*(this: InputMappingHelpPaintable, graphics: Graphics) =
        let font: Font = graphics.getFont()
        let updateMyFontProperties: UpdateMyFontProperties = newUpdateMyFontProperties()
        updateMyFontProperties.charHeight = font.getHeight()
        let stringMaker: StringMaker = newStringMaker()
        let inputInfo: JArray[string] = this.inputInfo
        let size: int32 = inputInfo.length
        updateMyFontProperties.actionStringArray = newJArray[string](size, default(string))
        updateMyFontProperties.keymappingBeginWidthArray = newJArray[int32](size, default(int32))
        updateMyFontProperties.actionStringDeltaXArray = newJArray[int32](size, default(int32))
        updateMyFontProperties.inputDeltaXArray = newJArrayOf[JArray[int32]](size, proc (): JArray[int32] = newJArray[int32](0, default(int32)))
        updateMyFontProperties.sepArray = newJArrayOf[JArray[string]](size, proc (): JArray[string] = newJArray[string](0, default(string)))
        updateMyFontProperties.sepWidthArray = newJArrayOf[JArray[int32]](size, proc (): JArray[int32] = newJArray[int32](0, default(int32)))
        var list: BasicArrayList = nil
        var keyMappings: string = ""
        var actionString: string = ""
        var input: Input = nil
        var size2: int32 = 0
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                list = this.keyMappingArray[index]
                keyMappings = this.get(list)
                stringMaker.delete(0, stringMaker.length())
                actionString = stringMaker.append(inputInfo[index]).append(this.commonSeps.COLON).append(this.commonSeps.SPACE).append(this.commonSeps.SPACE).toString()
                updateMyFontProperties.actionStringArray[index] = actionString
                stringMaker.delete(0, stringMaker.length())
                updateMyFontProperties.keymappingBeginWidthArray[index] = (ashr(font.stringWidth(stringMaker.append(updateMyFontProperties.actionStringArray[index]).append(keyMappings).toString()), 1))
                updateMyFontProperties.actionStringDeltaXArray[index] = font.stringWidth(actionString)
                size2 = list.size()
                updateMyFontProperties.inputDeltaXArray[index] = newJArray[int32](size2, default(int32))
                updateMyFontProperties.sepArray[index] = newJArray[string](size2, default(string))
                updateMyFontProperties.sepWidthArray[index] = newJArray[int32](size2, default(int32))
                block:
                    var index2: int32 = 0
                    while index2 < size2:
                        defer: index2 = index2 +% 1
                        input = Input(JObject(list.objectArray[index2]))
                        updateMyFontProperties.inputDeltaXArray[index][index2] = font.stringWidth(input.getName())
                        updateMyFontProperties.sepArray[index][index2] = this.EMPTY_STRING
                        if index2 +% 1 < list.size():
                            if list.size() == 2:
                                updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable.AND
                            else:
                                if index2 +% 2 == list.size():
                                    updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND
                                else:
                                    updateMyFontProperties.sepArray[index][index2] = InputMappingHelpPaintable.SEP
                        if updateMyFontProperties.sepArray[index][index2] != this.EMPTY_STRING:
                            updateMyFontProperties.sepWidthArray[index][index2] = font.stringWidth(updateMyFontProperties.sepArray[index][index2])
        this.updateMyFontProperties = updateMyFontProperties
        jSuperStatement(procCall HelpPaintable(this).updateMeasurement(graphics))

method update*(this: InputMappingHelpPaintable, selectedGameKey: GameKey, selectedInput: Input) {.base.} =
        let stringMaker: StringMaker = newStringMaker()
        this.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append("selected GameKey: ").append(this.stringUtil.toString(selectedGameKey)).append(" Input: ").append(this.stringUtil.toString(selectedInput)).toString(), this, this.commonStrings.UPDATE)
        let gameKeyMapping: PersistentInputMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        let size: int32 = this.gameInputMappingArray.length
        let keyInfo: JArray[string] = newJArray[string](size, default(string))
        let keyMappingArray: JArray[BasicArrayList] = newJArray[BasicArrayList](size, default(BasicArrayList))
        let actionBasicColor: JArray[BasicColor] = newJArray[BasicColor](size, default(BasicColor))
        let inputBasicColorArray: JArray[JArray[BasicColor]] = newJArray[JArray[BasicColor]](size, nil)
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
                var size2: int32 = list.size()
                inputBasicColorArray[index] = newJArray[BasicColor](size2, default(BasicColor))
                block:
                    var index2: int32 = 0
                    while index2 < size2:
                        defer: index2 = index2 +% 1
                        inputBasicColorArray[index][index2] = this.basicColor
                if gameKey == selectedGameKey:
                    stringMaker.delete(0, stringMaker.length())
                    this.logUtil.putF(stringMaker.append("Found: selected GameKey: ").append(this.stringUtil.toString(selectedGameKey)).toString(), this, this.commonStrings.UPDATE)
                    actionBasicColor[index] = this.selectedBasicColor
                    var indexOfSelectedInput: int32 = list.indexOf(selectedInput)
                    if indexOfSelectedInput >= 0:
                        stringMaker.delete(0, stringMaker.length())
                        this.logUtil.putF(stringMaker.append("Found: selected Input: ").append(this.stringUtil.toString(selectedInput)).toString(), this, this.commonStrings.UPDATE)
                        inputBasicColorArray[index][indexOfSelectedInput] = this.selectedBasicColor
                else:
                    actionBasicColor[index] = this.basicColor
                keyInfo[index] = gameInputMapping.getName()
                keyMappingArray[index] = list
        this.keyMappingArray = keyMappingArray
        this.actionBasicColor = actionBasicColor
        this.inputBasicColorArray = inputBasicColorArray
        jSuperStatement(procCall HelpPaintable(this).setInputInfoP(keyInfo))
        this.myFontProcessor = this.updateMyFontProcessor

method get*(this: InputMappingHelpPaintable, keyList: BasicArrayList): string {.base, discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
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
                        stringBuffer.append(InputMappingHelpPaintable.AND)
                    else:
                        if index +% 2 == keyList.size():
                            stringBuffer.append(InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND)
                        else:
                            stringBuffer.append(InputMappingHelpPaintable.SEP)
        return stringBuffer.toString()

method paint*(this: InputMappingHelpPaintable, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        let halfWidth: int32 = this.displayInfo.getLastHalfWidth()
        graphics.setColor(this.basicColor.intValue())
        graphics.drawString(this.title, halfWidth -% this.titleBeginWidth, this.updateMyFontProperties.charHeight, this.anchor)
        let inputInfo: JArray[string] = this.inputInfo
        let size: int32 = inputInfo.length
        var y: int32 = 0
        var deltaX: int32 = 0
        var size2: int32 = 0
        var actionString: string = ""
        var input: Input = nil
        var list: BasicArrayList = nil
        var sep: string = ""
        var beginWidth: int32 = 0
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                y = (index +% 3) *% this.updateMyFontProperties.charHeight
                deltaX = 0
                list = this.keyMappingArray[index]
                size2 = list.size()
                beginWidth = this.updateMyFontProperties.keymappingBeginWidthArray[index]
                graphics.setColor(this.actionBasicColor[index].intValue())
                actionString = this.updateMyFontProperties.actionStringArray[index]
                graphics.drawString(actionString, halfWidth -% beginWidth +% deltaX, y, this.anchor)
                deltaX = deltaX +% this.updateMyFontProperties.actionStringDeltaXArray[index]
                block:
                    var index2: int32 = 0
                    while index2 < size2:
                        defer: index2 = index2 +% 1
                        input = Input(JObject(list.objectArray[index2]))
                        graphics.setColor(this.inputBasicColorArray[index][index2].intValue())
                        graphics.drawString(input.getName(), halfWidth -% beginWidth +% deltaX, y, this.anchor)
                        deltaX = deltaX +% this.updateMyFontProperties.inputDeltaXArray[index][index2]
                        sep = this.updateMyFontProperties.sepArray[index][index2]
                        graphics.setColor(this.basicColor.intValue())
                        graphics.drawString(sep, halfWidth -% beginWidth +% deltaX, y, this.anchor)
                        deltaX = deltaX +% this.updateMyFontProperties.sepWidthArray[index][index2]

when declared(newInputMappingHelpPaintableHook3):
    newInputMappingHelpPaintableHook3 = proc (gameInputMappingArray: JArray[GameInputMapping], backgroundBasicColor: BasicColor, basicColor: BasicColor): HelpPaintable = newInputMappingHelpPaintable(gameInputMappingArray, backgroundBasicColor, basicColor)

