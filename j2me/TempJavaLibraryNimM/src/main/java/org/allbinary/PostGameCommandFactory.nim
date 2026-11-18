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
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule

type
    PostGameCommandFactory* = ref object of JObject

proc newPostGameCommandFactory*(): PostGameCommandFactory
proc getInstance*(t: typedesc[PostGameCommandFactory]): PostGameCommandFactory {.discardable.}
method addCommands*(this: PostGameCommandFactory, canvas: Canvas) {.base.}

var PostGameCommandFactory_instanceValue: PostGameCommandFactory
var PostGameCommandFactory_instanceSet = false
proc instance*(t: typedesc[PostGameCommandFactory]): PostGameCommandFactory =
    if not PostGameCommandFactory_instanceSet:
        PostGameCommandFactory_instanceSet = true
        PostGameCommandFactory_instanceValue = newPostGameCommandFactory()
    PostGameCommandFactory_instanceValue

proc initPostGameCommandFactory*(this: PostGameCommandFactory) =
    discard

proc newPostGameCommandFactory*(): PostGameCommandFactory =
    result = PostGameCommandFactory()
    initPostGameCommandFactory(result)

proc getInstance*(t: typedesc[PostGameCommandFactory]): PostGameCommandFactory {.discardable.} =
        raise newJException("RuntimeException", "")

method addCommands*(this: PostGameCommandFactory, canvas: Canvas) {.base.} =
        discard

