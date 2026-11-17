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
import org/allbinary/business/user/role/BasicUserRole as BasicUserRoleModule
export BasicUserRoleModule

type
    BasicUserRoleFactory* = ref object of JObject
        INACTIVITYTIMEOUT*: int64
        CUSTOMERTIMEOUT*: int64
        CUSTOMERMAXSESSIONTIME*: int64
        MAXSESSIONTIME*: int64
        INSTALLER*: BasicUserRole
        ADMINISTRATOR*: BasicUserRole
        CUSTOMER*: BasicUserRole
        SUBSCRIBERCUSTOMER*: BasicUserRole
        WHOLESALECUSTOMER*: BasicUserRole
        STOREMANAGER*: BasicUserRole
        PRODUCTMANAGER*: BasicUserRole
        CUSTOMERMANAGER*: BasicUserRole
        PAYMENTMANAGER*: BasicUserRole
        ORDERMANAGER*: BasicUserRole
        WEBMANAGER*: BasicUserRole
        REVIEWER*: BasicUserRole
        SHIPPING*: BasicUserRole
        ADJUSTER*: BasicUserRole
        WORKFLOWEDITOR*: BasicUserRole
        WIZARD*: BasicUserRole
        VIEWEDITOR*: BasicUserRole

proc newBasicUserRoleFactory*(): BasicUserRoleFactory
proc getInstance*(t: typedesc[BasicUserRoleFactory]): BasicUserRoleFactory {.discardable.}

var BasicUserRoleFactory_instanceValue: BasicUserRoleFactory
var BasicUserRoleFactory_instanceSet = false
proc instance*(t: typedesc[BasicUserRoleFactory]): BasicUserRoleFactory =
    if not BasicUserRoleFactory_instanceSet:
        BasicUserRoleFactory_instanceSet = true
        BasicUserRoleFactory_instanceValue = newBasicUserRoleFactory()
    BasicUserRoleFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsBasicUserRoleFactory(this: BasicUserRoleFactory) =
    this.INACTIVITYTIMEOUT = 360000000'i64
    this.CUSTOMERTIMEOUT = 360000000'i64
    this.CUSTOMERMAXSESSIONTIME = 360000000'i64
    this.MAXSESSIONTIME = 360000000'i64
    this.INSTALLER = newBasicUserRole("Installer", 16, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.ADMINISTRATOR = newBasicUserRole("Administrator", 0, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.CUSTOMER = newBasicUserRole("CustomerUser", "Customer User", 1, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME)
    this.SUBSCRIBERCUSTOMER = newBasicUserRole("SubscriberUser", "Subscriber User", 2, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME)
    this.WHOLESALECUSTOMER = newBasicUserRole("WholesaleUser", "Wholesale User", 3, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME)
    this.STOREMANAGER = newBasicUserRole("StoreManager", "Store Manager", 4, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.PRODUCTMANAGER = newBasicUserRole("ProductManager", "Product Manager", 5, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.CUSTOMERMANAGER = newBasicUserRole("UserManager", "User Manager", 6, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.PAYMENTMANAGER = newBasicUserRole("PaymentManager", "Payment Manager", 7, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.ORDERMANAGER = newBasicUserRole("OrderManager", "Order Manager", 8, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.WEBMANAGER = newBasicUserRole("WebManager", "Web Manager", 9, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.REVIEWER = newBasicUserRole("Reviewer", 10, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.SHIPPING = newBasicUserRole("Shipping", 11, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.ADJUSTER = newBasicUserRole("Adjuster", 12, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.WORKFLOWEDITOR = newBasicUserRole("WorkFlowEditor", "WorkFlow Editor", 13, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.WIZARD = newBasicUserRole("WizardUser", "Wizard User", 14, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    this.VIEWEDITOR = newBasicUserRole("ViewEditor", "View Editor", 15, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT)
    discard

proc initBasicUserRoleFactory*(this: BasicUserRoleFactory) =
    this.initFieldsBasicUserRoleFactory()

proc newBasicUserRoleFactory*(): BasicUserRoleFactory =
    result = BasicUserRoleFactory()
    initBasicUserRoleFactory(result)

proc getInstance*(t: typedesc[BasicUserRoleFactory]): BasicUserRoleFactory {.discardable.} =
        return BasicUserRoleFactory.instance

