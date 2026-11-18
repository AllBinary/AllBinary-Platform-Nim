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
# package org.allbinary.init

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/init/InitInterface as InitInterfaceModule
export InitInterfaceModule

type
    Init* = ref object of InitInterface
        commonStrings*: CommonStrings

proc newInit*(): Init
method init*(this: Init)


# Java field initializers run after the base initializer
proc initFieldsInit(this: Init) =
    this.commonStrings = CommonStrings.getInstance()
    discard

proc initInit*(this: Init) =
    this.initFieldsInit()

proc newInit*(): Init =
    result = Init()
    initInit(result)

method init*(this: Init) =
        discard

