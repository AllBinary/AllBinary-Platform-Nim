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
import java/io/DataOutputStream as DataOutputStreamModule
export DataOutputStreamModule
import java/io/OutputStream as OutputStreamModule
export OutputStreamModule

type
    AbDataOutputStream* = ref object of DataOutputStream

proc newAbDataOutputStream*(`out`: OutputStream): AbDataOutputStream
proc initAbDataOutputStream*(this: AbDataOutputStream, `out`: OutputStream)


proc initAbDataOutputStream*(this: AbDataOutputStream, `out`: OutputStream) =
        initDataOutputStream(this, `out`)

proc newAbDataOutputStream*(`out`: OutputStream): AbDataOutputStream =
    result = AbDataOutputStream()
    initAbDataOutputStream(result, `out`)

when declared(newAbDataOutputStreamHook1):
    newAbDataOutputStreamHook1 = proc (`out`: OutputStream): DataOutputStream = newAbDataOutputStream(`out`)

