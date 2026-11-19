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
import java/lang/Boolean as BooleanModule
export BooleanModule
import java/util/Enumeration as EnumerationModule
export EnumerationModule
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/game/score/HighScore as HighScoreModule
export HighScoreModule
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/SoftwareInformation as SoftwareInformationModule
export SoftwareInformationModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/EnumerationUtil as EnumerationUtilModule
export EnumerationUtilModule

type
    RemoteHighScores* = ref object of HighScores
        logUtil*: LogUtil
        enumerationUtil*: EnumerationUtil
        abeClientInformation*: AbeClientInformationInterface
        softwareInformation*: SoftwareInformation
        ascending*: bool
        ASCENDING*: string

proc newRemoteHighScores*(abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation, gameInfo: GameInfo, heading: string, columnTwoHeading: string, ascending: bool, preload: bool): RemoteHighScores
proc initRemoteHighScores*(this: RemoteHighScores, abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation, gameInfo: GameInfo, heading: string, columnTwoHeading: string, ascending: bool, preload: bool)
proc getInstance*(t: typedesc[RemoteHighScores], abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation, gameInfo: GameInfo, heading: string, columnTwoHeading: string, isAscending: bool): HighScores {.discardable.}
proc getInstancePreload*(t: typedesc[RemoteHighScores], abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation, gameInfo: GameInfo, heading: string, columnTwoHeading: string, isAscending: bool, preload: bool): HighScores {.discardable.}
method addHighScore*(this: RemoteHighScores, newHighScore: HighScore)
method update*(this: RemoteHighScores, hashtable: ABHashtable) {.base.}
method setAscending*(this: RemoteHighScores, ascending: bool) {.base.}
method getAscending*(this: RemoteHighScores): bool {.base, discardable.}
method getSoftwareInformation*(this: RemoteHighScores): SoftwareInformation {.base, discardable.}
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/score/RemoteErrorHighScoresSingletonFactory as RemoteErrorHighScoresSingletonFactoryModule
export RemoteErrorHighScoresSingletonFactoryModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/score/remote/RemoteHighScoresProcessorFactory as RemoteHighScoresProcessorFactoryModule
export RemoteHighScoresProcessorFactoryModule
import org/allbinary/game/score/remote/RemoteHighScoresSubmissionProcessorFactory as RemoteHighScoresSubmissionProcessorFactoryModule
export RemoteHighScoresSubmissionProcessorFactoryModule
import org/allbinary/game/score/remote/RemoteHighScoresData as RemoteHighScoresDataModule
export RemoteHighScoresDataModule

var RemoteHighScores_hashTableValue: ABHashtable
var RemoteHighScores_hashTableSet = false
proc hashTable*(t: typedesc[RemoteHighScores]): ABHashtable =
    if not RemoteHighScores_hashTableSet:
        RemoteHighScores_hashTableSet = true
        RemoteHighScores_hashTableValue = StdUtil.getInstance().createHashtable()
    RemoteHighScores_hashTableValue

# Java field initializers run after the base initializer
proc initFieldsRemoteHighScores(this: RemoteHighScores) =
    this.logUtil = LogUtil.getInstance()
    this.enumerationUtil = EnumerationUtil.getInstance()
    
    
    this.ascending = false
    this.ASCENDING = "ASCENDING"
    discard

proc initRemoteHighScores*(this: RemoteHighScores, abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation, gameInfo: GameInfo, heading: string, columnTwoHeading: string, ascending: bool, preload: bool) =
        initHighScores(this, gameInfo.toString(), heading, columnTwoHeading)
        this.initFieldsRemoteHighScores()
        this.abeClientInformation = abeClientInformation
        this.softwareInformation = softwareInformation
        this.setAscending(ascending)
        if preload:
            RemoteHighScoresProcessorFactory.getInstance().process(this, this.abeClientInformation, gameInfo)

proc newRemoteHighScores*(abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation, gameInfo: GameInfo, heading: string, columnTwoHeading: string, ascending: bool, preload: bool): RemoteHighScores =
    result = RemoteHighScores()
    initRemoteHighScores(result, abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, ascending, preload)

proc getInstance*(t: typedesc[RemoteHighScores], abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation, gameInfo: GameInfo, heading: string, columnTwoHeading: string, isAscending: bool): HighScores {.discardable.} =
        return RemoteHighScores.getInstancePreload(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, true)

proc getInstancePreload*(t: typedesc[RemoteHighScores], abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation, gameInfo: GameInfo, heading: string, columnTwoHeading: string, isAscending: bool, preload: bool): HighScores {.discardable.} =
        let logUtil: LogUtil = LogUtil.getInstance()
        try:
            var highScores: HighScores = HighScores(JObject(RemoteHighScores.hashTable.get(gameInfo)))
            if (jIsNil(highScores)):
                highScores = newRemoteHighScores(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, preload)
                RemoteHighScores.hashTable.put(gameInfo, highScores)
            return highScores
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, RemoteErrorHighScoresSingletonFactory.getInstance(), commonStrings.GET_INSTANCE, e)
            return RemoteErrorHighScoresSingletonFactory.getInstance()

method addHighScore*(this: RemoteHighScores, newHighScore: HighScore) =
        RemoteHighScoresSubmissionProcessorFactory.getInstance().process(this, this.abeClientInformation, newHighScore)

method update*(this: RemoteHighScores, hashtable: ABHashtable) {.base.} =
        this.getList().clear()
        let vector: BasicArrayList = BasicArrayList(JObject(hashtable.get(JObject(JObject(RemoteHighScoresData.getInstance().HIGH_SCORES)))))
        if (not jIsNil(vector)):
            let size: int32 = vector.size()
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    let highScoreVector: BasicArrayList = BasicArrayList(JObject(vector.get(index)))
                    let displayName: string = jstr(highScoreVector.get(0))
                    let score: string = jstr(highScoreVector.get(1))
                    let longScore: int64 = jParseLong(score)
                    let highScore: HighScore = newHighScore(-1, displayName, nil, longScore)
                    this.getList().add(highScore)
        else:
            let NEXT_ELEMENT: string = newStringMaker().append(CommonLabels.getInstance().NEXT).append("Element: ").toString()
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            let enumeration: Enumeration = hashtable.elements()
            var nextElement: JObject = nil
            while this.enumerationUtil.hasMoreElements(enumeration):
                nextElement = this.enumerationUtil.nextElement(enumeration)
                this.logUtil.putF(jstr(NEXT_ELEMENT) & jstr(nextElement), this, commonStrings.PROCESS)

method setAscending*(this: RemoteHighScores, ascending: bool) {.base.} =
        this.ascending = ascending

method getAscending*(this: RemoteHighScores): bool {.base, discardable.} =
        return this.ascending

method getSoftwareInformation*(this: RemoteHighScores): SoftwareInformation {.base, discardable.} =
        return this.softwareInformation

when declared(newRemoteHighScoresHook7):
    newRemoteHighScoresHook7 = proc (abeClientInformation: AbeClientInformationInterface, softwareInformation: SoftwareInformation, gameInfo: GameInfo, heading: string, columnTwoHeading: string, ascending: bool, preload: bool): HighScores = newRemoteHighScores(abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, ascending, preload)

