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
# package org.allbinary.game.layer.identification

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/identification/Group as GroupModule
export GroupModule
import org/allbinary/game/identification/GroupInterfaceCompositeInterface as GroupInterfaceCompositeInterfaceModule
export GroupInterfaceCompositeInterfaceModule
import org/allbinary/layer/event/LayerManagerEvent as LayerManagerEventModule
export LayerManagerEventModule
import org/allbinary/layer/event/LayerManagerEventListener as LayerManagerEventListenerModule
export LayerManagerEventListenerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    GroupLayerManagerListener* = ref object of LayerManagerEventListener
        logUtil*: LogUtil
        list*: BasicArrayList

proc newGroupLayerManagerListener*(): GroupLayerManagerListener
proc initGroupLayerManagerListener*(this: GroupLayerManagerListener)
proc getInstance*(t: typedesc[GroupLayerManagerListener]): GroupLayerManagerListener {.discardable.}
method clear*(this: GroupLayerManagerListener) {.base.}
method getGroupSizeFromInterface*(this: GroupLayerManagerListener, groupInterfaceCompositeInterface: GroupInterfaceCompositeInterface): int32 {.base, discardable.}
method getGroupSize*(this: GroupLayerManagerListener, groupInterface: Group): int32 {.base, discardable.}
method getList*(this: GroupLayerManagerListener, groupInterface: Group): BasicArrayList {.base, discardable.}
method getListById*(this: GroupLayerManagerListener, groupId: int32): BasicArrayList {.base, discardable.}
method getGroupSizeById*(this: GroupLayerManagerListener, groupId: int32): int32 {.base, discardable.}
method areAllOtherGroupsEmpty*(this: GroupLayerManagerListener, groupInterface: Group): bool {.base, discardable.}
method isIdInList*(this: GroupLayerManagerListener, id: int32, excludeGroupList: BasicArrayList): bool {.base, discardable.}
method areAllOtherGroupsLessThan*(this: GroupLayerManagerListener, excludeGroupList: BasicArrayList, maxSize: int32): bool {.base, discardable.}
method init*(this: GroupLayerManagerListener, total: int32) {.base.}
method onEvent*(this: GroupLayerManagerListener, eventObject: AllBinaryEventObject)
method onCreateLayerManagerEvent*(this: GroupLayerManagerListener, layerManagerEvent: LayerManagerEvent)
method onDeleteLayerManagerEvent*(this: GroupLayerManagerListener, layerManagerEvent: LayerManagerEvent)
method log*(this: GroupLayerManagerListener) {.base.}
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/event/LayerManagerEventHandler as LayerManagerEventHandlerModule
export LayerManagerEventHandlerModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var GroupLayerManagerListener_SINGLETONValue: GroupLayerManagerListener
var GroupLayerManagerListener_SINGLETONSet = false
proc SINGLETON*(t: typedesc[GroupLayerManagerListener]): GroupLayerManagerListener =
    if not GroupLayerManagerListener_SINGLETONSet:
        GroupLayerManagerListener_SINGLETONSet = true
        GroupLayerManagerListener_SINGLETONValue = newGroupLayerManagerListener()
    GroupLayerManagerListener_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[GroupLayerManagerListener], value: GroupLayerManagerListener) =
    GroupLayerManagerListener_SINGLETONSet = true
    GroupLayerManagerListener_SINGLETONValue = value

# Java field initializers run after the base initializer
proc initFieldsGroupLayerManagerListener(this: GroupLayerManagerListener) =
    this.logUtil = LogUtil.getInstance()
    this.list = newBasicArrayListD()
    discard

proc getInstance*(t: typedesc[GroupLayerManagerListener]): GroupLayerManagerListener {.discardable.} =
        return GroupLayerManagerListener.SINGLETON

proc initGroupLayerManagerListener*(this: GroupLayerManagerListener) =
        initLayerManagerEventListener(this)
        this.initFieldsGroupLayerManagerListener()
        LayerManagerEventHandler.getInstance().addListener(this)

proc newGroupLayerManagerListener*(): GroupLayerManagerListener =
    result = GroupLayerManagerListener()
    initGroupLayerManagerListener(result)

method clear*(this: GroupLayerManagerListener) {.base.} =
        var groupList: BasicArrayList = nil
        var size: int32 = this.list.size()
        block:
            var index: int32 = size -% 1
            while index >= 0:
                defer: index = index -% 1
                groupList = BasicArrayList(JObject(this.list.objectArray[index]))
                groupList.clear()

method getGroupSizeFromInterface*(this: GroupLayerManagerListener, groupInterfaceCompositeInterface: GroupInterfaceCompositeInterface): int32 {.base, discardable.} =
        let groupInterfaceArray: JArray[Group] = groupInterfaceCompositeInterface.getGroupInterface()
        return this.getGroupSize(groupInterfaceArray[0])

method getGroupSize*(this: GroupLayerManagerListener, groupInterface: Group): int32 {.base, discardable.} =
        let id: int32 = int32(groupInterface.getGroupId())
        return this.getGroupSizeById(id)

method getList*(this: GroupLayerManagerListener, groupInterface: Group): BasicArrayList {.base, discardable.} =
        let id: int32 = int32(groupInterface.getGroupId())
        return this.getListById(id)

method getListById*(this: GroupLayerManagerListener, groupId: int32): BasicArrayList {.base, discardable.} =
        let groupList: BasicArrayList = BasicArrayList(JObject(this.list.objectArray[groupId]))
        return groupList

method getGroupSizeById*(this: GroupLayerManagerListener, groupId: int32): int32 {.base, discardable.} =
        let groupList: BasicArrayList = BasicArrayList(JObject(this.list.objectArray[groupId]))
        let size: int32 = groupList.size()
        return size

method areAllOtherGroupsEmpty*(this: GroupLayerManagerListener, groupInterface: Group): bool {.base, discardable.} =
        let id: int32 = int32(groupInterface.getGroupId())
        let size: int32 = this.list.size()
        block:
            var index: int32 = size -% 1
            while index >= 0:
                defer: index = index -% 1
                if id != index:
                    var groupSize: int32 = this.getGroupSizeById(index)
                    if groupSize != 0:
                        this.logUtil.putF(newStringMaker().append("Group Size: ").appendint(groupSize).toString(), this, "areAllOtherGroupsEmpty")
                        return false
        return true

method isIdInList*(this: GroupLayerManagerListener, id: int32, excludeGroupList: BasicArrayList): bool {.base, discardable.} =
        let size: int32 = excludeGroupList.size()
        var groupInterfaceArray: JArray[Group] = nil
        var groupInterface: Group = nil
        var groupId: int32 = 0
        block:
            var index: int32 = size -% 1
            while index >= 0:
                defer: index = index -% 1
                groupInterfaceArray = JArray[Group](excludeGroupList.objectArray[index])
                let size2: int32 = groupInterfaceArray.length
                block:
                    var index2: int32 = 0
                    while index2 < size2:
                        defer: index2 = index2 +% 1
                        groupInterface = groupInterfaceArray[index2]
                        groupId = int32(groupInterface.getGroupId())
                        if groupId == id:
                            return true
        return false

method areAllOtherGroupsLessThan*(this: GroupLayerManagerListener, excludeGroupList: BasicArrayList, maxSize: int32): bool {.base, discardable.} =
        let size: int32 = this.list.size()
        block:
            var index: int32 = size -% 1
            while index >= 0:
                defer: index = index -% 1
                if (not this.isIdInList(index, excludeGroupList)):
                    var groupSize: int32 = this.getGroupSizeById(index)
                    if groupSize >= maxSize:
                        return false
        return true

method init*(this: GroupLayerManagerListener, total: int32) {.base.} =
        while this.list.size() <= total +% 1:
            this.list.add(newBasicArrayListD())

method onEvent*(this: GroupLayerManagerListener, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onCreateLayerManagerEvent*(this: GroupLayerManagerListener, layerManagerEvent: LayerManagerEvent) =
        let layerInterface: AllBinaryLayer = layerManagerEvent.getLayerInterface()
        let groupInterfaceArray: JArray[Group] = layerInterface.getGroupInterface()
        let size: int32 = groupInterfaceArray.length
        var id: int32 = 0
        var groupList: BasicArrayList = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                id = int32(groupInterfaceArray[index].getGroupId())
                groupList = BasicArrayList(JObject(this.list.objectArray[id]))
                if (jIsNil(groupList)):
                    this.logUtil.putF(newStringMaker().append("id: ").appendint(id).toString(), this, "onCreateLayerManagerEvent")
                if (not groupList.contains(layerInterface)):
                    groupList.add(layerInterface)
                else:
                    discard

method onDeleteLayerManagerEvent*(this: GroupLayerManagerListener, layerManagerEvent: LayerManagerEvent) =
        let layerInterface: AllBinaryLayer = layerManagerEvent.getLayerInterface()
        let groupInterfaceArray: JArray[Group] = layerInterface.getGroupInterface()
        let size: int32 = groupInterfaceArray.length
        var id: int32 = 0
        var groupList: BasicArrayList = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                id = int32(groupInterfaceArray[index].getGroupId())
                groupList = BasicArrayList(JObject(this.list.objectArray[id]))
                groupList.remove(layerInterface)

method log*(this: GroupLayerManagerListener) {.base.} =
        let stringBuffer: StringMaker = newStringMaker()
        let GROUP: string = "Group: "
        let SPACE: string = CommonSeps.getInstance().SPACE
        let TOTAL_LABEL: string = CommonLabels.getInstance().TOTAL_LABEL
        var size: int32 = this.list.size()
        block:
            var index: int32 = size -% 1
            while index >= 0:
                defer: index = index -% 1
                let groupList: BasicArrayList = BasicArrayList(JObject(this.list.objectArray[index]))
                stringBuffer.append(GROUP)
                stringBuffer.appendint(index)
                stringBuffer.append(SPACE)
                stringBuffer.append(TOTAL_LABEL)
                stringBuffer.appendint(groupList.size())
                stringBuffer.append(SPACE)
        this.logUtil.putF(stringBuffer.toString(), this, "log")

when declared(newGroupLayerManagerListenerHook0):
    newGroupLayerManagerListenerHook0 = proc (): LayerManagerEventListener = newGroupLayerManagerListener()

