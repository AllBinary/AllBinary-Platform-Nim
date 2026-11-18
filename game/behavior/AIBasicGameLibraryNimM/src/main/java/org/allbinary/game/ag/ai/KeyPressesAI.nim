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
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    KeyPressesAI* = ref object of BasicAI
        on*: bool
        keys*: JArray[int32]

proc newKeyPressesAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): KeyPressesAI
proc initKeyPressesAI*(this: KeyPressesAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: KeyPressesAI, allBinaryLayerManager: AllBinaryLayerManager)
method toggle*(this: KeyPressesAI) {.base.}
method disable*(this: KeyPressesAI) {.base.}
method enable*(this: KeyPressesAI) {.base.}
method setOn*(this: KeyPressesAI, on: bool) {.base.}
method isOn*(this: KeyPressesAI): bool {.base, discardable.}
import org/allbinary/util/HashtableUtil as HashtableUtilModule
export HashtableUtilModule


# Java field initializers run after the base initializer
proc initFieldsKeyPressesAI(this: KeyPressesAI) =
    this.on = true
    
    discard

proc initKeyPressesAI*(this: KeyPressesAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsKeyPressesAI()
        this.keys = newJArray[int32](hashtable.size(), default(int32))
        var objectArray: JArray[JObject] = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        var size: int32 = objectArray.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                this.keys[index] = jUnboxInteger(hashtable.get(JObject(JObject(objectArray[index]))))

proc newKeyPressesAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): KeyPressesAI =
    result = KeyPressesAI()
    initKeyPressesAI(result, hashtable, ownerLayerInterface, gameInput)

method processAI*(this: KeyPressesAI, allBinaryLayerManager: AllBinaryLayerManager) =
        if this.on:
            block:
                var index: int32 = 0
                while index < this.keys.length:
                    defer: index = index +% 1
                    procCall BasicAI(this).processKeyAI(this.keys[index].intValue())

method toggle*(this: KeyPressesAI) {.base.} =
        if this.isOn():
            this.setOn(false)
        else:
            this.setOn(true)

method disable*(this: KeyPressesAI) {.base.} =
        this.setOn(false)

method enable*(this: KeyPressesAI) {.base.} =
        this.setOn(true)

method setOn*(this: KeyPressesAI, on: bool) {.base.} =
        this.on = on

method isOn*(this: KeyPressesAI): bool {.base, discardable.} =
        return this.on

when declared(newKeyPressesAIHook3):
    newKeyPressesAIHook3 = proc (hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newKeyPressesAI(hashtable, ownerLayerInterface, gameInput)

