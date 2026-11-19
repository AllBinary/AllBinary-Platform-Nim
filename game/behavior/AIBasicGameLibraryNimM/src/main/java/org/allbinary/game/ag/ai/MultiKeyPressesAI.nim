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
# package org.allbinary.game.ag.ai

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/time/GameTickTimeDelayHelper as GameTickTimeDelayHelperModule
export GameTickTimeDelayHelperModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/ag/ai/KeyPressesAI as KeyPressesAIModule
export KeyPressesAIModule

type
    MultiKeyPressesAI* = ref object of KeyPressesAI
        toggleTimeHelper*: TimeDelayHelper
        gameTickTimeDelayHelper*: GameTickTimeDelayHelper

proc newMultiKeyPressesAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): MultiKeyPressesAI
proc initMultiKeyPressesAI*(this: MultiKeyPressesAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: MultiKeyPressesAI, allBinaryLayerManager: AllBinaryLayerManager)
method update*(this: MultiKeyPressesAI) {.base.}
method toggle*(this: MultiKeyPressesAI)
method disable*(this: MultiKeyPressesAI)
method enable*(this: MultiKeyPressesAI)
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule


# Java field initializers run after the base initializer
proc initFieldsMultiKeyPressesAI(this: MultiKeyPressesAI) =
    this.toggleTimeHelper = newTimeDelayHelper(600)
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    discard

proc initMultiKeyPressesAI*(this: MultiKeyPressesAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initKeyPressesAI(this, hashtable, ownerLayerInterface, gameInput)
        this.initFieldsMultiKeyPressesAI()
        this.update()

proc newMultiKeyPressesAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): MultiKeyPressesAI =
    result = MultiKeyPressesAI()
    initMultiKeyPressesAI(result, hashtable, ownerLayerInterface, gameInput)

method processAI*(this: MultiKeyPressesAI, allBinaryLayerManager: AllBinaryLayerManager) =
        discard

method update*(this: MultiKeyPressesAI) {.base.} =
        var gameInput: GameInput = this.getGameInput()
        let keys: JArray[int32] = this.keys
        let size: int32 = keys.length
        if this.isOn():
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    var key: int32 = keys[index].intValue()
                    if key != -1:
                        gameInput.add(this.gameKeyEventFactory.getInstanceForKey(this, key))
        else:
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    var key: int32 = keys[index].intValue()
                    if key != -1:
                        gameInput.addForRemoval(this.gameKeyEventFactory.getInstanceForKey(this, key))

method toggle*(this: MultiKeyPressesAI) =
        if this.toggleTimeHelper.isTime(this.gameTickTimeDelayHelper.startTime):
            jSuperStatement(procCall KeyPressesAI(this).toggle())
            this.update()

method disable*(this: MultiKeyPressesAI) =
        if this.toggleTimeHelper.isTime(this.gameTickTimeDelayHelper.startTime):
            jSuperStatement(procCall KeyPressesAI(this).disable())
            this.update()

method enable*(this: MultiKeyPressesAI) =
        if this.toggleTimeHelper.isTime(this.gameTickTimeDelayHelper.startTime):
            jSuperStatement(procCall KeyPressesAI(this).enable())
            this.update()

when declared(newMultiKeyPressesAIHook3):
    newMultiKeyPressesAIHook3 = proc (hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): KeyPressesAI = newMultiKeyPressesAI(hashtable, ownerLayerInterface, gameInput)

