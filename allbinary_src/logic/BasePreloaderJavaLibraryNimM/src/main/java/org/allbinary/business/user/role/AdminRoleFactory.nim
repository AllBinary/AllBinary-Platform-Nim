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
    AdminRoleFactory* = ref object of JObject
        adminRoles*: BasicArrayList
        storeAdminRoles*: BasicArrayList
        storeManagementRoles*: BasicArrayList
        productManagementRoles*: BasicArrayList
        reviewManagementRoles*: BasicArrayList
        customerManagementRoles*: BasicArrayList
        workflowManagementRoles*: BasicArrayList
        orderManagementRoles*: BasicArrayList
        adjusterManagementRoles*: BasicArrayList
        shippingManagementRoles*: BasicArrayList
        webManagementRoles*: BasicArrayList

proc newAdminRoleFactory*(): AdminRoleFactory
proc initAdminRoleFactory*(this: AdminRoleFactory)
proc getInstance*(t: typedesc[AdminRoleFactory]): AdminRoleFactory {.discardable.}
method getProductManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.}
method getAdminRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.}
method getStoreAdminRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.}
method getStoreManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.}
method getReviewManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.}
method getCustomerManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.}
method getWorkflowManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.}
method getWebManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.}
method getShippingManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.}
method getAdjusterManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.}
method getOrderManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.}
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/business/user/role/BasicUserRoleFactory as BasicUserRoleFactoryModule
export BasicUserRoleFactoryModule

var AdminRoleFactory_instanceValue: AdminRoleFactory
var AdminRoleFactory_instanceSet = false
proc instance*(t: typedesc[AdminRoleFactory]): AdminRoleFactory =
    if not AdminRoleFactory_instanceSet:
        AdminRoleFactory_instanceSet = true
        AdminRoleFactory_instanceValue = newAdminRoleFactory()
    AdminRoleFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAdminRoleFactory(this: AdminRoleFactory) =
    this.adminRoles = newBasicArrayListD()
    this.storeAdminRoles = newBasicArrayListD()
    this.storeManagementRoles = newBasicArrayListD()
    this.productManagementRoles = newBasicArrayListD()
    this.reviewManagementRoles = newBasicArrayListD()
    this.customerManagementRoles = newBasicArrayListD()
    this.workflowManagementRoles = newBasicArrayListD()
    this.orderManagementRoles = newBasicArrayListD()
    this.adjusterManagementRoles = newBasicArrayListD()
    this.shippingManagementRoles = newBasicArrayListD()
    this.webManagementRoles = newBasicArrayListD()
    discard

proc getInstance*(t: typedesc[AdminRoleFactory]): AdminRoleFactory {.discardable.} =
        return AdminRoleFactory.instance

proc initAdminRoleFactory*(this: AdminRoleFactory) =
        this.initFieldsAdminRoleFactory()
        let basicUserRoleFactory: BasicUserRoleFactory = BasicUserRoleFactory.getInstance()
        this.adminRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        this.storeAdminRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        this.storeAdminRoles.add(basicUserRoleFactory.STOREMANAGER)
        this.storeManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        this.storeManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        this.storeManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER)
        this.storeManagementRoles.add(basicUserRoleFactory.ADJUSTER)
        this.storeManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER)
        this.storeManagementRoles.add(basicUserRoleFactory.REVIEWER)
        this.storeManagementRoles.add(basicUserRoleFactory.SHIPPING)
        this.productManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        this.productManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        this.productManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER)
        this.reviewManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        this.reviewManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        this.reviewManagementRoles.add(basicUserRoleFactory.REVIEWER)
        this.customerManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        this.customerManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        this.customerManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER)
        this.workflowManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        this.workflowManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        this.workflowManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR)
        this.orderManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        this.orderManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        this.adjusterManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        this.adjusterManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        this.adjusterManagementRoles.add(basicUserRoleFactory.ADJUSTER)
        this.shippingManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        this.shippingManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        this.shippingManagementRoles.add(basicUserRoleFactory.SHIPPING)
        this.webManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        this.webManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        this.webManagementRoles.add(basicUserRoleFactory.WEBMANAGER)
        this.webManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR)
        this.webManagementRoles.add(basicUserRoleFactory.VIEWEDITOR)

proc newAdminRoleFactory*(): AdminRoleFactory =
    result = AdminRoleFactory()
    initAdminRoleFactory(result)

method getProductManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.} =
        return this.productManagementRoles

method getAdminRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.} =
        return this.adminRoles

method getStoreAdminRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.} =
        return this.storeAdminRoles

method getStoreManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.} =
        return this.storeManagementRoles

method getReviewManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.} =
        return this.reviewManagementRoles

method getCustomerManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.} =
        return this.customerManagementRoles

method getWorkflowManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.} =
        return this.workflowManagementRoles

method getWebManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.} =
        return this.webManagementRoles

method getShippingManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.} =
        return this.shippingManagementRoles

method getAdjusterManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.} =
        return this.adjusterManagementRoles

method getOrderManagementRoles*(this: AdminRoleFactory): BasicArrayList {.base, discardable.} =
        return this.orderManagementRoles

