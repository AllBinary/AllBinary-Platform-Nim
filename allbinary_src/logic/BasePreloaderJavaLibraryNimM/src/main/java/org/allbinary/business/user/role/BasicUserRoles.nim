#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.business.user.role

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/business/user/role/BasicUserRole as BasicUserRoleModule
export BasicUserRoleModule

type
    BasicUserRoles* = ref object of JObject
        roleVector*: BasicArrayList

proc newBasicUserRoles*(): BasicUserRoles
proc getInstance*(t: typedesc[BasicUserRoles]): BasicUserRoles {.discardable.}
method getRole*(this: BasicUserRoles, role: string): BasicUserRole {.base, discardable.}
method getAll*(this: BasicUserRoles): BasicArrayList {.base, discardable.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var BasicUserRoles_instanceValue: BasicUserRoles
var BasicUserRoles_instanceSet = false
proc instance*(t: typedesc[BasicUserRoles]): BasicUserRoles =
    if not BasicUserRoles_instanceSet:
        BasicUserRoles_instanceSet = true
        BasicUserRoles_instanceValue = newBasicUserRoles()
    BasicUserRoles_instanceValue

# Java field initializers run after the base initializer
proc initFieldsBasicUserRoles(this: BasicUserRoles) =
    this.roleVector = newBasicArrayListD()
    discard

proc initBasicUserRoles*(this: BasicUserRoles) =
    this.initFieldsBasicUserRoles()

proc newBasicUserRoles*(): BasicUserRoles =
    result = BasicUserRoles()
    initBasicUserRoles(result)

proc getInstance*(t: typedesc[BasicUserRoles]): BasicUserRoles {.discardable.} =
        return BasicUserRoles.instance

method getRole*(this: BasicUserRoles, role: string): BasicUserRole {.base, discardable.} =
        let roleVector: BasicArrayList = this.getAll()
        let size: int32 = roleVector.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                var userRole: BasicUserRole = BasicUserRole(roleVector.get(index))
                if jCompareTo(role, userRole.toString()) == 0:
                    return userRole
        raise newJException("Exception", "Unable to get role - Unknown Role")

method getAll*(this: BasicUserRoles): BasicArrayList {.base, discardable.} =
        return this.roleVector

