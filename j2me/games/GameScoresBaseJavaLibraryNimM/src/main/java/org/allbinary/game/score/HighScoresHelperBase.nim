#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.score

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/game/score/HighScoresHelperBaseInterface as HighScoresHelperBaseInterfaceModule
export HighScoresHelperBaseInterfaceModule
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule

type
    HighScoresHelperBase* = ref object of HighScoresHelperBaseInterface
        logUtil*: LogUtil
        highScoresArrayP*: JArray[HighScores]

proc newHighScoresHelperBase*(): HighScoresHelperBase
method setHighScoresArray*(this: HighScoresHelperBase, highScoresArrayP: JArray[HighScores])
method getNextHighScores*(this: HighScoresHelperBase): HighScores {.base, discardable.}
method isAnyHighScores*(this: HighScoresHelperBase): bool {.base, discardable.}
method setSelectedHighScores*(this: HighScoresHelperBase, selectedHighScores: HighScores)
method getSelectedHighScores*(this: HighScoresHelperBase): HighScores {.discardable.}
method getHighScoresArray*(this: HighScoresHelperBase): JArray[HighScores] {.discardable.}
method selectHighScores*(this: HighScoresHelperBase) {.base.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/score/LastFetchHighScoresFactory as LastFetchHighScoresFactoryModule
export LastFetchHighScoresFactoryModule
import org/allbinary/game/score/NullHighScoresSingletonFactory as NullHighScoresSingletonFactoryModule
export NullHighScoresSingletonFactoryModule


# Java field initializers run after the base initializer
proc initFieldsHighScoresHelperBase(this: HighScoresHelperBase) =
    this.logUtil = LogUtil.getInstance()
    this.highScoresArrayP = LastFetchHighScoresFactory.getInstance().highScoresArray
    discard

proc initHighScoresHelperBase*(this: HighScoresHelperBase) =
    this.initFieldsHighScoresHelperBase()

proc newHighScoresHelperBase*(): HighScoresHelperBase =
    result = HighScoresHelperBase()
    initHighScoresHelperBase(result)

method setHighScoresArray*(this: HighScoresHelperBase, highScoresArrayP: JArray[HighScores]) =
        if (not jIsNil(highScoresArrayP)):
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.putF(newStringMaker().append(commonStrings.START).appendint(highScoresArrayP.length).toString(), this, "setHighScoresArray")
        else:
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.putF(commonStrings.START, this, "setHighScoresArray")
        this.highScoresArrayP = highScoresArrayP

method getNextHighScores*(this: HighScoresHelperBase): HighScores {.base, discardable.} =
        return NullHighScoresSingletonFactory.getInstance()

method isAnyHighScores*(this: HighScoresHelperBase): bool {.base, discardable.} =
        raise newJException("RuntimeException", "")

method setSelectedHighScores*(this: HighScoresHelperBase, selectedHighScores: HighScores) =
        discard

method getSelectedHighScores*(this: HighScoresHelperBase): HighScores {.discardable.} =
        return NullHighScoresSingletonFactory.getInstance()

method getHighScoresArray*(this: HighScoresHelperBase): JArray[HighScores] {.discardable.} =
        return this.highScoresArrayP

method selectHighScores*(this: HighScoresHelperBase) {.base.} =
        discard

