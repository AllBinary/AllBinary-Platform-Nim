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
# package org.allbinary.game.score.remote

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Long as LongModule
export LongModule
import org/allbinary/game/score/HighScore as HighScoreModule
export HighScoreModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/security/crypt/jcehelper/NoCrypt as NoCryptModule
export NoCryptModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/score/remote/RemoteHighScoresSubmissionProcessorInterface as RemoteHighScoresSubmissionProcessorInterfaceModule
export RemoteHighScoresSubmissionProcessorInterfaceModule
import org/allbinary/game/score/remote/RemoteHighScores as RemoteHighScoresModule
export RemoteHighScoresModule

type
    RemoteHighScoresSubmissionProcessor* = ref object of RemoteHighScoresSubmissionProcessorInterface
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        noCrypt*: NoCrypt

proc newRemoteHighScoresSubmissionProcessor*(): RemoteHighScoresSubmissionProcessor
proc initRemoteHighScoresSubmissionProcessor*(this: RemoteHighScoresSubmissionProcessor)
method process*(this: RemoteHighScoresSubmissionProcessor, remoteHighScores: RemoteHighScores, abeClientInformation: AbeClientInformationInterface, highScore: HighScore)
import org/allbinary/game/GameInfoData as GameInfoDataModule
export GameInfoDataModule
import org/allbinary/game/configuration/GameConfigurationCentral as GameConfigurationCentralModule
export GameConfigurationCentralModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient as XmlRpcAbeClientModule
export XmlRpcAbeClientModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/HashtableUtil as HashtableUtilModule
export HashtableUtilModule
import org/allbinary/game/score/remote/RemoteHighScoresData as RemoteHighScoresDataModule
export RemoteHighScoresDataModule
import org/allbinary/game/score/remote/XmlRpcRemoteHighScoresClient as XmlRpcRemoteHighScoresClientModule
export XmlRpcRemoteHighScoresClientModule


# Java field initializers run after the base initializer
proc initFieldsRemoteHighScoresSubmissionProcessor(this: RemoteHighScoresSubmissionProcessor) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.noCrypt = newNoCrypt()
    discard

proc initRemoteHighScoresSubmissionProcessor*(this: RemoteHighScoresSubmissionProcessor) =
        this.initFieldsRemoteHighScoresSubmissionProcessor()
        discard

proc newRemoteHighScoresSubmissionProcessor*(): RemoteHighScoresSubmissionProcessor =
    result = RemoteHighScoresSubmissionProcessor()
    initRemoteHighScoresSubmissionProcessor(result)

method process*(this: RemoteHighScoresSubmissionProcessor, remoteHighScores: RemoteHighScores, abeClientInformation: AbeClientInformationInterface, highScore: HighScore) =
        try:
            this.logUtil.putF("Begin Remote HighScores Submission", this, this.commonStrings.PROCESS)
            let gameInfoData: GameInfoData = GameInfoData.getInstance()
            let hashtable: ABHashtable = abeClientInformation.toHashtable()
            HashtableUtil.getInstance().putAll(highScore.getGameInfo().toHashtable(), hashtable)
            hashtable.put(RemoteHighScoresData.getInstance().CUSTOMER_USER_NAME, "None")
            hashtable.put(RemoteHighScoresData.getInstance().DISPLAY_NAME, highScore.getName())
            hashtable.put(gameInfoData.SOFTWARE_INFORMATION, remoteHighScores.getSoftwareInformation().toString())
            hashtable.put(remoteHighScores.ASCENDING, remoteHighScores.getAscending().toString())
            let displayInfoSingleton: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
            hashtable.put(displayInfoSingleton.ORIENTATION, BooleanFactory.getInstance().toStringb(displayInfoSingleton.isPortrait()))
            hashtable.put(RemoteHighScoresData.getInstance().GAME_CONFIGURATION, GameConfigurationCentral.getInstance().toString())
            hashtable.put(RemoteHighScoresData.getInstance().SCORE, jstr(highScore.getScore()))
            if XmlRpcAbeClient.isOnline:
                let resultHashtable: ABHashtable = ABHashtable(JObject(newXmlRpcRemoteHighScoresClient(abeClientInformation, "highscoresubmissionservicessl.php", "HighScoreSubmissionService.process").get(hashtable, this.noCrypt)))
                remoteHighScores.update(resultHashtable)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.PROCESS, e)

