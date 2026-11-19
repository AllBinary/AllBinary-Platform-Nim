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
import java/io/IOException as IOExceptionModule
export IOExceptionModule
import org/allbinary/init/crypt/jcehelper/CryptInterface as CryptInterfaceModule
export CryptInterfaceModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient as XmlRpcAbeClientModule
export XmlRpcAbeClientModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule

type
    XmlRpcRemoteHighScoresClient* = ref object of XmlRpcAbeClient
        logUtilOfXmlRpcRemoteHighScoresClient*: LogUtil
        page*: string

proc newXmlRpcRemoteHighScoresClient*(clientInfo: AbeClientInformationInterface, page: string, remoteMethod: string): XmlRpcRemoteHighScoresClient
proc initXmlRpcRemoteHighScoresClient*(this: XmlRpcRemoteHighScoresClient, clientInfo: AbeClientInformationInterface, page: string, remoteMethod: string)
method get*(this: XmlRpcRemoteHighScoresClient, anyType: JObject, cryptInterface: CryptInterface): JObject {.base, discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/logic/java/exception/ExceptionUtil as ExceptionUtilModule
export ExceptionUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/apache/xmlrpc/XmlRpcClient as XmlRpcClientModule
export XmlRpcClientModule
import org/apache/xmlrpc/XmlRpcException as XmlRpcExceptionModule
export XmlRpcExceptionModule


# Java field initializers run after the base initializer
proc initFieldsXmlRpcRemoteHighScoresClient(this: XmlRpcRemoteHighScoresClient) =
    this.logUtilOfXmlRpcRemoteHighScoresClient = LogUtil.getInstance()
    
    discard

proc initXmlRpcRemoteHighScoresClient*(this: XmlRpcRemoteHighScoresClient, clientInfo: AbeClientInformationInterface, page: string, remoteMethod: string) =
        initXmlRpcAbeClient(this, clientInfo, remoteMethod)
        this.initFieldsXmlRpcRemoteHighScoresClient()
        this.page = page
        this.setServer(0)

proc newXmlRpcRemoteHighScoresClient*(clientInfo: AbeClientInformationInterface, page: string, remoteMethod: string): XmlRpcRemoteHighScoresClient =
    result = XmlRpcRemoteHighScoresClient()
    initXmlRpcRemoteHighScoresClient(result, clientInfo, page, remoteMethod)

method get*(this: XmlRpcRemoteHighScoresClient, anyType: JObject, cryptInterface: CryptInterface): JObject {.base, discardable.} =
        try:
            var param: BasicArrayList = newBasicArrayListD()
            var serverUrl: string = this.getClientInfo().getLicenseServer(this.getServer())
            var index: int32 = jLastIndexOf(serverUrl, uint16(ord('/')))
            serverUrl = jstr(jSubstring(serverUrl, 0, index +% 1)) & jstr(this.page)
            var stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append(this.TRYING)
            stringBuffer.appendint(this.getServer())
            stringBuffer.append(this.SEP)
            stringBuffer.append(serverUrl)
            this.logUtilOfXmlRpcRemoteHighScoresClient.putF(stringBuffer.toString(), this, this.commonStrings.GET)
            let xmlRpcClient: XmlRpcClient = newXmlRpcClient(serverUrl)
            this.setClient(xmlRpcClient)
            xmlRpcClient.setBasicAuthentication(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
            var hashtable: ABHashtable = ABHashtable(JObject(anyType))
            this.logUtilOfXmlRpcRemoteHighScoresClient.putF(jstr(this.CLIENT_INFO) & jstr(hashtable.toString()), this, this.commonStrings.GET)
            param.add(hashtable)
            var `result`: JObject = xmlRpcClient.executeWithCrypt(this.getRemoteMethod(), param, cryptInterface)
            this.logUtilOfXmlRpcRemoteHighScoresClient.putF(jstr(this.RESULT) & jstr(`result`.toString()), this, this.commonStrings.GET)
            XmlRpcAbeClient.isOnline = true
            return `result`
        except CatchableError as jcaught:
            let jexception = jToException(jcaught)
            if jCatches(jexception, "IOException"):
                let e = jexception
                this.logUtilOfXmlRpcRemoteHighScoresClient.put(jstr(this.TRYING_OTHER_SERVERS) & jstr(ExceptionUtil.getInstance().getStackTrace(e)), this, this.commonStrings.GET, e)
                if (not e.getMessage().startsWith(this.HOST_NOT_RESOLVED)):
                    return this.tryAnother(anyType)
                else:
                    raise newJException("Exception", this.HOST_NOT_RESOLVED_MSG)
            elif jCatches(jexception, "XmlRpcException"):
                let e = jexception
                this.logUtilOfXmlRpcRemoteHighScoresClient.put(this.SERVER_REPORTED_ERROR, this, this.commonStrings.GET, e)
                return this.tryAnother(anyType)
            else:
                let e = jexception
                this.logUtilOfXmlRpcRemoteHighScoresClient.put(this.UNKNOWN_ERROR, this, this.commonStrings.GET, e)
                return this.tryAnother(anyType)

when declared(newXmlRpcRemoteHighScoresClientHook3):
    newXmlRpcRemoteHighScoresClientHook3 = proc (clientInfo: AbeClientInformationInterface, page: string, remoteMethod: string): XmlRpcAbeClient = newXmlRpcRemoteHighScoresClient(clientInfo, page, remoteMethod)

