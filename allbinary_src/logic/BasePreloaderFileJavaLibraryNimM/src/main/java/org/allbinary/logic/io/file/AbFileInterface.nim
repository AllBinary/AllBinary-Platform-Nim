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
# package org.allbinary.logic.io.file

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/FilenameFilter as FilenameFilterModule
export FilenameFilterModule
import java/io/IOException as IOExceptionModule
export IOExceptionModule
import java/net/URI as URIModule
export URIModule

type
    AbFileInterface* = ref object of JObject


method canRead*(this: AbFileInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "canRead")

method canWrite*(this: AbFileInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "canWrite")

method createNewFile*(this: AbFileInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "createNewFile")

method delete*(this: AbFileInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "delete")

method deleteOnExit*(this: AbFileInterface) {.base.} =
        raise newJException("AbstractMethodError", "deleteOnExit")

method exists*(this: AbFileInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "exists")

method getAbsolutePath*(this: AbFileInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getAbsolutePath")

method getCanonicalPath*(this: AbFileInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getCanonicalPath")

method getParent*(this: AbFileInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getParent")

method getPath*(this: AbFileInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getPath")

method isAbsolute*(this: AbFileInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isAbsolute")

method isDirectory*(this: AbFileInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isDirectory")

method isFile*(this: AbFileInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isFile")

method isHidden*(this: AbFileInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "isHidden")

method lastModified*(this: AbFileInterface): int64 {.base, discardable.} =
        raise newJException("AbstractMethodError", "lastModified")

method length*(this: AbFileInterface): int64 {.base, discardable.} =
        raise newJException("AbstractMethodError", "length")

method list*(this: AbFileInterface): JArray[string] {.base, discardable.} =
        raise newJException("AbstractMethodError", "list")

method listWithFilter*(this: AbFileInterface, filter: FilenameFilter): JArray[string] {.base, discardable.} =
        raise newJException("AbstractMethodError", "listWithFilter")

method mkdir*(this: AbFileInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "mkdir")

method mkdirs*(this: AbFileInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "mkdirs")

method setLastModified*(this: AbFileInterface, time: int64): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "setLastModified")

method setReadOnly*(this: AbFileInterface): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "setReadOnly")

method toString*(this: AbFileInterface): string {.discardable.} =
        raise newJException("AbstractMethodError", "toString")

method toURI*(this: AbFileInterface): URI {.base, discardable.} =
        raise newJException("AbstractMethodError", "toURI")

