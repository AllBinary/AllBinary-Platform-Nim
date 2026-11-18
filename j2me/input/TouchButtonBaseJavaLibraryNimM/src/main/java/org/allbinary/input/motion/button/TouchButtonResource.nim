#[
  
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
]#
# Generated Code Do Not Modify
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java

type
    TouchButtonResource* = ref object of JObject
        RESOURCE*: string
        HINT*: string

proc newTouchButtonResource*(resource: string, hint: string): TouchButtonResource
proc initTouchButtonResource*(this: TouchButtonResource, resource: string, hint: string)


# Java field initializers run after the base initializer
proc initFieldsTouchButtonResource(this: TouchButtonResource) =
    
    
    discard

proc initTouchButtonResource*(this: TouchButtonResource, resource: string, hint: string) =
        this.initFieldsTouchButtonResource()
        this.RESOURCE = resource
        this.HINT = hint

proc newTouchButtonResource*(resource: string, hint: string): TouchButtonResource =
    result = TouchButtonResource()
    initTouchButtonResource(result, resource, hint)

