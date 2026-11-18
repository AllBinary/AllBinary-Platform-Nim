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
import org/allbinary/game/identification/GroupInterface as GroupInterfaceModule
export GroupInterfaceModule

type
    Group* = ref object of GroupInterface
        name*: string
        teamId*: int16
        string*: string

proc newGroup*(teamName: string, teamId: int16): Group
proc initGroup*(this: Group, teamName: string, teamId: int16)
method getGroupName*(this: Group): string {.discardable.}
method setName*(this: Group, name: string) {.base.}
method getGroupId*(this: Group): int16 {.discardable.}
method toString*(this: Group): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/game/identification/GroupCommonFactory as GroupCommonFactoryModule
export GroupCommonFactoryModule


# Java field initializers run after the base initializer
proc initFieldsGroup(this: Group) =
    this.name = StringUtil.getInstance().EMPTY_STRING
    
    this.string = StringUtil.getInstance().EMPTY_STRING
    discard

proc initGroup*(this: Group, teamName: string, teamId: int16) =
        this.initFieldsGroup()
        this.teamId = teamId
        this.setName(teamName)

proc newGroup*(teamName: string, teamId: int16): Group =
    result = Group()
    initGroup(result, teamName, teamId)

method getGroupName*(this: Group): string {.discardable.} =
        return this.name

method setName*(this: Group, name: string) {.base.} =
        this.name = name
        let groupCommonFactory: GroupCommonFactory = GroupCommonFactory.getInstance()
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(groupCommonFactory.GROUP_NAME_LABEL)
        stringBuffer.append(this.name)
        stringBuffer.append(groupCommonFactory.ID_LABEL)
        stringBuffer.appendshort(this.teamId)
        this.string = stringBuffer.toString()

method getGroupId*(this: Group): int16 {.discardable.} =
        return this.teamId

method toString*(this: Group): string {.discardable.} =
        return this.string

