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
# package org.allbinary.business.user.role

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/Serializable as SerializableModule
export SerializableModule

type
    BasicUserRole* = ref object of Serializable
        m_int_RoleId*: int32
        role*: string
        displayValue*: string
        sessionTimeout*: int64
        sessionInactivityTimeout*: int64

proc newBasicUserRole*(aRole: string, a_int_RoleId: int32, aSessionTimeout: int64, aSessionInactivityTimeout: int64): BasicUserRole
proc newBasicUserRole*(aRole: string, aDisplayValue: string, a_int_RoleId: int32, aSessionTimeout: int64, aSessionInactivityTimeout: int64): BasicUserRole
proc initBasicUserRole*(this: BasicUserRole, aRole: string, a_int_RoleId: int32, aSessionTimeout: int64, aSessionInactivityTimeout: int64)
proc initBasicUserRole*(this: BasicUserRole, aRole: string, aDisplayValue: string, a_int_RoleId: int32, aSessionTimeout: int64, aSessionInactivityTimeout: int64)
method getRoleId*(this: BasicUserRole): int32 {.base, discardable.}
method getRole*(this: BasicUserRole): string {.base, discardable.}
method getSessionTimeout*(this: BasicUserRole): int64 {.base, discardable.}
method getSessionInactivityTimeout*(this: BasicUserRole): int64 {.base, discardable.}
method equals*(this: BasicUserRole, basicUserRole: BasicUserRole): bool {.discardable.}
method toString*(this: BasicUserRole): string {.discardable.}
import org/allbinary/business/user/role/BasicUserRoles as BasicUserRolesModule
export BasicUserRolesModule


# Java field initializers run after the base initializer
proc initFieldsBasicUserRole(this: BasicUserRole) =
    
    
    
    
    
    discard

proc initBasicUserRole*(this: BasicUserRole, aRole: string, a_int_RoleId: int32, aSessionTimeout: int64, aSessionInactivityTimeout: int64) =
        initBasicUserRole(this, aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)

proc newBasicUserRole*(aRole: string, a_int_RoleId: int32, aSessionTimeout: int64, aSessionInactivityTimeout: int64): BasicUserRole =
    result = BasicUserRole()
    initBasicUserRole(result, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)

proc initBasicUserRole*(this: BasicUserRole, aRole: string, aDisplayValue: string, a_int_RoleId: int32, aSessionTimeout: int64, aSessionInactivityTimeout: int64) =
        this.initFieldsBasicUserRole()
        this.m_int_RoleId = a_int_RoleId
        this.role = aRole
        this.displayValue = aDisplayValue
        this.sessionTimeout = aSessionTimeout
        this.sessionInactivityTimeout = aSessionInactivityTimeout
        BasicUserRoles.getInstance().roleVector.add(this)

proc newBasicUserRole*(aRole: string, aDisplayValue: string, a_int_RoleId: int32, aSessionTimeout: int64, aSessionInactivityTimeout: int64): BasicUserRole =
    result = BasicUserRole()
    initBasicUserRole(result, aRole, aDisplayValue, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)

method getRoleId*(this: BasicUserRole): int32 {.base, discardable.} =
        return this.m_int_RoleId

method getRole*(this: BasicUserRole): string {.base, discardable.} =
        return this.role

method getSessionTimeout*(this: BasicUserRole): int64 {.base, discardable.} =
        return this.sessionTimeout

method getSessionInactivityTimeout*(this: BasicUserRole): int64 {.base, discardable.} =
        return this.sessionInactivityTimeout

method equals*(this: BasicUserRole, basicUserRole: BasicUserRole): bool {.discardable.} =
        if this.getRoleId() == basicUserRole.getRoleId():
            return true
        return false

method toString*(this: BasicUserRole): string {.discardable.} =
        return this.getRole()

