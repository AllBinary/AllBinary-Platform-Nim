# Generated Code Do Not Modify
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/graphics/form/CustomScreen as CustomScreenModule
export CustomScreenModule

type
    ABCustomForm* = ref object of CustomScreen
        logUtil*: LogUtil
        commonStrings*: CommonStrings

proc newABCustomForm*(title: string, items: JArray[ABCustomItem], backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABCustomForm
proc initABCustomForm*(this: ABCustomForm, title: string, items: JArray[ABCustomItem], backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method getAllitems*(this: ABCustomForm): JArray[ABCustomItem] {.base, discardable.}
method size*(this: ABCustomForm): int32 {.base, discardable.}
method setSelectedIndex*(this: ABCustomForm, index: int32) {.base.}
method getSelectedIndex*(this: ABCustomForm): int32 {.base, discardable.}
method deleteAll*(this: ABCustomForm) {.base.}
method delete*(this: ABCustomForm, itemNum: int32) {.base.}
method append*(this: ABCustomForm, item: ABCustomItem): int32 {.base, discardable.}
method insert*(this: ABCustomForm, itemNum: int32, item: ABCustomItem) {.base.}
method set*(this: ABCustomForm, itemNum: int32, item: ABCustomItem) {.base.}
method get*(this: ABCustomForm, itemNum: int32): ABCustomItem {.base, discardable.}
method getWidth*(this: ABCustomForm): int32 {.base, discardable.}
method paint*(this: ABCustomForm, graphics: Graphics) {.base.}
method getTitle*(this: ABCustomForm): string {.base, discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsABCustomForm(this: ABCustomForm) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    discard

proc initABCustomForm*(this: ABCustomForm, title: string, items: JArray[ABCustomItem], backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initCustomScreen(this)
        this.initFieldsABCustomForm()
        discard

proc newABCustomForm*(title: string, items: JArray[ABCustomItem], backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABCustomForm =
    result = ABCustomForm()
    initABCustomForm(result, title, items, backgroundBasicColor, foregroundBasicColor)

method getAllitems*(this: ABCustomForm): JArray[ABCustomItem] {.base, discardable.} =
        return newJArray[ABCustomItem](0, default(ABCustomItem))

method size*(this: ABCustomForm): int32 {.base, discardable.} =
        return 0

method setSelectedIndex*(this: ABCustomForm, index: int32) {.base.} =
        discard

method getSelectedIndex*(this: ABCustomForm): int32 {.base, discardable.} =
        return 0

method deleteAll*(this: ABCustomForm) {.base.} =
        discard

method delete*(this: ABCustomForm, itemNum: int32) {.base.} =
        discard

method append*(this: ABCustomForm, item: ABCustomItem): int32 {.base, discardable.} =
        return -1

method insert*(this: ABCustomForm, itemNum: int32, item: ABCustomItem) {.base.} =
        discard

method set*(this: ABCustomForm, itemNum: int32, item: ABCustomItem) {.base.} =
        discard

method get*(this: ABCustomForm, itemNum: int32): ABCustomItem {.base, discardable.} =
        return ABCustomItem.getNullInstance()

method getWidth*(this: ABCustomForm): int32 {.base, discardable.} =
        raise newJException("RuntimeException", "")

method paint*(this: ABCustomForm, graphics: Graphics) {.base.} =
        discard

method getTitle*(this: ABCustomForm): string {.base, discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

when declared(newABCustomFormHook4):
    newABCustomFormHook4 = proc (title: string, items: JArray[ABCustomItem], backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CustomScreen = newABCustomForm(title, items, backgroundBasicColor, foregroundBasicColor)

