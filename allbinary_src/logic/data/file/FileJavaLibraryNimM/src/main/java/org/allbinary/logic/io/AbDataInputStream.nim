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
import java/io/DataInputStream as DataInputStreamModule
export DataInputStreamModule
import java/io/InputStream as InputStreamModule
export InputStreamModule

type
    AbDataInputStream* = ref object of DataInputStream

proc newAbDataInputStream*(`out`: InputStream): AbDataInputStream
proc initAbDataInputStream*(this: AbDataInputStream, `out`: InputStream)


proc initAbDataInputStream*(this: AbDataInputStream, `out`: InputStream) =
        initDataInputStream(this, `out`)

proc newAbDataInputStream*(`out`: InputStream): AbDataInputStream =
    result = AbDataInputStream()
    initAbDataInputStream(result, `out`)

when declared(newAbDataInputStreamHook1):
    newAbDataInputStreamHook1 = proc (`out`: InputStream): DataInputStream = newAbDataInputStream(`out`)

