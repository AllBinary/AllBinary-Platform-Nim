# Generated Code Do Not Modify
# package org.apache.xmlrpc

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    XmlRpcHandler* = ref object of JObject


method execute*(this: XmlRpcHandler, `method`: string, params: BasicArrayList): JObject {.base, discardable.} =
        raise newJException("AbstractMethodError", "execute")

