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
# package org.allbinary.game.score.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/game/score/HighScore as HighScoreModule
export HighScoreModule
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule
import org/allbinary/game/score/HighScoresFactoryInterface as HighScoresFactoryInterfaceModule
export HighScoresFactoryInterfaceModule
import org/allbinary/game/score/HighScoresHelperBaseInterface as HighScoresHelperBaseInterfaceModule
export HighScoresHelperBaseInterfaceModule
import org/allbinary/game/score/HighScoresResultsListener as HighScoresResultsListenerModule
export HighScoresResultsListenerModule
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

type
    HighScoreUtil* = ref object of HighScoresResultsListener
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        highScoresFactoryInterface*: HighScoresFactoryInterface
        highScoresArray*: JArray[HighScores]
        highScore*: HighScore
        abeClientInformation*: AbeClientInformationInterface
        gameInfo*: GameInfo
        highScoresHelper*: HighScoresHelperBaseInterface
        firstTime*: bool

proc newHighScoreUtil*(highScoresFactoryInterface: HighScoresFactoryInterface, highScoresHelper: HighScoresHelperBaseInterface, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, cmdListener: CommandListener, name: string, highScore: HighScore): HighScoreUtil
proc initHighScoreUtil*(this: HighScoreUtil, highScoresFactoryInterface: HighScoresFactoryInterface, highScoresHelper: HighScoresHelperBaseInterface, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, cmdListener: CommandListener, name: string, highScore: HighScore)
method setHighScoresArray*(this: HighScoreUtil, highScoresArray: JArray[HighScores])
method update*(this: HighScoreUtil, name: string) {.base.}
method saveHighScore*(this: HighScoreUtil) {.base.}
method submit*(this: HighScoreUtil, myCanvas: MyCanvas) {.base.}
import org/allbinary/game/score/HighScoreNamePersistanceSingleton as HighScoreNamePersistanceSingletonModule
export HighScoreNamePersistanceSingletonModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var HighScoreUtil_SUBMIT_TEXTBOX_COMMANDValue: Command
var HighScoreUtil_SUBMIT_TEXTBOX_COMMANDSet = false
proc SUBMIT_TEXTBOX_COMMAND*(t: typedesc[HighScoreUtil]): Command =
    if not HighScoreUtil_SUBMIT_TEXTBOX_COMMANDSet:
        HighScoreUtil_SUBMIT_TEXTBOX_COMMANDSet = true
        HighScoreUtil_SUBMIT_TEXTBOX_COMMANDValue = newCommand("Submit", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    HighScoreUtil_SUBMIT_TEXTBOX_COMMANDValue

# Java field initializers run after the base initializer
proc initFieldsHighScoreUtil(this: HighScoreUtil) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    
    
    
    
    
    this.firstTime = true
    discard

proc initHighScoreUtil*(this: HighScoreUtil, highScoresFactoryInterface: HighScoresFactoryInterface, highScoresHelper: HighScoresHelperBaseInterface, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, cmdListener: CommandListener, name: string, highScore: HighScore) =
        this.initFieldsHighScoreUtil()
        this.highScoresFactoryInterface = highScoresFactoryInterface
        this.highScoresHelper = highScoresHelper
        this.highScoresArray = this.highScoresHelper.getHighScoresArray()
        this.highScore = highScore
        this.abeClientInformation = abeClientInformation
        this.gameInfo = gameInfo

proc newHighScoreUtil*(highScoresFactoryInterface: HighScoresFactoryInterface, highScoresHelper: HighScoresHelperBaseInterface, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, cmdListener: CommandListener, name: string, highScore: HighScore): HighScoreUtil =
    result = HighScoreUtil()
    initHighScoreUtil(result, highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)

method setHighScoresArray*(this: HighScoreUtil, highScoresArray: JArray[HighScores]) =
        this.highScoresArray = highScoresArray
        this.firstTime = false
        this.saveHighScore()

method update*(this: HighScoreUtil, name: string) {.base.} =
        HighScoreNamePersistanceSingleton.getInstance().save(this.abeClientInformation, this.gameInfo, name)
        this.highScore.setName(name)

method saveHighScore*(this: HighScoreUtil) {.base.} =
        this.logUtil.putF(newStringMaker().append(this.commonStrings.START).append(StringUtil.getInstance().toString(this.highScore)).toString(), this, "saveHighScore")
        let size: int32 = this.highScoresArray.length
        if this.firstTime and size == 0:
            this.logUtil.putF("Games canvas did not give us any HighScores", this, "saveHighScore")
            this.highScoresFactoryInterface.fetchHighScores(this.gameInfo, this)
            return
        var highScores: HighScores = nil
        var highScoresAsString: string = ""
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                highScores = this.highScoresArray[index]
                highScores.addHighScore(this.highScore)
                highScoresAsString = highScores.toString()
                this.logUtil.putF(newStringMaker().append("Added/Adding Score: ").append(highScoresAsString).toString(), this, "saveHighScore")
        this.highScoresHelper.setHighScoresArray(this.highScoresArray)

method submit*(this: HighScoreUtil, myCanvas: MyCanvas) {.base.} =
        let commandListener: CommandListener = myCanvas.getCustomCommandListener()
        commandListener.commandAction(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND, myCanvas)

