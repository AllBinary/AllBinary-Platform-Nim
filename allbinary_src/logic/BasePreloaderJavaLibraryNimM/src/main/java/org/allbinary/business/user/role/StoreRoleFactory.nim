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
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    StoreRoleFactory* = ref object of JObject
        roles*: BasicArrayList
        subscriberRoles*: BasicArrayList
        wholesaleRoles*: BasicArrayList

proc newStoreRoleFactory*(): StoreRoleFactory
proc initStoreRoleFactory*(this: StoreRoleFactory)
proc getInstance*(t: typedesc[StoreRoleFactory]): StoreRoleFactory {.discardable.}
method getRoles*(this: StoreRoleFactory): BasicArrayList {.base, discardable.}
method getSubscriberRoles*(this: StoreRoleFactory): BasicArrayList {.base, discardable.}
method getWholesaleRoles*(this: StoreRoleFactory): BasicArrayList {.base, discardable.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/business/user/role/BasicUserRoleFactory as BasicUserRoleFactoryModule
export BasicUserRoleFactoryModule

var StoreRoleFactory_instanceValue: StoreRoleFactory
var StoreRoleFactory_instanceSet = false
proc instance*(t: typedesc[StoreRoleFactory]): StoreRoleFactory =
    if not StoreRoleFactory_instanceSet:
        StoreRoleFactory_instanceSet = true
        StoreRoleFactory_instanceValue = newStoreRoleFactory()
    StoreRoleFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsStoreRoleFactory(this: StoreRoleFactory) =
    this.roles = newBasicArrayListD()
    this.subscriberRoles = newBasicArrayListD()
    this.wholesaleRoles = newBasicArrayListD()
    discard

proc getInstance*(t: typedesc[StoreRoleFactory]): StoreRoleFactory {.discardable.} =
        return StoreRoleFactory.instance

proc initStoreRoleFactory*(this: StoreRoleFactory) =
        this.initFieldsStoreRoleFactory()
        let basicUserRoleFactory: BasicUserRoleFactory = BasicUserRoleFactory.getInstance()
        this.roles.add(basicUserRoleFactory.CUSTOMER)
        this.roles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER)
        this.roles.add(basicUserRoleFactory.WHOLESALECUSTOMER)
        this.subscriberRoles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER)
        this.wholesaleRoles.add(basicUserRoleFactory.WHOLESALECUSTOMER)

proc newStoreRoleFactory*(): StoreRoleFactory =
    result = StoreRoleFactory()
    initStoreRoleFactory(result)

method getRoles*(this: StoreRoleFactory): BasicArrayList {.base, discardable.} =
        return this.roles

method getSubscriberRoles*(this: StoreRoleFactory): BasicArrayList {.base, discardable.} =
        return this.subscriberRoles

method getWholesaleRoles*(this: StoreRoleFactory): BasicArrayList {.base, discardable.} =
        return this.wholesaleRoles

