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
# package org.allbinary.business.init

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/business/init/LicenseInitInfo as LicenseInitInfoModule
export LicenseInitInfoModule

type
    LicenseInitInfoUtil* = ref object of JObject
        logUtil*: LogUtil
        stringUtil*: StringUtil
        INITFILENAME*: string
        ABOUT*: string
        PRIVACY_POLICY*: string
        filePath*: string

proc newLicenseInitInfoUtil*(): LicenseInitInfoUtil
proc getInstance*(t: typedesc[LicenseInitInfoUtil]): LicenseInitInfoUtil {.discardable.}
method setFilePath*(this: LicenseInitInfoUtil, filePath: string) {.base.}
method write*(this: LicenseInitInfoUtil, initData: LicenseInitInfo) {.base.}
method read*(this: LicenseInitInfoUtil): LicenseInitInfo {.base, discardable.}
method readAgain*(this: LicenseInitInfoUtil, initializeCounter: int32): LicenseInitInfo {.base, discardable.}
method getFilePath*(this: LicenseInitInfoUtil): string {.base, discardable.}
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/globals/PATH_GLOBALS as PATH_GLOBALSModule
export PATH_GLOBALSModule
import org/allbinary/globals/URLGLOBALS as URLGLOBALSModule
export URLGLOBALSModule
import org/allbinary/logic/io/AbDataInputStream as AbDataInputStreamModule
export AbDataInputStreamModule
import org/allbinary/logic/io/AbDataOutputStream as AbDataOutputStreamModule
export AbDataOutputStreamModule
import org/allbinary/logic/io/AbFileInputStream as AbFileInputStreamModule
export AbFileInputStreamModule
import org/allbinary/logic/io/DataOutputStreamFactory as DataOutputStreamFactoryModule
export DataOutputStreamFactoryModule
import org/allbinary/logic/io/FileStreamFactory as FileStreamFactoryModule
export FileStreamFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/system/security/crypt/DatabaseEncoder as DatabaseEncoderModule
export DatabaseEncoderModule
import org/allbinary/logic/system/security/crypt/WeakCrypt as WeakCryptModule
export WeakCryptModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule

var LicenseInitInfoUtil_instanceValue: LicenseInitInfoUtil
var LicenseInitInfoUtil_instanceSet = false
proc instance*(t: typedesc[LicenseInitInfoUtil]): LicenseInitInfoUtil =
    if not LicenseInitInfoUtil_instanceSet:
        LicenseInitInfoUtil_instanceSet = true
        LicenseInitInfoUtil_instanceValue = newLicenseInitInfoUtil()
    LicenseInitInfoUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLicenseInitInfoUtil(this: LicenseInitInfoUtil) =
    this.logUtil = LogUtil.getInstance()
    this.stringUtil = StringUtil.getInstance()
    this.INITFILENAME = "licenseinitdata.dat"
    this.ABOUT = "about"
    this.PRIVACY_POLICY = "privacy_policy"
    this.filePath = this.stringUtil.EMPTY_STRING
    discard

proc initLicenseInitInfoUtil*(this: LicenseInitInfoUtil) =
    this.initFieldsLicenseInitInfoUtil()

proc newLicenseInitInfoUtil*(): LicenseInitInfoUtil =
    result = LicenseInitInfoUtil()
    initLicenseInitInfoUtil(result)

proc getInstance*(t: typedesc[LicenseInitInfoUtil]): LicenseInitInfoUtil {.discardable.} =
        return LicenseInitInfoUtil.instance

method setFilePath*(this: LicenseInitInfoUtil, filePath: string) {.base.} =
        this.filePath = filePath

method write*(this: LicenseInitInfoUtil, initData: LicenseInitInfo) {.base.} =
        if this.filePath == this.stringUtil.EMPTY_STRING:
            this.filePath = jstr(URLGLOBALS.getMainPath()) & jstr(PATH_GLOBALS.getInstance().INIT_PATH)
        try:
            let tsUtil: TsUtil = TsUtil.getInstance()
            let dataOutputStream: AbDataOutputStream = DataOutputStreamFactory.getInstance().getInstance(this.filePath, this.INITFILENAME)
            let licenseIdCrypted: JArray[int8] = tsUtil.getByteArray(newWeakCrypt(1).encrypt(initData.getLicenseId()))
            dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseIdCrypted))
            let numberOfLicenseServers: int32 = initData.getNumberOfServers()
            dataOutputStream.writeInt(numberOfLicenseServers)
            var licenseServerCrypted: JArray[int8] = nil
            block:
                var index: int32 = 0
                while index < numberOfLicenseServers:
                    defer: index = index +% 1
                    licenseServerCrypted = tsUtil.getByteArray(newWeakCrypt(3).encrypt(initData.getServer(index)))
                    dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseServerCrypted))
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(jstr("Command Failed: ") & jstr(this.INITFILENAME), this, "write", e)
            FileStreamFactory.getInstance().delete(this.filePath, this.INITFILENAME)
            raise e

method read*(this: LicenseInitInfoUtil): LicenseInitInfo {.base, discardable.} =
        return this.readAgain(0)

method readAgain*(this: LicenseInitInfoUtil, initializeCounter: int32): LicenseInitInfo {.base, discardable.} =
        let METHOD_NAME: string = "readAgain"
        if this.filePath == this.stringUtil.EMPTY_STRING:
            this.filePath = jstr(URLGLOBALS.getMainPath()) & jstr(PATH_GLOBALS.getInstance().INIT_PATH)
        try:
            this.logUtil.putF(jstr("LicenseInitInfo File: ") & jstr(this.INITFILENAME), this, METHOD_NAME)
            let fileStreamFactory: FileStreamFactory = FileStreamFactory.getInstance()
            let iFile: AbFileInputStream = fileStreamFactory.getFileInputStreamInstance(this.filePath, this.INITFILENAME)
            if (not jIsNil(iFile)):
                let iData: AbDataInputStream = newAbDataInputStream(iFile)
                let initInfo: LicenseInitInfo = newLicenseInitInfo()
                var decodedByteArray: JArray[int8] = DatabaseEncoder.decode(iData.readUTF())
                let licenseIdDecoded: string = jNewString(decodedByteArray)
                initInfo.setLicenseId(newWeakCrypt(1).decrypt(licenseIdDecoded))
                var numberOfLicenseServers: int32 = iData.readInt()
                let NEXT_FILE: string = newStringMaker().append(CommonLabels.getInstance().NEXT).append(" License Server From File: ").toString()
                var licenseServerDecoded: string = ""
                block:
                    var index: int32 = 0
                    while index < numberOfLicenseServers:
                        defer: index = index +% 1
                        decodedByteArray = DatabaseEncoder.decode(iData.readUTF())
                        licenseServerDecoded = jNewString(decodedByteArray)
                        initInfo.setServer(newWeakCrypt(3).decrypt(licenseServerDecoded), index)
                        this.logUtil.putF(jstr(NEXT_FILE) & jstr(initInfo.getServer(index)), this, METHOD_NAME)
                return initInfo
            else:
                raise newJException("Exception", jstr("Could Not Load License InitInfo: ") & jstr(this.INITFILENAME))
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            try:
                this.logUtil.put(jstr("Command Failed: ") & jstr(this.INITFILENAME), this, METHOD_NAME, e)
            except CatchableError as jcaught:
                let e2 = jToException(jcaught)
                this.logUtil.put(jstr("LicenseInitInfo Read Retry: ") & jstr(this.INITFILENAME), this, "readAgain()", e2)
            raise newJException("Exception", jstr("LicenseInitInfo Read Error: ") & jstr(this.INITFILENAME))

method getFilePath*(this: LicenseInitInfoUtil): string {.base, discardable.} =
        return this.filePath

