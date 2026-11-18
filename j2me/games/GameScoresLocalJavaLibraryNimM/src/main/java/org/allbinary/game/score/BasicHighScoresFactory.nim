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
        highScoresArray*: JArray[HighScores]
        TOP*: string
        SCORES*: string
        PERSONAL_HIGH_SCORES*: string
        FETCH*: string

proc newBasicHighScoresFactory*(abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation): BasicHighScoresFactory
proc initBasicHighScoresFactory*(this: BasicHighScoresFactory, abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation)
method fetchHighScores*(this: BasicHighScoresFactory, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener)
method fetchHighScoresPreload*(this: BasicHighScoresFactory, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener, preload: bool)
method createHighScoresHelper*(this: BasicHighScoresFactory): HighScoresHelperBaseInterface {.discardable.}
proc loaded*(t: typedesc[BasicHighScoresFactory], index2: int32): bool {.discardable.}
import org/allbinary/game/score/RecordStoreHighScores as RecordStoreHighScoresModule
export RecordStoreHighScoresModule
import org/allbinary/game/score/ScoreComparator as ScoreComparatorModule
export ScoreComparatorModule
import org/allbinary/game/score/HighScoresHelper2 as HighScoresHelper2Module
export HighScoresHelper2Module


# Java field initializers run after the base initializer
proc initFieldsBasicHighScoresFactory(this: BasicHighScoresFactory) =
    this.logUtil = LogUtil.getInstance()
    
    this.highScoresArray = newJArray[HighScores](1, default(HighScores))
    this.TOP = "Top"
    this.SCORES = "Scores"
    this.PERSONAL_HIGH_SCORES = "Personal Top Scores"
    this.FETCH = "fetchHighScores"
    discard

proc initBasicHighScoresFactory*(this: BasicHighScoresFactory, abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation) =
        initHighScoresBase(this)
        this.initFieldsBasicHighScoresFactory()
        this.abeClientInformation = abeClientInformation

proc newBasicHighScoresFactory*(abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation): BasicHighScoresFactory =
    result = BasicHighScoresFactory()
    initBasicHighScoresFactory(result, abeClientInformation, softwareInformation)

method fetchHighScores*(this: BasicHighScoresFactory, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener) =
        this.logUtil.putF("Getting Local HighScores", this, this.FETCH)
        this.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true)

method fetchHighScoresPreload*(this: BasicHighScoresFactory, gameInfo: GameInfo, highScoresResultsListener: HighScoresResultsListener, preload: bool) =
        try:
            this.highScoresArray[0] = RecordStoreHighScores.getInstance(this.abeClientInformation, gameInfo, this.TOP, this.PERSONAL_HIGH_SCORES, this.SCORES, newScoreComparator(true))
            highScoresResultsListener.setHighScoresArray(this.highScoresArray)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.FETCH, e)

method createHighScoresHelper*(this: BasicHighScoresFactory): HighScoresHelperBaseInterface {.discardable.} =
        return newHighScoresHelper2()

proc loaded*(t: typedesc[BasicHighScoresFactory], index2: int32): bool {.discardable.} =
        if index2 >= 0:
            return true
        return false

when declared(newBasicHighScoresFactoryHook2):
    newBasicHighScoresFactoryHook2 = proc (abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation): HighScoresBase = newBasicHighScoresFactory(abeClientInformation, softwareInformation)

