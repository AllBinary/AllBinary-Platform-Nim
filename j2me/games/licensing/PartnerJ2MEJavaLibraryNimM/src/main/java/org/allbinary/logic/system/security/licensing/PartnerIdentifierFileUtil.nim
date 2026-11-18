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
import java/io/InputStreamReader as InputStreamReaderModule
export InputStreamReaderModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    PartnerIdentifierFileUtil* = ref object of JObject
        logUtil*: LogUtil
        FILE_NAME*: string

proc newPartnerIdentifierFileUtil*(): PartnerIdentifierFileUtil
proc getInstance*(t: typedesc[PartnerIdentifierFileUtil]): PartnerIdentifierFileUtil {.discardable.}
method get*(this: PartnerIdentifierFileUtil): string {.base, discardable.}
import org/allbinary/data/resource/ResourceUtil as ResourceUtilModule
export ResourceUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var PartnerIdentifierFileUtil_instanceValue: PartnerIdentifierFileUtil
var PartnerIdentifierFileUtil_instanceSet = false
proc instance*(t: typedesc[PartnerIdentifierFileUtil]): PartnerIdentifierFileUtil =
    if not PartnerIdentifierFileUtil_instanceSet:
        PartnerIdentifierFileUtil_instanceSet = true
        PartnerIdentifierFileUtil_instanceValue = newPartnerIdentifierFileUtil()
    PartnerIdentifierFileUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPartnerIdentifierFileUtil(this: PartnerIdentifierFileUtil) =
    this.logUtil = LogUtil.getInstance()
    this.FILE_NAME = "partner.txt"
    discard

proc initPartnerIdentifierFileUtil*(this: PartnerIdentifierFileUtil) =
    this.initFieldsPartnerIdentifierFileUtil()

proc newPartnerIdentifierFileUtil*(): PartnerIdentifierFileUtil =
    result = PartnerIdentifierFileUtil()
    initPartnerIdentifierFileUtil(result)

proc getInstance*(t: typedesc[PartnerIdentifierFileUtil]): PartnerIdentifierFileUtil {.discardable.} =
        return PartnerIdentifierFileUtil.instance

method get*(this: PartnerIdentifierFileUtil): string {.base, discardable.} =
        try:
            let resourceUtil: ResourceUtil = ResourceUtil.getInstance()
            let inputStream: InputStream = resourceUtil.getResourceAsStream(this.FILE_NAME)
            let inputStreamReader: InputStreamReader = newInputStreamReader(inputStream)
            let chars: JArray[uint16] = newJArray[uint16](30, default(uint16))
            let size: int32 = inputStreamReader.read(chars)
            var partnerString: string = StringUtil.getInstance().EMPTY_STRING
            if size > 0:
                partnerString = jFromChars(chars, 0, size)
            inputStreamReader.close()
            return partnerString
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET, e)
            return StringUtil.getInstance().NULL_STRING

