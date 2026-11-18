#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/eclipse/swt/graphics/Resource as ResourceModule
export ResourceModule

type
    DisposalUtil* = ref object of JObject

proc newDisposalUtil*(): DisposalUtil
proc getInstance*(t: typedesc[DisposalUtil]): DisposalUtil {.discardable.}
method disposeImage*(this: DisposalUtil, image: Image) {.base.}
method disposeResource*(this: DisposalUtil, resource: Resource) {.base.}

var DisposalUtil_instanceValue: DisposalUtil
var DisposalUtil_instanceSet = false
proc instance*(t: typedesc[DisposalUtil]): DisposalUtil =
    if not DisposalUtil_instanceSet:
        DisposalUtil_instanceSet = true
        DisposalUtil_instanceValue = newDisposalUtil()
    DisposalUtil_instanceValue

proc initDisposalUtil*(this: DisposalUtil) =
    discard

proc newDisposalUtil*(): DisposalUtil =
    result = DisposalUtil()
    initDisposalUtil(result)

proc getInstance*(t: typedesc[DisposalUtil]): DisposalUtil {.discardable.} =
        return DisposalUtil.instance

method disposeImage*(this: DisposalUtil, image: Image) {.base.} =
        discard

method disposeResource*(this: DisposalUtil, resource: Resource) {.base.} =
        if (not resource.isDisposed()):
            resource.dispose()

