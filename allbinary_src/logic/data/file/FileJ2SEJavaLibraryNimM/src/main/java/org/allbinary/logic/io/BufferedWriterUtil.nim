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
# package org.allbinary.logic.io

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/BufferedWriter as BufferedWriterModule
export BufferedWriterModule
import java/io/FileWriter as FileWriterModule
export FileWriterModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/io/file/AbFile as AbFileModule
export AbFileModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

type
    BufferedWriterUtil* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        commonLabels*: CommonLabels
        REMOVING_OLD*: string

proc newBufferedWriterUtil*(): BufferedWriterUtil
proc getInstance*(t: typedesc[BufferedWriterUtil]): BufferedWriterUtil {.discardable.}
method overwrite*(this: BufferedWriterUtil, path: string, data: string) {.base.}
method overwrite*(this: BufferedWriterUtil, abFile: AbFile, data: string) {.base.}
method write*(this: BufferedWriterUtil, abFile: AbFile, data: string) {.base.}
import org/allbinary/logic/io/file/AbFileNativeUtil as AbFileNativeUtilModule
export AbFileNativeUtilModule
import org/allbinary/logic/io/path/AbPathData as AbPathDataModule
export AbPathDataModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

var BufferedWriterUtil_instanceValue: BufferedWriterUtil
var BufferedWriterUtil_instanceSet = false
proc instance*(t: typedesc[BufferedWriterUtil]): BufferedWriterUtil =
    if not BufferedWriterUtil_instanceSet:
        BufferedWriterUtil_instanceSet = true
        BufferedWriterUtil_instanceValue = newBufferedWriterUtil()
    BufferedWriterUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsBufferedWriterUtil(this: BufferedWriterUtil) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.commonLabels = CommonLabels.getInstance()
    this.REMOVING_OLD = "Remove old for overwriting: "
    discard

proc initBufferedWriterUtil*(this: BufferedWriterUtil) =
    this.initFieldsBufferedWriterUtil()

proc newBufferedWriterUtil*(): BufferedWriterUtil =
    result = BufferedWriterUtil()
    initBufferedWriterUtil(result)

proc getInstance*(t: typedesc[BufferedWriterUtil]): BufferedWriterUtil {.discardable.} =
        return BufferedWriterUtil.instance

method overwrite*(this: BufferedWriterUtil, path: string, data: string) {.base.} =
        let abFile: AbFile = AbFile.createAbFile(path)
        if abFile.exists():
            this.logUtil.putF(jstr(this.REMOVING_OLD) & jstr(path), this, this.commonStrings.CREATE)
            abFile.delete()
        else:
            let name: string = AbPathData.getInstance().removeNameFromPath(path)
            let abFileDirectory: AbFile = AbFile.createAbFile(name)
            if abFileDirectory.exists():
                discard
            else:
                let stringBuilder: StringMaker = newStringMaker()
                this.logUtil.putF(stringBuilder.append(this.commonStrings.CREATE).append(this.commonLabels.COLON_SEP).append(name).toString(), this, this.commonStrings.CREATE)
                var `result`: bool = abFileDirectory.mkdirs()
                stringBuilder.delete(0, stringBuilder.length())
                this.logUtil.putF(stringBuilder.append(this.commonLabels.RESULT_U).appendboolean(`result`).toString(), this, this.commonStrings.CREATE)
        this.write(abFile, data)

method overwrite*(this: BufferedWriterUtil, abFile: AbFile, data: string) {.base.} =
        if abFile.exists():
            this.logUtil.putF(jstr(this.REMOVING_OLD) & jstr(abFile.getPath()), this, this.commonStrings.CREATE)
            abFile.delete()
        else:
            let name: string = AbPathData.getInstance().removeNameFromPath(abFile.getAbsolutePath())
            let abFileDirectory: AbFile = AbFile.createAbFile(name)
            if abFileDirectory.exists():
                discard
            else:
                let stringBuilder: StringMaker = newStringMaker()
                this.logUtil.putF(stringBuilder.append(this.commonStrings.CREATE).append(this.commonLabels.COLON_SEP).append(name).toString(), this, this.commonStrings.CREATE)
                var `result`: bool = abFileDirectory.mkdirs()
                stringBuilder.delete(0, stringBuilder.length())
                this.logUtil.putF(stringBuilder.append(this.commonLabels.RESULT_U).appendboolean(`result`).toString(), this, this.commonStrings.CREATE)
        this.write(abFile, data)

method write*(this: BufferedWriterUtil, abFile: AbFile, data: string) {.base.} =
        let fileOut: BufferedWriter = newBufferedWriter(newFileWriter(AbFileNativeUtil.get(abFile)))
        fileOut.write(data, 0, jLength(data))
        fileOut.newLine()
        fileOut.flush()

