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
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule

type
    RelativeRelationship* = ref object of JObject
        typesAllowedList*: BasicArrayList
        x*: int32
        y*: int32
        z*: int32

proc newRelativeRelationship*(point: GPoint, typesAllowedList: BasicArrayList): RelativeRelationship
proc initRelativeRelationship*(this: RelativeRelationship, point: GPoint, typesAllowedList: BasicArrayList)
method getX*(this: RelativeRelationship): int32 {.base, discardable.}
method getY*(this: RelativeRelationship): int32 {.base, discardable.}
method getZ*(this: RelativeRelationship): int32 {.base, discardable.}
method getTypesAllowedList*(this: RelativeRelationship): BasicArrayList {.base, discardable.}
method setTypesAllowedList*(this: RelativeRelationship, typesAllowedList: BasicArrayList) {.base.}
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule

var RelativeRelationship_NULL_RELATIVE_RELATIONSHIPValue: RelativeRelationship
var RelativeRelationship_NULL_RELATIVE_RELATIONSHIPSet = false
proc NULL_RELATIVE_RELATIONSHIP*(t: typedesc[RelativeRelationship]): RelativeRelationship =
    if not RelativeRelationship_NULL_RELATIVE_RELATIONSHIPSet:
        RelativeRelationship_NULL_RELATIVE_RELATIONSHIPSet = true
        RelativeRelationship_NULL_RELATIVE_RELATIONSHIPValue = newRelativeRelationship(PointFactory.getInstance().ZERO_ZERO, BasicArrayListUtil.getInstance().getImmutableInstance())
    RelativeRelationship_NULL_RELATIVE_RELATIONSHIPValue

# Java field initializers run after the base initializer
proc initFieldsRelativeRelationship(this: RelativeRelationship) =
    
    
    
    
    discard

proc initRelativeRelationship*(this: RelativeRelationship, point: GPoint, typesAllowedList: BasicArrayList) =
        this.initFieldsRelativeRelationship()
        this.x = point.getX()
        this.y = point.getY()
        this.z = point.getZ()
        this.typesAllowedList = typesAllowedList

proc newRelativeRelationship*(point: GPoint, typesAllowedList: BasicArrayList): RelativeRelationship =
    result = RelativeRelationship()
    initRelativeRelationship(result, point, typesAllowedList)

method getX*(this: RelativeRelationship): int32 {.base, discardable.} =
        return this.x

method getY*(this: RelativeRelationship): int32 {.base, discardable.} =
        return this.y

method getZ*(this: RelativeRelationship): int32 {.base, discardable.} =
        return this.z

method getTypesAllowedList*(this: RelativeRelationship): BasicArrayList {.base, discardable.} =
        return this.typesAllowedList

method setTypesAllowedList*(this: RelativeRelationship, typesAllowedList: BasicArrayList) {.base.} =
        this.typesAllowedList = typesAllowedList

