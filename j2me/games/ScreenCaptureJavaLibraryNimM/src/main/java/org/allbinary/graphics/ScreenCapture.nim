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
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ScreenCapture* = ref object of JObject

proc newScreenCapture*(): ScreenCapture
method saveFrame*(this: ScreenCapture) {.base.}
method startRecording*(this: ScreenCapture) {.base.}
method endRecording*(this: ScreenCapture) {.base.}


proc initScreenCapture*(this: ScreenCapture) =
    discard

proc newScreenCapture*(): ScreenCapture =
    result = ScreenCapture()
    initScreenCapture(result)

method saveFrame*(this: ScreenCapture) {.base.} =
        discard

method startRecording*(this: ScreenCapture) {.base.} =
        discard

method endRecording*(this: ScreenCapture) {.base.} =
        discard

