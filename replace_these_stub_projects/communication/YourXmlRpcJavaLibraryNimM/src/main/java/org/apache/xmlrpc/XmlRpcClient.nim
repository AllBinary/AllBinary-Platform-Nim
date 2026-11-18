# Generated Code Do Not Modify
# package org.apache.xmlrpc

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/IOException as IOExceptionModule
export IOExceptionModule
import java/net/MalformedURLException as MalformedURLExceptionModule
export MalformedURLExceptionModule
import java/net/URL as URLModule
export URLModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/init/crypt/jcehelper/CryptInterface as CryptInterfaceModule
export CryptInterfaceModule
import org/apache/xmlrpc/XmlRpcHandler as XmlRpcHandlerModule
export XmlRpcHandlerModule

type
    XmlRpcClient* = ref object of XmlRpcHandler
        url*: URL

proc newXmlRpcClient*(url: string): XmlRpcClient
proc initXmlRpcClient*(this: XmlRpcClient, url: string)
method getURL*(this: XmlRpcClient): URL {.base, discardable.}
method setBasicAuthentication*(this: XmlRpcClient, user: string, password: string) {.base.}
method execute*(this: XmlRpcClient, `method`: string, params: BasicArrayList): JObject {.discardable.}
method executeWithCrypt*(this: XmlRpcClient, `method`: string, params: BasicArrayList, cryptInterface: CryptInterface): JObject {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/apache/xmlrpc/XmlRpcException as XmlRpcExceptionModule
export XmlRpcExceptionModule


# Java field initializers run after the base initializer
proc initFieldsXmlRpcClient(this: XmlRpcClient) =
    
    discard

proc initXmlRpcClient*(this: XmlRpcClient, url: string) =
        this.initFieldsXmlRpcClient()
        this.url = newURL(url)

proc newXmlRpcClient*(url: string): XmlRpcClient =
    result = XmlRpcClient()
    initXmlRpcClient(result, url)

method getURL*(this: XmlRpcClient): URL {.base, discardable.} =
        return this.url

method setBasicAuthentication*(this: XmlRpcClient, user: string, password: string) {.base.} =
        discard

method execute*(this: XmlRpcClient, `method`: string, params: BasicArrayList): JObject {.discardable.} =
        return NullUtil.getInstance().NULL_OBJECT

method executeWithCrypt*(this: XmlRpcClient, `method`: string, params: BasicArrayList, cryptInterface: CryptInterface): JObject {.base, discardable.} =
        return NullUtil.getInstance().NULL_OBJECT

