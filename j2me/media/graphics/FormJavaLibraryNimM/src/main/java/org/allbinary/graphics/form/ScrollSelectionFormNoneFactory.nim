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
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/form/ScrollSelectionForm as ScrollSelectionFormModule
export ScrollSelectionFormModule

type
    ScrollSelectionFormNoneFactory* = ref object of JObject

proc newScrollSelectionFormNoneFactory*(): ScrollSelectionFormNoneFactory
proc getInstance*(t: typedesc[ScrollSelectionFormNoneFactory]): ScrollSelectionForm {.discardable.}


proc initScrollSelectionFormNoneFactory*(this: ScrollSelectionFormNoneFactory) =
    discard

proc newScrollSelectionFormNoneFactory*(): ScrollSelectionFormNoneFactory =
    result = ScrollSelectionFormNoneFactory()
    initScrollSelectionFormNoneFactory(result)

proc getInstance*(t: typedesc[ScrollSelectionFormNoneFactory]): ScrollSelectionForm {.discardable.} =
        return ScrollSelectionForm.getNullScrollSelectionFormHorizontal()

