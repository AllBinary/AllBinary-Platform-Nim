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
# package org.allbinary.graphics.color

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    BasicColorArrayIndexer* = ref object of JObject
        basicColorArray*: JArray[BasicColor]
        circularIndexUtil*: CircularIndexUtil

proc newBasicColorArrayIndexer*(basicColorArray: JArray[BasicColor]): BasicColorArrayIndexer
proc initBasicColorArrayIndexer*(this: BasicColorArrayIndexer, basicColorArray: JArray[BasicColor])
method next*(this: BasicColorArrayIndexer) {.base.}
method get*(this: BasicColorArrayIndexer): BasicColor {.base, discardable.}
method getBasicColorArray*(this: BasicColorArrayIndexer): JArray[BasicColor] {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsBasicColorArrayIndexer(this: BasicColorArrayIndexer) =
    
    
    discard

proc initBasicColorArrayIndexer*(this: BasicColorArrayIndexer, basicColorArray: JArray[BasicColor]) =
        this.initFieldsBasicColorArrayIndexer()
        this.basicColorArray = basicColorArray
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.basicColorArray.length)

proc newBasicColorArrayIndexer*(basicColorArray: JArray[BasicColor]): BasicColorArrayIndexer =
    result = BasicColorArrayIndexer()
    initBasicColorArrayIndexer(result, basicColorArray)

method next*(this: BasicColorArrayIndexer) {.base.} =
        this.circularIndexUtil.next()

method get*(this: BasicColorArrayIndexer): BasicColor {.base, discardable.} =
        return this.basicColorArray[this.circularIndexUtil.getIndex()]

method getBasicColorArray*(this: BasicColorArrayIndexer): JArray[BasicColor] {.base, discardable.} =
        return this.basicColorArray

