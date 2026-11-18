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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    GameInput* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        gameKeyEventList*: BasicArrayList
        removalGameKeyEventList*: BasicArrayList
        isRemoveDuplicateKeyPresses*: bool

proc newGameInput*(gameKeyEventList: BasicArrayList, removalGameKeyEventList: BasicArrayList): GameInput
proc initGameInput*(this: GameInput, gameKeyEventList: BasicArrayList, removalGameKeyEventList: BasicArrayList)
method add*(this: GameInput, gameKeyEvent: GameKeyEvent) {.base.}
method addForRemoval*(this: GameInput, gameKeyEvent: GameKeyEvent) {.base.}
method isForRemoval*(this: GameInput, gameKeyEvent: GameKeyEvent): bool {.base, discardable.}
method clear*(this: GameInput) {.base.}
method removeNonAIInputGameKeyEvents*(this: GameInput) {.base.}
method update*(this: GameInput) {.base.}
method getRemovalGameKeyEventList*(this: GameInput): BasicArrayList {.base, discardable.}
method getGameKeyEventList*(this: GameInput): BasicArrayList {.base, discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/InputFeatureFactory as InputFeatureFactoryModule
export InputFeatureFactoryModule


# Java field initializers run after the base initializer
proc initFieldsGameInput(this: GameInput) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    
    
    discard

proc initGameInput*(this: GameInput, gameKeyEventList: BasicArrayList, removalGameKeyEventList: BasicArrayList) =
        this.initFieldsGameInput()
        this.gameKeyEventList = gameKeyEventList
        this.removalGameKeyEventList = removalGameKeyEventList
        this.isRemoveDuplicateKeyPresses = Features.getInstance().isFeature(InputFeatureFactory.getInstance().REMOVE_DUPLICATE_KEY_PRESSES)

proc newGameInput*(gameKeyEventList: BasicArrayList, removalGameKeyEventList: BasicArrayList): GameInput =
    result = GameInput()
    initGameInput(result, gameKeyEventList, removalGameKeyEventList)

method add*(this: GameInput, gameKeyEvent: GameKeyEvent) {.base.} =
        if this.isRemoveDuplicateKeyPresses and this.gameKeyEventList.contains(gameKeyEvent):
            return
        if (not jIsNil(gameKeyEvent)):
            this.gameKeyEventList.add(gameKeyEvent)
        else:
            this.logUtil.putF("Danger Passed Null GameKeyEvent", this, this.commonStrings.ADD)

method addForRemoval*(this: GameInput, gameKeyEvent: GameKeyEvent) {.base.} =
        this.removalGameKeyEventList.add(gameKeyEvent)

method isForRemoval*(this: GameInput, gameKeyEvent: GameKeyEvent): bool {.base, discardable.} =
        return this.removalGameKeyEventList.contains(gameKeyEvent)

method clear*(this: GameInput) {.base.} =
        this.gameKeyEventList.clear()

method removeNonAIInputGameKeyEvents*(this: GameInput) {.base.} =
        var list: BasicArrayList = this.gameKeyEventList
        var gameKeyEvent: GameKeyEvent = nil
        block:
            var index: int32 = list.size()
            while jPreDecrement(index) >= 0:
                gameKeyEvent = GameKeyEvent(JObject(list.objectArray[index]))
                if gameKeyEvent.getSourceId() != 1:
                    list.removeAt(index)

method update*(this: GameInput) {.base.} =
        var removeList: BasicArrayList = this.removalGameKeyEventList
        var list: BasicArrayList = this.gameKeyEventList
        var size: int32 = removeList.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                var anyType: JObject = removeList.objectArray[index]
                block:
                    var index2: int32 = list.size()
                    while jPreDecrement(index2) >= 0:
                        if list.objectArray[index2] == anyType:
                            list.removeAt(index2)
        removeList.clear()

method getRemovalGameKeyEventList*(this: GameInput): BasicArrayList {.base, discardable.} =
        return this.removalGameKeyEventList

method getGameKeyEventList*(this: GameInput): BasicArrayList {.base, discardable.} =
        return this.gameKeyEventList

