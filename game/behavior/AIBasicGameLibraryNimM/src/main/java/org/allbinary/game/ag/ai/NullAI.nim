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
import org/allbinary/ai/ArtificialIntelligence as ArtificialIntelligenceModule
export ArtificialIntelligenceModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    NullAI* = ref object of ArtificialIntelligence

proc newNullAI*(): NullAI
proc initNullAI*(this: NullAI)
method processAI*(this: NullAI, allBinaryLayerManager: AllBinaryLayerManager)


proc initNullAI*(this: NullAI) =
        initArtificialIntelligence(this)
        discard

proc newNullAI*(): NullAI =
    result = NullAI()
    initNullAI(result)

method processAI*(this: NullAI, allBinaryLayerManager: AllBinaryLayerManager) =
        discard

when declared(newNullAIHook0):
    newNullAIHook0 = proc (): ArtificialIntelligence = newNullAI()

