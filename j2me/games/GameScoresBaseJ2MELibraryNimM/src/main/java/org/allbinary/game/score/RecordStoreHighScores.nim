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
import java/io/ByteArrayInputStream as ByteArrayInputStreamModule
export ByteArrayInputStreamModule
import java/io/DataInputStream as DataInputStreamModule
export DataInputStreamModule
import java/io/EOFException as EOFExceptionModule
export EOFExceptionModule
import java/io/IOException as IOExceptionModule
export IOExceptionModule
import javax/microedition/rms/RecordComparator as RecordComparatorModule
export RecordComparatorModule
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/game/GameInfo as GameInfoModule
export GameInfoModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/persistance/PlatformRecordIdUtil as PlatformRecordIdUtilModule
export PlatformRecordIdUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/score/HighScores as HighScoresModule
export HighScoresModule
import org/allbinary/game/score/HighScore as HighScoreModule
export HighScoreModule

type
    RecordStoreHighScores* = ref object of HighScores
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        platformRecordIdUtil*: PlatformRecordIdUtil
        tsUtil*: TsUtil
        RECORD_ID*: string
        MAXHIGHSCORES*: int32
        gameInfo*: GameInfo
        abeClientInformation*: AbeClientInformationInterface
        recordComparatorInterface*: RecordComparator

proc newRecordStoreHighScores*(abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, name: string, heading: string, columnTwoHeading: string, recordComparatorInterface: RecordComparator): RecordStoreHighScores
proc initRecordStoreHighScores*(this: RecordStoreHighScores, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, name: string, heading: string, columnTwoHeading: string, recordComparatorInterface: RecordComparator)
proc getInstance*(t: typedesc[RecordStoreHighScores], abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, highScoreName: string, heading: string, columnTwoHeading: string, recordComparatorInterface: RecordComparator): HighScores {.discardable.}
method getRecordId*(this: RecordStoreHighScores, abeClientInformation: AbeClientInformationInterface): string {.base, discardable.}
method addHighScore*(this: RecordStoreHighScores, newHighScore: HighScore)
method removeLowestHighScore*(this: RecordStoreHighScores) {.base.}
method load*(this: RecordStoreHighScores) {.base.}
method isTooManyHighScores*(this: RecordStoreHighScores): bool {.base, discardable.}
method isBestScore*(this: RecordStoreHighScores, newHighScore: HighScore): bool {.discardable.}
method toString*(this: RecordStoreHighScores): string {.discardable.}
import javax/microedition/rms/RecordEnumeration as RecordEnumerationModule
export RecordEnumerationModule
import javax/microedition/rms/RecordStore as RecordStoreModule
export RecordStoreModule
import javax/microedition/rms/RecordStoreException as RecordStoreExceptionModule
export RecordStoreExceptionModule
import javax/microedition/rms/RecordStoreNotFoundException as RecordStoreNotFoundExceptionModule
export RecordStoreNotFoundExceptionModule
import org/allbinary/game/configuration/persistance/NullRecordComparator as NullRecordComparatorModule
export NullRecordComparatorModule
import org/allbinary/game/configuration/persistance/NullRecordFilter as NullRecordFilterModule
export NullRecordFilterModule
import org/allbinary/game/configuration/persistance/NullRecordStore as NullRecordStoreModule
export NullRecordStoreModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/score/ScoreComparator as ScoreComparatorModule
export ScoreComparatorModule

var RecordStoreHighScores_hashTableValue: ABHashtable
var RecordStoreHighScores_hashTableSet = false
proc hashTable*(t: typedesc[RecordStoreHighScores]): ABHashtable =
    if not RecordStoreHighScores_hashTableSet:
        RecordStoreHighScores_hashTableSet = true
        RecordStoreHighScores_hashTableValue = StdUtil.getInstance().createHashtable()
    RecordStoreHighScores_hashTableValue

# Java field initializers run after the base initializer
proc initFieldsRecordStoreHighScores(this: RecordStoreHighScores) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
    this.tsUtil = TsUtil.getInstance()
    this.RECORD_ID = "_HS"
    this.MAXHIGHSCORES = 100
    
    
    
    discard

proc initRecordStoreHighScores*(this: RecordStoreHighScores, abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, name: string, heading: string, columnTwoHeading: string, recordComparatorInterface: RecordComparator) =
        initHighScores(this, name, heading, columnTwoHeading)
        this.initFieldsRecordStoreHighScores()
        this.abeClientInformation = abeClientInformation
        this.gameInfo = gameInfo
        this.recordComparatorInterface = recordComparatorInterface
        this.load()

proc newRecordStoreHighScores*(abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, name: string, heading: string, columnTwoHeading: string, recordComparatorInterface: RecordComparator): RecordStoreHighScores =
    result = RecordStoreHighScores()
    initRecordStoreHighScores(result, abeClientInformation, gameInfo, name, heading, columnTwoHeading, recordComparatorInterface)

proc getInstance*(t: typedesc[RecordStoreHighScores], abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, highScoreName: string, heading: string, columnTwoHeading: string, recordComparatorInterface: RecordComparator): HighScores {.discardable.} =
        let highScoresCanBeNull: JObject = RecordStoreHighScores.hashTable.get(JObject(JObject(highScoreName)))
        if (jIsNil(highScoresCanBeNull)):
            let highScores: HighScores = newRecordStoreHighScores(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface)
            RecordStoreHighScores.hashTable.put(highScores.getName(), highScores)
            return highScores
        return HighScores(JObject(highScoresCanBeNull))

method getRecordId*(this: RecordStoreHighScores, abeClientInformation: AbeClientInformationInterface): string {.base, discardable.} =
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, newStringMaker().append(CommonSeps.getInstance().UNDERSCORE).append(this.getName()).append(this.RECORD_ID).toString())

method addHighScore*(this: RecordStoreHighScores, newHighScore: HighScore) =
        var recordStore: RecordStore = NullRecordStore.NULL_RECORD_STOREStatic
        try:
            this.logUtil.putF(newStringMaker().append("Adding HighScore: ").appendlong(newHighScore.getScore()).toString(), this, this.commonStrings.ADD)
            if this.isTooManyHighScores():
                this.logUtil.putF("Removing Lowest Score", this, this.commonStrings.ADD)
                this.removeLowestHighScore()
            recordStore = RecordStore.openRecordStore(this.getRecordId(this.abeClientInformation), true)
            let highScoreBytes: JArray[int8] = newHighScore.getAsBytes()
            let recordId: int32 = recordStore.addRecord(highScoreBytes, 0, highScoreBytes.length)
            this.load()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e)
        finally:
            try:
                if (not jIsNil(recordStore)):
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.ADD)
                    recordStore.closeRecordStore()
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e)

method removeLowestHighScore*(this: RecordStoreHighScores) {.base.} =
        var recordStore: RecordStore = NullRecordStore.NULL_RECORD_STOREStatic
        try:
            recordStore = RecordStore.openRecordStore(this.getRecordId(this.abeClientInformation), true)
            let recordEnum: RecordEnumeration = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTERStatic, NullRecordComparator.NULL_RECORD_COMPARATORStatic, true)
            let scoreComparator: ScoreComparator = (ScoreComparator(JObject(this.recordComparatorInterface)))
            var bestHighScore: HighScore = newHighScore(-1, "none", GameInfo.NONE, scoreComparator.getBestScore())
            var recordAsBytes: JArray[int8] = nil
            var byteArrayInputStream: ByteArrayInputStream = nil
            var inputStream: DataInputStream = nil
            while recordEnum.hasNextElement():
                let id: int32 = recordEnum.nextRecordId()
                recordAsBytes = this.tsUtil.getRecord(recordStore, id)
                if (not jIsNil(recordAsBytes)):
                    byteArrayInputStream = newByteArrayInputStream(recordAsBytes)
                    inputStream = newDataInputStream(byteArrayInputStream)
                    let name: string = inputStream.readUTF()
                    let nextScore: int64 = inputStream.readLong()
                    let nextCurrentHighScore: HighScore = newHighScore(id, name, GameInfo.NONE, nextScore)
                    if this.recordComparatorInterface.compare(nextCurrentHighScore.getAsBytes(), bestHighScore.getAsBytes()) == RecordComparator.FOLLOWS:
                        bestHighScore = nextCurrentHighScore
            if bestHighScore.getId() != -1:
                this.logUtil.putF(newStringMaker().append("Removing Lowest HighScore: ").appendlong(bestHighScore.getScore()).toString(), this, this.commonStrings.LOAD)
                recordStore.deleteRecord(bestHighScore.getId())
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "removeLowestHighScore", e)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "removeLowestHighScore", e)
        finally:
            try:
                if (not jIsNil(recordStore)):
                    PreLogUtil.put("Closing RecordStore", this, "removeLowestHighScore")
                    recordStore.closeRecordStore()
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "removeLowestHighScore", e)

method load*(this: RecordStoreHighScores) {.base.} =
        var recordStore: RecordStore = NullRecordStore.NULL_RECORD_STOREStatic
        try:
            recordStore = RecordStore.openRecordStore(this.getRecordId(this.abeClientInformation), true)
            this.setList(newBasicArrayListD())
            let recordEnum: RecordEnumeration = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTERStatic, NullRecordComparator.NULL_RECORD_COMPARATORStatic, true)
            var recordAsBytes: JArray[int8] = nil
            var byteArrayInputStream: ByteArrayInputStream = nil
            var inputStream: DataInputStream = nil
            while recordEnum.hasNextElement():
                let id: int32 = recordEnum.nextRecordId()
                recordAsBytes = this.tsUtil.getRecord(recordStore, id)
                if (not jIsNil(recordAsBytes)):
                    byteArrayInputStream = newByteArrayInputStream(recordAsBytes)
                    inputStream = newDataInputStream(byteArrayInputStream)
                    try:
                        let name: string = inputStream.readUTF()
                        let score: int64 = inputStream.readLong()
                        let newHighScore: HighScore = newHighScore(id, name, GameInfo.NONE, score)
                        let list: BasicArrayList = this.getList()
                        var size: int32 = list.size()
                        var lastIndex: int32 = size
                        block:
                            var index: int32 = 0
                            while index < size:
                                defer: index = index +% 1
                                let highScore: HighScore = HighScore(JObject(list.objectArray[index]))
                                if this.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator.PRECEDES:
                                    lastIndex = index
                                    break
                        list.addAt(lastIndex, newHighScore)
                    except CatchableError as jcaught:
                        let e = jToException(jcaught)
                        this.logUtil.put("EOF", this, this.commonStrings.LOAD, e)
                        raise e
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put("No High Scores", this, this.commonStrings.LOAD, e)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.UNKNOWN, this, this.commonStrings.LOAD, e)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.UNKNOWN, this, this.commonStrings.LOAD, e)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.UNKNOWN, this, this.commonStrings.LOAD, e)
        finally:
            try:
                if (not jIsNil(recordStore)):
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.LOAD)
                    recordStore.closeRecordStore()
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.LOAD, e)

method isTooManyHighScores*(this: RecordStoreHighScores): bool {.base, discardable.} =
        if (not jIsNil(this.getList())) and this.getList().size() < this.MAXHIGHSCORES:
            return false
        else:
            this.logUtil.putF(newStringMaker().append("HighScores RecordStore Max Reached: ").appendint(this.MAXHIGHSCORES).toString(), this, "isTooManyHighScores")
            return true

method isBestScore*(this: RecordStoreHighScores, newHighScore: HighScore): bool {.discardable.} =
        try:
            if (not this.isTooManyHighScores()):
                this.logUtil.putF("Slot Available for a High Score", this, "isBestScore")
                return true
            else:
                let list: BasicArrayList = this.getList()
                let size: int32 = list.size()
                block:
                    var index: int32 = 0
                    while index < size:
                        defer: index = index +% 1
                        let highScore: HighScore = HighScore(JObject(list.objectArray[index]))
                        if this.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator.FOLLOWS:
                            this.logUtil.putF("Obtained a High Score", this, "isBestScore")
                            return true
            this.logUtil.putF("Not a High Score", this, "isBestScore")
            return false
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e)
            raise e

method toString*(this: RecordStoreHighScores): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(procCall HighScores(this).toString())
        let list: BasicArrayList = this.getList()
        let size: int32 = list.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                let highScore: HighScore = HighScore(JObject(list.objectArray[index]))
                stringBuffer.append(highScore.getScoreString())
                stringBuffer.append(CommonSeps.getInstance().COMMA_SEP)
        return stringBuffer.toString()

when declared(newRecordStoreHighScoresHook6):
    newRecordStoreHighScoresHook6 = proc (abeClientInformation: AbeClientInformationInterface, gameInfo: GameInfo, name: string, heading: string, columnTwoHeading: string, recordComparatorInterface: RecordComparator): HighScores = newRecordStoreHighScores(abeClientInformation, gameInfo, name, heading, columnTwoHeading, recordComparatorInterface)

