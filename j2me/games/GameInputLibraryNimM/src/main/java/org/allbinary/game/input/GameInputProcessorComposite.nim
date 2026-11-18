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
import org/allbinary/game/input/PlayerGameInput as PlayerGameInputModule
export PlayerGameInputModule
import org/allbinary/game/input/GameInputProcessorInterface as GameInputProcessorInterfaceModule
export GameInputProcessorInterfaceModule

type
    GameInputProcessorComposite* = ref object of PlayerGameInput
        name*: string
        gameInputProcessorInterface*: GameInputProcessorInterface
        NAME_LABEL*: string

proc newGameInputProcessorComposite*(name: string, gameInputProcessorInterface: GameInputProcessorInterface): GameInputProcessorComposite
proc initGameInputProcessorComposite*(this: GameInputProcessorComposite, name: string, gameInputProcessorInterface: GameInputProcessorInterface)
method update*(this: GameInputProcessorComposite)
method toString*(this: GameInputProcessorComposite): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsGameInputProcessorComposite(this: GameInputProcessorComposite) =
    
    
    this.NAME_LABEL = " GameInputProcessorInterface: "
    discard

proc initGameInputProcessorComposite*(this: GameInputProcessorComposite, name: string, gameInputProcessorInterface: GameInputProcessorInterface) =
        initPlayerGameInput(this, newBasicArrayListD(), newBasicArrayListD(), -1)
        this.initFieldsGameInputProcessorComposite()
        this.name = name
        this.gameInputProcessorInterface = gameInputProcessorInterface

proc newGameInputProcessorComposite*(name: string, gameInputProcessorInterface: GameInputProcessorInterface): GameInputProcessorComposite =
    result = GameInputProcessorComposite()
    initGameInputProcessorComposite(result, name, gameInputProcessorInterface)

method update*(this: GameInputProcessorComposite) =
        try:
            var list: BasicArrayList = this.getGameKeyEventList()
            this.gameInputProcessorInterface.onInput(list)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e)

method toString*(this: GameInputProcessorComposite): string {.discardable.} =
        return newStringMaker().append(procCall PlayerGameInput(this).toString()).append(this.NAME_LABEL).append(this.name).toString()

when declared(newGameInputProcessorCompositeHook2):
    newGameInputProcessorCompositeHook2 = proc (name: string, gameInputProcessorInterface: GameInputProcessorInterface): PlayerGameInput = newGameInputProcessorComposite(name, gameInputProcessorInterface)

