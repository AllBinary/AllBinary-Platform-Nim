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
# package org.allbinary.logic.system.hardware.components

{.warning[UnusedImport]: off.}
import allbinary_java

type
    Component* = ref object of JObject
        name*: string

proc newComponent*(componentName: string): Component
proc initComponent*(this: Component, componentName: string)
method toString*(this: Component): string {.discardable.}


# Java field initializers run after the base initializer
proc initFieldsComponent(this: Component) =
    
    discard

proc initComponent*(this: Component, componentName: string) =
        this.initFieldsComponent()
        this.name = componentName

proc newComponent*(componentName: string): Component =
    result = Component()
    initComponent(result, componentName)

method toString*(this: Component): string {.discardable.} =
        return this.name

