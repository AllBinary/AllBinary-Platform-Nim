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
# package org.allbinary.logic.communication.xmlrpc

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/rand/MyRandomFactory as MyRandomFactoryModule
export MyRandomFactoryModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/apache/xmlrpc/XmlRpcClient as XmlRpcClientModule
export XmlRpcClientModule
import org/apache/xmlrpc/XmlRpcHandler as XmlRpcHandlerModule
export XmlRpcHandlerModule

type
    XmlRpcAbeClient* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        remoteMethod*: string
        clientInfo*: AbeClientInformationInterface
        client*: XmlRpcHandler
        server*: int32
        start*: int32
        maxServers*: int32
        isDone*: bool
        START_SERVER*: string
        TRYING*: string
        SEP*: string
        CLIENT_INFO*: string
        RESULT*: string
        INVALID*: string
        EXCEPTION_IN_CLIENT*: string
        SERVER_REPORTED_ERROR*: string
        UNKNOWN_ERROR*: string
        TRYING_OTHER_SERVERS*: string
        HOST_NOT_RESOLVED_MSG*: string
        HOST_NOT_RESOLVED*: string
        myRandomFactory*: MyRandomFactory

proc newXmlRpcAbeClient*(clientInfo: AbeClientInformationInterface, remoteMethod: string): XmlRpcAbeClient
proc initXmlRpcAbeClient*(this: XmlRpcAbeClient, clientInfo: AbeClientInformationInterface, remoteMethod: string)
method get*(this: XmlRpcAbeClient, anyType: JObject): JObject {.base, discardable.}
method tryAnother*(this: XmlRpcAbeClient, anyType: JObject): JObject {.base, discardable.}
method getClientInfo*(this: XmlRpcAbeClient): AbeClientInformationInterface {.base, discardable.}
method getClient*(this: XmlRpcAbeClient): XmlRpcHandler {.base, discardable.}
method setClient*(this: XmlRpcAbeClient, client: XmlRpcClient) {.base.}
method getServer*(this: XmlRpcAbeClient): int32 {.base, discardable.}
method setServer*(this: XmlRpcAbeClient, server: int32) {.base.}
method getStart*(this: XmlRpcAbeClient): int32 {.base, discardable.}
method setStart*(this: XmlRpcAbeClient, start: int32) {.base.}
method getMaxServers*(this: XmlRpcAbeClient): int32 {.base, discardable.}
method setMaxServers*(this: XmlRpcAbeClient, maxServers: int32) {.base.}
method isIsDone*(this: XmlRpcAbeClient): bool {.base, discardable.}
method setIsDone*(this: XmlRpcAbeClient, isDone: bool) {.base.}
method getRemoteMethod*(this: XmlRpcAbeClient): string {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/apache/xmlrpc/NullXmlRpcHandler as NullXmlRpcHandlerModule
export NullXmlRpcHandlerModule

var XmlRpcAbeClient_isOnlineValue: bool
var XmlRpcAbeClient_isOnlineSet = false
proc isOnline*(t: typedesc[XmlRpcAbeClient]): bool =
    if not XmlRpcAbeClient_isOnlineSet:
        XmlRpcAbeClient_isOnlineSet = true
        XmlRpcAbeClient_isOnlineValue = true
    XmlRpcAbeClient_isOnlineValue
proc `isOnline=`*(t: typedesc[XmlRpcAbeClient], value: bool) =
    XmlRpcAbeClient_isOnlineSet = true
    XmlRpcAbeClient_isOnlineValue = value

# Java field initializers run after the base initializer
proc initFieldsXmlRpcAbeClient(this: XmlRpcAbeClient) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    
    this.client = NullXmlRpcHandler.NULL_XML_RPC_HANDLERStatic
    
    this.start = 0
    this.maxServers = 0
    
    this.START_SERVER = "Start With Server #"
    this.TRYING = "Trying Server #"
    this.SEP = CommonLabels.getInstance().COLON_SEP
    this.CLIENT_INFO = "Client Info: \n"
    this.RESULT = jstr(CommonLabels.getInstance().RESULT_U) & jstr(CommonSeps.getInstance().NEW_LINE)
    this.INVALID = "License data is Invalid Trying Other Servers"
    this.EXCEPTION_IN_CLIENT = "Exception in client"
    this.SERVER_REPORTED_ERROR = "Server reported error"
    this.UNKNOWN_ERROR = "Unknown License Retrieval Failure"
    this.TRYING_OTHER_SERVERS = "IOException Trying Other Servers"
    this.HOST_NOT_RESOLVED_MSG = "Not Trying Again Since Host Unresolved"
    this.HOST_NOT_RESOLVED = "Host is unresolved"
    this.myRandomFactory = MyRandomFactory.getInstance()
    discard

proc initXmlRpcAbeClient*(this: XmlRpcAbeClient, clientInfo: AbeClientInformationInterface, remoteMethod: string) =
        this.initFieldsXmlRpcAbeClient()
        this.remoteMethod = remoteMethod
        this.clientInfo = clientInfo
        if clientInfo.getNumberOfLicenseServers() > 1:
            this.maxServers = clientInfo.getNumberOfLicenseServers() -% 2
            this.start = this.myRandomFactory.getAbsoluteNextInt(this.maxServers) +% 1
        elif clientInfo.getNumberOfLicenseServers() == 1:
            this.maxServers = 0
            this.start = 0
        this.isDone = false
        this.server = this.start
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(this.START_SERVER)
        stringBuffer.appendint(this.getServer())
        stringBuffer.append(this.SEP)
        stringBuffer.append(clientInfo.getLicenseServer(this.getServer()))
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.CONSTRUCTOR)

proc newXmlRpcAbeClient*(clientInfo: AbeClientInformationInterface, remoteMethod: string): XmlRpcAbeClient =
    result = XmlRpcAbeClient()
    initXmlRpcAbeClient(result, clientInfo, remoteMethod)

method get*(this: XmlRpcAbeClient, anyType: JObject): JObject {.base, discardable.} =
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)
        return NullUtil.getInstance().NULL_OBJECT

method tryAnother*(this: XmlRpcAbeClient, anyType: JObject): JObject {.base, discardable.} =
        if this.getServer() < this.getMaxServers():
            this.setServer(this.getServer() +% 1)
        else:
            this.setServer(0)
        if this.getServer() != this.getStart() and (not this.isIsDone()):
            return this.get(anyType)
        else:
            this.setIsDone(true)
        raise newJException("Exception", "Tried All Servers But Still Failed")

method getClientInfo*(this: XmlRpcAbeClient): AbeClientInformationInterface {.base, discardable.} =
        return this.clientInfo

method getClient*(this: XmlRpcAbeClient): XmlRpcHandler {.base, discardable.} =
        return this.client

method setClient*(this: XmlRpcAbeClient, client: XmlRpcClient) {.base.} =
        this.client = client

method getServer*(this: XmlRpcAbeClient): int32 {.base, discardable.} =
        return this.server

method setServer*(this: XmlRpcAbeClient, server: int32) {.base.} =
        this.server = server

method getStart*(this: XmlRpcAbeClient): int32 {.base, discardable.} =
        return this.start

method setStart*(this: XmlRpcAbeClient, start: int32) {.base.} =
        this.start = start

method getMaxServers*(this: XmlRpcAbeClient): int32 {.base, discardable.} =
        return this.maxServers

method setMaxServers*(this: XmlRpcAbeClient, maxServers: int32) {.base.} =
        this.maxServers = maxServers

method isIsDone*(this: XmlRpcAbeClient): bool {.base, discardable.} =
        return this.isDone

method setIsDone*(this: XmlRpcAbeClient, isDone: bool) {.base.} =
        this.isDone = isDone

method getRemoteMethod*(this: XmlRpcAbeClient): string {.base, discardable.} =
        return this.remoteMethod

