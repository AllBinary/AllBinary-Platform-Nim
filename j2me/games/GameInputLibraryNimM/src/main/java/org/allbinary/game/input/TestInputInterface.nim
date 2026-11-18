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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule

type
    TestInputInterface* = ref object of PaintableInterface


method up*(this: TestInputInterface) {.base.} =
        raise newJException("AbstractMethodError", "up")

method down*(this: TestInputInterface) {.base.} =
        raise newJException("AbstractMethodError", "down")

method left*(this: TestInputInterface) {.base.} =
        raise newJException("AbstractMethodError", "left")

method right*(this: TestInputInterface) {.base.} =
        raise newJException("AbstractMethodError", "right")

method strafeLeft*(this: TestInputInterface) {.base.} =
        raise newJException("AbstractMethodError", "strafeLeft")

method strafeRight*(this: TestInputInterface) {.base.} =
        raise newJException("AbstractMethodError", "strafeRight")

