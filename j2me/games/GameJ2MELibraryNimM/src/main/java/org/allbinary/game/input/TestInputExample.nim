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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/input/TestInputInterface as TestInputInterfaceModule
export TestInputInterfaceModule

type
    TestInputExample* = ref object of TestInputInterface
        testValue*: int32

proc newTestInputExample*(): TestInputExample
method up*(this: TestInputExample)
method down*(this: TestInputExample)
method left*(this: TestInputExample)
method right*(this: TestInputExample)
method strafeLeft*(this: TestInputExample)
method strafeRight*(this: TestInputExample)
method paint*(this: TestInputExample, graphics: Graphics)
method paintThreed*(this: TestInputExample, graphics: Graphics)


# Java field initializers run after the base initializer
proc initFieldsTestInputExample(this: TestInputExample) =
    this.testValue = 0
    discard

proc initTestInputExample*(this: TestInputExample) =
    this.initFieldsTestInputExample()

proc newTestInputExample*(): TestInputExample =
    result = TestInputExample()
    initTestInputExample(result)

method up*(this: TestInputExample) =
        discard

method down*(this: TestInputExample) =
        discard

method left*(this: TestInputExample) =
        this.testValue = this.testValue +% 1

method right*(this: TestInputExample) =
        this.testValue = this.testValue -% 1

method strafeLeft*(this: TestInputExample) =
        discard

method strafeRight*(this: TestInputExample) =
        discard

method paint*(this: TestInputExample, graphics: Graphics) =
        discard

method paintThreed*(this: TestInputExample, graphics: Graphics) =
        discard

