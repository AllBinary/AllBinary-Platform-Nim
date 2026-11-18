# Generated Code Do Not Modify
# package org.apache.xmlrpc

{.warning[UnusedImport]: off.}
import allbinary_java

type
    XmlRpcException* = ref object of JException

proc newXmlRpcException*(code: int32, message: string): XmlRpcException
proc initXmlRpcException*(this: XmlRpcException, code: int32, message: string)


proc initXmlRpcException*(this: XmlRpcException, code: int32, message: string) =
        initJException(this, message)

proc newXmlRpcException*(code: int32, message: string): XmlRpcException =
    result = XmlRpcException()
    initXmlRpcException(result, code, message)

when declared(newXmlRpcExceptionHook2):
    newXmlRpcExceptionHook2 = proc (code: int32, message: string): JException = newXmlRpcException(code, message)

