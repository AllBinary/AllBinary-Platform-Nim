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
# package org.allbinary.game.score

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/SoftwareInformation as SoftwareInformationModule
export SoftwareInformationModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/game/score/HighScoresBase as HighScoresBaseModule
export HighScoresBaseModule
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule
import org/allbinary/game/score/HighScoresResultsListener as HighScoresResultsListenerModule
export HighScoresResultsListenerModule
import org/allbinary/game/score/HighScoresHelperBaseInterface as HighScoresHelperBaseInterfaceModule
export HighScoresHelperBaseInterfaceModule

type
    BasicHighScoresFactory* = ref object of HighScoresBase
        logUtil*: LogUtil
        abeClientInformation*: AbeClientInformationInterface
        softwareInformation*: SoftwareInformation
        highScoresArray*: JArray[HighScores]
        TOP*: string
        SCORES*: string
        PERSONAL_HIGH_SCORES*: string
        WORLD_TOP_SCORES*: string
        FETCH*: string

proc newBasicHighScoresFactory*(abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation): BasicHighScoresFactory
proc initBasicHighScoresFactory*(this: BasicHighScoresFactory, abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation)
method fetchHighScores*(this: BasicHighScoresFactory, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener)
method fetchHighScoresPreload*(this: BasicHighScoresFactory, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener, preload: bool)
method createHighScoresHelper*(this: BasicHighScoresFactory): HighScoresHelperBaseInterface {.discardable.}
proc loaded*(t: typedesc[BasicHighScoresFactory], index2: int32): bool {.discardable.}
import org/allbinary/thread/ARunnable as ARunnableModule
export ARunnableModule
import org/allbinary/game/BasicHighScoresGameInfoFactory as BasicHighScoresGameInfoFactoryModule
export BasicHighScoresGameInfoFactoryModule
import org/allbinary/game/GameType as GameTypeModule
export GameTypeModule
import org/allbinary/game/GameTypeFactory as GameTypeFactoryModule
export GameTypeFactoryModule
import org/allbinary/game/score/remote/RemoteHighScores as RemoteHighScoresModule
export RemoteHighScoresModule
import org/allbinary/logic/java/bool/BooleanFactory as BooleanFactoryModule
export BooleanFactoryModule
import org/allbinary/thread/SecondaryThreadPool as SecondaryThreadPoolModule
export SecondaryThreadPoolModule
import org/allbinary/game/score/RecordStoreHighScores as RecordStoreHighScoresModule
export RecordStoreHighScoresModule
import org/allbinary/game/score/ScoreComparator as ScoreComparatorModule
export ScoreComparatorModule
import org/allbinary/game/score/LastFetchHighScoresFactory as LastFetchHighScoresFactoryModule
export LastFetchHighScoresFactoryModule
import org/allbinary/game/score/HighScoresHelper2 as HighScoresHelper2Module
export HighScoresHelper2Module


# Java field initializers run after the base initializer
proc initFieldsBasicHighScoresFactory(this: BasicHighScoresFactory) =
    this.logUtil = LogUtil.getInstance()
    
    
    this.highScoresArray = newJArray[HighScores](2, default(HighScores))
    this.TOP = "Top"
    this.SCORES = "Scores"
    this.PERSONAL_HIGH_SCORES = "Personal Top Scores"
    this.WORLD_TOP_SCORES = "World Top Scores"
    this.FETCH = "fetchHighScores"
    discard

proc initBasicHighScoresFactory*(this: BasicHighScoresFactory, abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation) =
        initHighScoresBase(this)
        this.initFieldsBasicHighScoresFactory()
        this.abeClientInformation = abeClientInformation
        this.softwareInformation = softwareInformation

proc newBasicHighScoresFactory*(abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation): BasicHighScoresFactory =
    result = BasicHighScoresFactory()
    initBasicHighScoresFactory(result, abeClientInformation, softwareInformation)

method fetchHighScores*(this: BasicHighScoresFactory, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener) =
        this.logUtil.putF("Getting Remote/Local HighScores", this, this.FETCH)
        this.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true)

method fetchHighScoresPreload*(this: BasicHighScoresFactory, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener, preload: bool) =
        SecondaryThreadPool.getInstance().runTask(newARunnable() #[ Java anonymous class body: implement it as a named subclass
            
method run*(this: BasicHighScoresFactory) =
                let logUtil: LogUtil = LogUtil.getInstance()
                try:
                    logUtil.putF(this.commonStrings.START, this, this.FETCH)
                    this.highScoresArray[0] = RecordStoreHighScores.getInstance(this.abeClientInformation, gameInfo, this.TOP, this.PERSONAL_HIGH_SCORES, this.SCORES, newScoreComparator(true))
                    let gameType: GameType = gameInfo.getGameType()
                    let gameTypeFactory: GameTypeFactory = GameTypeFactory.getInstance()
                    var gameInfo2: GameInfo = gameInfo
                    if gameType == gameTypeFactory.SINGLE_PLAYER or gameType == gameTypeFactory.BOT:
                        gameInfo2 = BasicHighScoresGameInfoFactory.getInstance().SINGLE_PLAYER_SERVER
                    elif gameType == gameTypeFactory.MULTI_PLAYER:
                        gameInfo2 = BasicHighScoresGameInfoFactory.getInstance().MULTI_PLAYER_SERVER
                    this.highScoresArray[1] = RemoteHighScores.getInstancePreload(this.abeClientInformation, this.softwareInformation, gameInfo2, this.WORLD_TOP_SCORES, this.SCORES, BooleanFactory.getInstance().FALSE, preload)
                    logUtil.putF(this.commonStrings.END, this, this.FETCH)
                    LastFetchHighScoresFactory.getInstance().highScoresArray = this.highScoresArray
                    highScoresResultsListener.setHighScoresArray(this.highScoresArray)
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    logUtil.put(this.commonStrings.EXCEPTION, this, this.FETCH, e) ]#)

method createHighScoresHelper*(this: BasicHighScoresFactory): HighScoresHelperBaseInterface {.discardable.} =
        return newHighScoresHelper2()

proc loaded*(t: typedesc[BasicHighScoresFactory], index2: int32): bool {.discardable.} =
        if index2 >= 0:
            return true
        return false

when declared(newBasicHighScoresFactoryHook2):
    newBasicHighScoresFactoryHook2 = proc (abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation): HighScoresBase = newBasicHighScoresFactory(abeClientInformation, softwareInformation)

