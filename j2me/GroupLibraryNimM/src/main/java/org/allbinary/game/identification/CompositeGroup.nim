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
# package org.allbinary.game.identification

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/identification/Group as GroupModule
export GroupModule

type
    CompositeGroup* = ref object of JObject
        logUtil*: LogUtil
        groupInterface*: Group
        list*: BasicArrayList

proc newCompositeGroup*(groupInterface: Group): CompositeGroup
proc initCompositeGroup*(this: CompositeGroup, groupInterface: Group)
method clear*(this: CompositeGroup) {.base.}
method add*(this: CompositeGroup, groupInterface: Group) {.base.}
method isInGroup*(this: CompositeGroup, groupInterface: Group): bool {.base, discardable.}
method getGroup*(this: CompositeGroup): Group {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/identification/GroupCommonFactory as GroupCommonFactoryModule
export GroupCommonFactoryModule


# Java field initializers run after the base initializer
proc initFieldsCompositeGroup(this: CompositeGroup) =
    this.logUtil = LogUtil.getInstance()
    
    this.list = newBasicArrayListD()
    discard

proc initCompositeGroup*(this: CompositeGroup, groupInterface: Group) =
        this.initFieldsCompositeGroup()
        this.groupInterface = groupInterface

proc newCompositeGroup*(groupInterface: Group): CompositeGroup =
    result = CompositeGroup()
    initCompositeGroup(result, groupInterface)

method clear*(this: CompositeGroup) {.base.} =
        this.list.clear()

method add*(this: CompositeGroup, groupInterface: Group) {.base.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        let groupCommonFactory: GroupCommonFactory = GroupCommonFactory.getInstance()
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(groupCommonFactory.ADDING_LABEL)
        stringBuffer.append(groupInterface.toString())
        stringBuffer.append(groupCommonFactory.TO_LABEL)
        stringBuffer.append(StringUtil.getInstance().toString(this.groupInterface))
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.ADD)
        this.list.add(groupInterface)

method isInGroup*(this: CompositeGroup, groupInterface: Group): bool {.base, discardable.} =
        if this.list.contains(groupInterface):
            return true
        else:
            return false

method getGroup*(this: CompositeGroup): Group {.base, discardable.} =
        return this.groupInterface

