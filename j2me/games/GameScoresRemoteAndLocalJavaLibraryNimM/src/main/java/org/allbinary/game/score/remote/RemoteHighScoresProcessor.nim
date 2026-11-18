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
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/security/crypt/jcehelper/NoCrypt as NoCryptModule
export NoCryptModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/score/remote/RemoteHighScoresProcessorInterface as RemoteHighScoresProcessorInterfaceModule
export RemoteHighScoresProcessorInterfaceModule
import org/allbinary/game/score/remote/RemoteHighScores as RemoteHighScoresModule
export RemoteHighScoresModule

type
    RemoteHighScoresProcessor* = ref object of RemoteHighScoresProcessorInterface
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        noCrypt*: NoCrypt

proc newRemoteHighScoresProcessor*(): RemoteHighScoresProcessor
proc initRemoteHighScoresProcessor*(this: RemoteHighScoresProcessor)
method process*(this: RemoteHighScoresProcessor, remoteHighScores: RemoteHighScores, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo)
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
proc initFieldsRemoteHighScoresProcessor(this: RemoteHighScoresProcessor) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.noCrypt = newNoCrypt()
    discard

proc initRemoteHighScoresProcessor*(this: RemoteHighScoresProcessor) =
        this.initFieldsRemoteHighScoresProcessor()
        discard

proc newRemoteHighScoresProcessor*(): RemoteHighScoresProcessor =
    result = RemoteHighScoresProcessor()
    initRemoteHighScoresProcessor(result)

method process*(this: RemoteHighScoresProcessor, remoteHighScores: RemoteHighScores, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo) =
        this.logUtil.putF("Begin Remote HighScores Retrieval", this, this.commonStrings.PROCESS)
        let gameInfoData: GameInfoData = GameInfoData.getInstance()
        let hashtable: ABHashtable = abeClientInformation.toHashtable()
        HashtableUtil.getInstance().putAll(gameInfo.toHashtable(), hashtable)
        hashtable.put(gameInfoData.SOFTWARE_INFORMATION, remoteHighScores.getSoftwareInformation().toString())
        hashtable.put(remoteHighScores.ASCENDING, remoteHighScores.getAscending().toString())
        let displayInfoSingleton: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        hashtable.put(displayInfoSingleton.ORIENTATION, BooleanFactory.getInstance().toStringb(displayInfoSingleton.isPortrait()))
        hashtable.put(RemoteHighScoresData.getInstance().GAME_CONFIGURATION, GameConfigurationCentral.getInstance().toString())
        if XmlRpcAbeClient.isOnline:
            var resultHashtable: ABHashtable = ABHashtable(JObject(newXmlRpcRemoteHighScoresClient(abeClientInformation, "highscoresservicessl.php", "HighScoresService.process").get(hashtable, this.noCrypt)))
            remoteHighScores.update(resultHashtable)

