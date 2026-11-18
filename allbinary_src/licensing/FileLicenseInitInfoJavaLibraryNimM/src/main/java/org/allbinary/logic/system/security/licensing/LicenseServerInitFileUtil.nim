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
# package org.allbinary.logic.system.security.licensing

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/InputStream as InputStreamModule
export InputStreamModule
import java/io/OutputStream as OutputStreamModule
export OutputStreamModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

type
    LicenseServerInitFileUtil* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        NULL_OUTPUT_STREAM*: OutputStream

proc newLicenseServerInitFileUtil*(): LicenseServerInitFileUtil
method init*(this: LicenseServerInitFileUtil) {.base.}
method write*(this: LicenseServerInitFileUtil) {.base.}
import org/allbinary/business/init/LicenseInitInfoUtil as LicenseInitInfoUtilModule
export LicenseInitInfoUtilModule
import org/allbinary/data/resource/ResourceUtil as ResourceUtilModule
export ResourceUtilModule
import org/allbinary/logic/io/FileStreamFactory as FileStreamFactoryModule
export FileStreamFactoryModule
import org/allbinary/logic/io/StreamUtil as StreamUtilModule
export StreamUtilModule
import org/allbinary/logic/io/file/FileFactory as FileFactoryModule
export FileFactoryModule
import org/allbinary/logic/io/file/SimpleFileUtil as SimpleFileUtilModule
export SimpleFileUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsLicenseServerInitFileUtil(this: LicenseServerInitFileUtil) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.NULL_OUTPUT_STREAM = SimpleFileUtil.nullOutputStream()
    discard

proc initLicenseServerInitFileUtil*(this: LicenseServerInitFileUtil) =
    this.initFieldsLicenseServerInitFileUtil()

proc newLicenseServerInitFileUtil*(): LicenseServerInitFileUtil =
    result = LicenseServerInitFileUtil()
    initLicenseServerInitFileUtil(result)

method init*(this: LicenseServerInitFileUtil) {.base.} =
        try:
            let filePath: string = LicenseInitInfoUtil.getInstance().INITFILENAME
            LicenseInitInfoUtil.getInstance().setFilePath(StringUtil.getInstance().EMPTY_STRING)
            if FileFactory.getInstance().isFile(filePath):
                this.logUtil.putF("Using Existing License File", this, this.commonStrings.INIT)
            else:
                this.write()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e)

method write*(this: LicenseServerInitFileUtil) {.base.} =
        var fileOutputStream: OutputStream = this.NULL_OUTPUT_STREAM
        try:
            let resourceUtil: ResourceUtil = ResourceUtil.getInstance()
            let filePath: string = LicenseInitInfoUtil.getInstance().INITFILENAME
            let inputStream: InputStream = resourceUtil.getResourceAsStream(filePath)
            this.logUtil.putF("Writing Default License File", this, this.commonStrings.INIT)
            let fileStreamFactory: FileStreamFactory = FileStreamFactory.getInstance()
            fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, filePath)
            var b: int32 = 0
            var index: int32 = 0
            while true:
                b = inputStream.read()
                if b == -1:
                    break
                fileOutputStream.write(b)
                index = index +% 1
            this.logUtil.putF(jstr("Wrote Bytes: ") & jstr(index), this, this.commonStrings.INIT)
            fileOutputStream.flush()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e)
        finally:
            StreamUtil.getInstance().close(fileOutputStream)

