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
# package org.allbinary.game.collision

{.warning[UnusedImport]: off.}
import allbinary_java

type
    CollisionType* = ref object of JObject
        name*: string

proc newCollisionType*(name: string): CollisionType
proc initCollisionType*(this: CollisionType, name: string)
method toString*(this: CollisionType): string {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsCollisionType(this: CollisionType) =
    
    discard

proc initCollisionType*(this: CollisionType, name: string) =
        this.initFieldsCollisionType()
        this.name = name

proc newCollisionType*(name: string): CollisionType =
    result = CollisionType()
    initCollisionType(result, name)

method toString*(this: CollisionType): string {.discardable.} =
        return this.name

