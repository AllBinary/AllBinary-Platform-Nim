#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.apache.xmlrpc

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/apache/xmlrpc/XmlRpcHandler as XmlRpcHandlerModule
export XmlRpcHandlerModule

type
    NullXmlRpcHandler* = ref object of XmlRpcHandler

proc newNullXmlRpcHandler*(): NullXmlRpcHandler
method execute*(this: NullXmlRpcHandler, `method`: string, params: BasicArrayList): JObject {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var NullXmlRpcHandler_NULL_XML_RPC_HANDLERValue: NullXmlRpcHandler
var NullXmlRpcHandler_NULL_XML_RPC_HANDLERSet = false
proc NULL_XML_RPC_HANDLERStatic*(t: typedesc[NullXmlRpcHandler]): NullXmlRpcHandler =
    if not NullXmlRpcHandler_NULL_XML_RPC_HANDLERSet:
        NullXmlRpcHandler_NULL_XML_RPC_HANDLERSet = true
        NullXmlRpcHandler_NULL_XML_RPC_HANDLERValue = newNullXmlRpcHandler()
    NullXmlRpcHandler_NULL_XML_RPC_HANDLERValue

proc initNullXmlRpcHandler*(this: NullXmlRpcHandler) =
    discard

proc newNullXmlRpcHandler*(): NullXmlRpcHandler =
    result = NullXmlRpcHandler()
    initNullXmlRpcHandler(result)

method execute*(this: NullXmlRpcHandler, `method`: string, params: BasicArrayList): JObject {.discardable.} =
        return NullUtil.getInstance().NULL_OBJECT

