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
# package org.allbinary.game.input.mapping

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule
import org/allbinary/game/input/Input as InputModule
export InputModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/input/mapping/InputMapping as InputMappingModule
export InputMappingModule

type
    InputToGameKeyMapping* = ref object of InputMapping
        gameKeyFactory*: GameKeyFactory
        mappedGameKeys*: JArray[GameKey]
        platformToGameKeyMapping*: JArray[GameKey]
        negativePlatformToGameKeyMapping*: JArray[GameKey]

proc newInputToGameKeyMapping*(): InputToGameKeyMapping
proc initInputToGameKeyMapping*(this: InputToGameKeyMapping)
proc getNullInstance*(t: typedesc[InputToGameKeyMapping]): InputToGameKeyMapping {.discardable.}
method clear*(this: InputToGameKeyMapping) {.base.}
method removeAll*(this: InputToGameKeyMapping)
method addMapping*(this: InputToGameKeyMapping, inputToGameKeyMapping: InputToGameKeyMapping)
method addAll*(this: InputToGameKeyMapping, input: Input, list: BasicArrayList) {.base.}
method add*(this: InputToGameKeyMapping, input: Input, mappedToInput: Input)
method remove*(this: InputToGameKeyMapping, input: Input, mappedToInput: Input)
method set*(this: InputToGameKeyMapping, input: Input, mappedToInput: Input) {.base.}
method getMaxMappable*(this: InputToGameKeyMapping): int32 {.base, discardable.}
method getReverseInstance*(this: InputToGameKeyMapping, id: int32): BasicArrayList {.base, discardable.}
method initGameKey*(this: InputToGameKeyMapping, canvas: Canvas, gameKey: GameKey) {.base.}
method getSmallestCanvasGameKeyCode*(this: InputToGameKeyMapping, canvas: Canvas): int32 {.base, discardable.}
method init*(this: InputToGameKeyMapping, canvas: Canvas) {.base.}
method getInstanceForCanvas*(this: InputToGameKeyMapping, canvas: Canvas, id: int32): GameKey {.base, discardable.}
method getInstance*(this: InputToGameKeyMapping, id: int32): GameKey {.base, discardable.}
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var InputToGameKeyMapping_instanceValue: JObject
var InputToGameKeyMapping_instanceSet = false
proc instance*(t: typedesc[InputToGameKeyMapping]): JObject =
    if not InputToGameKeyMapping_instanceSet:
        InputToGameKeyMapping_instanceSet = true
        InputToGameKeyMapping_instanceValue = NullUtil.getInstance().NULL_OBJECT
    InputToGameKeyMapping_instanceValue
proc `instance=`*(t: typedesc[InputToGameKeyMapping], value: JObject) =
    InputToGameKeyMapping_instanceSet = true
    InputToGameKeyMapping_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsInputToGameKeyMapping(this: InputToGameKeyMapping) =
    this.gameKeyFactory = GameKeyFactory.getInstance()
    this.mappedGameKeys = newJArrayFromRefs[GameKey](this.gameKeyFactory.UP, this.gameKeyFactory.DOWN, this.gameKeyFactory.LEFT, this.gameKeyFactory.RIGHT)
    this.platformToGameKeyMapping = newJArray[GameKey](InputFactory.getInstance().MAX, default(GameKey))
    this.negativePlatformToGameKeyMapping = newJArray[GameKey](0, default(GameKey))
    discard

proc getNullInstance*(t: typedesc[InputToGameKeyMapping]): InputToGameKeyMapping {.discardable.} =
        if InputToGameKeyMapping.instance == NullUtil.getInstance().NULL_OBJECT:
            InputToGameKeyMapping.instance = newInputToGameKeyMapping()
        return InputToGameKeyMapping(JObject(InputToGameKeyMapping.instance))

proc initInputToGameKeyMapping*(this: InputToGameKeyMapping) =
        initInputMapping(this)
        this.initFieldsInputToGameKeyMapping()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.clear()

proc newInputToGameKeyMapping*(): InputToGameKeyMapping =
    result = InputToGameKeyMapping()
    initInputToGameKeyMapping(result)

method clear*(this: InputToGameKeyMapping) {.base.} =
        block:
            var index: int32 = this.platformToGameKeyMapping.length -% 1
            while index >= 0:
                defer: index = index -% 1
                this.platformToGameKeyMapping[index] = this.gameKeyFactory.NONE

method removeAll*(this: InputToGameKeyMapping) =
        procCall InputMapping(this).removeAll()
        this.clear()

method addMapping*(this: InputToGameKeyMapping, inputToGameKeyMapping: InputToGameKeyMapping) =
        block:
            var index: int32 = inputToGameKeyMapping.getMaxMappable() -% 1
            while index >= 0:
                defer: index = index -% 1
                let input: Input = inputToGameKeyMapping.getInstance(index)
                if input != this.gameKeyFactory.NONE:
                    this.addAll(input, inputToGameKeyMapping.getMappedInput(input))

method addAll*(this: InputToGameKeyMapping, input: Input, list: BasicArrayList) {.base.} =
        block:
            var index: int32 = list.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                var mappedToInput: Input = Input(JObject(list.objectArray[index]))
                this.add(input, mappedToInput)

method add*(this: InputToGameKeyMapping, input: Input, mappedToInput: Input) =
        procCall InputMapping(this).add(input, mappedToInput)
        this.set(input, mappedToInput)

method remove*(this: InputToGameKeyMapping, input: Input, mappedToInput: Input) =
        this.logUtil.putF(newStringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(input)).append(" == ").append(StringUtil.getInstance().toString(mappedToInput)).toString(), this, "InputToGameKeyMapping::remove")
        procCall InputMapping(this).remove(input, mappedToInput)
        this.set(input, this.gameKeyFactory.NONE)

method set*(this: InputToGameKeyMapping, input: Input, mappedToInput: Input) {.base.} =
        var id: int32 = mappedToInput.getId()
        if id >= 0 and id < this.platformToGameKeyMapping.length:
            this.platformToGameKeyMapping[id] = GameKey(JObject(input))

method getMaxMappable*(this: InputToGameKeyMapping): int32 {.base, discardable.} =
        return this.platformToGameKeyMapping.length

method getReverseInstance*(this: InputToGameKeyMapping, id: int32): BasicArrayList {.base, discardable.} =
        var list: BasicArrayList = newBasicArrayListD()
        let inputFactory: InputFactory = InputFactory.getInstance()
        block:
            var index: int32 = 0
            while index < this.platformToGameKeyMapping.length:
                defer: index = index +% 1
                if this.platformToGameKeyMapping[index].getId() == id:
                    var input: Input = inputFactory.getInstanceById(index)
                    if (not jIsNil(input)):
                        list.add(input)
        return list

method initGameKey*(this: InputToGameKeyMapping, canvas: Canvas, gameKey: GameKey) {.base.} =
        var key: int32 = canvas.getKeyCode(gameKey.getId())
        if key < 0 and -key < this.negativePlatformToGameKeyMapping.length:
            this.negativePlatformToGameKeyMapping[-key] = gameKey
        elif key > 0:
            if this.platformToGameKeyMapping[key] == this.gameKeyFactory.NONE:
                this.platformToGameKeyMapping[key] = gameKey
        else:
            PreLogUtil.putOE(newStringMaker().append(gameKey.toString()).append(CommonSeps.getInstance().COLON_SEP).appendint(key).toString(), this, this.commonStrings.INIT, newJException("Exception", ""))

method getSmallestCanvasGameKeyCode*(this: InputToGameKeyMapping, canvas: Canvas): int32 {.base, discardable.} =
        var nextKey: int32 = 0
        var smallestKey: int32 = 0
        block:
            var index: int32 = this.mappedGameKeys.length
            while jPreDecrement(index) >= 0:
                nextKey = canvas.getKeyCode(this.mappedGameKeys[index].getId())
                if nextKey < smallestKey:
                    smallestKey = nextKey
        return smallestKey

method init*(this: InputToGameKeyMapping, canvas: Canvas) {.base.} =
        try:
            var negativePlatformToGameKeyMapping: JArray[GameKey] = newJArray[GameKey](0, default(GameKey))
            var smallestKey: int32 = this.getSmallestCanvasGameKeyCode(canvas)
            if smallestKey < 0:
                smallestKey = smallestKey -% 1
                if smallestKey < -256:
                    smallestKey = -256
                negativePlatformToGameKeyMapping = newJArray[GameKey](-smallestKey, default(GameKey))
                block:
                    var index: int32 = negativePlatformToGameKeyMapping.length
                    while jPreDecrement(index) >= 0:
                        negativePlatformToGameKeyMapping[index] = this.gameKeyFactory.NONE
                this.negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping
            block:
                var index: int32 = this.mappedGameKeys.length
                while jPreDecrement(index) >= 0:
                    this.initGameKey(canvas, this.mappedGameKeys[index])
        except CatchableError as jcaught:
            let t = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, t)

method getInstanceForCanvas*(this: InputToGameKeyMapping, canvas: Canvas, id: int32): GameKey {.base, discardable.} =
        if id >= 0 and id < this.platformToGameKeyMapping.length:
            return this.platformToGameKeyMapping[id]
        elif id < 0 and -id < this.negativePlatformToGameKeyMapping.length:
            return this.negativePlatformToGameKeyMapping[-id]
        else:
            return this.gameKeyFactory.NONE

method getInstance*(this: InputToGameKeyMapping, id: int32): GameKey {.base, discardable.} =
        if id >= 0 and id < this.platformToGameKeyMapping.length:
            return this.platformToGameKeyMapping[id]
        elif id < 0 and -id < this.negativePlatformToGameKeyMapping.length:
            return this.negativePlatformToGameKeyMapping[-id]
        else:
            return this.gameKeyFactory.NONE

when declared(newInputToGameKeyMappingHook0):
    newInputToGameKeyMappingHook0 = proc (): InputMapping = newInputToGameKeyMapping()

