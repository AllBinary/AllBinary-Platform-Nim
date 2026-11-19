# Generated Code Do Not Modify
# package org.allbinary.configuration

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/feature/Feature as FeatureModule
export FeatureModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    ApplicationConfiguration* = ref object of JObject
        logUtil*: LogUtil
        fullscreen*: bool
        showTitleBar*: bool
        progressBarView*: bool

proc newApplicationConfiguration*(): ApplicationConfiguration
proc initApplicationConfiguration*(this: ApplicationConfiguration)
proc getInstance*(t: typedesc[ApplicationConfiguration]): ApplicationConfiguration {.discardable.}
method read*(this: ApplicationConfiguration) {.base.}
method write*(this: ApplicationConfiguration) {.base.}
method update*(this: ApplicationConfiguration, gameFeature: Feature) {.base.}
method setFullscreen*(this: ApplicationConfiguration, fullscreen: bool) {.base.}
method isFullscreen*(this: ApplicationConfiguration): bool {.base, discardable.}
method setShowTitleBar*(this: ApplicationConfiguration, showTitleBar: bool) {.base.}
method isShowTitleBar*(this: ApplicationConfiguration): bool {.base, discardable.}
method setProgressBarView*(this: ApplicationConfiguration, progressBarView: bool) {.base.}
method isProgressBarView*(this: ApplicationConfiguration): bool {.base, discardable.}
method toString*(this: ApplicationConfiguration): string {.discardable.}
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/MainFeatureFactory as MainFeatureFactoryModule
export MainFeatureFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var ApplicationConfiguration_instanceValue: JObject
var ApplicationConfiguration_instanceSet = false
proc instance*(t: typedesc[ApplicationConfiguration]): JObject =
    if not ApplicationConfiguration_instanceSet:
        ApplicationConfiguration_instanceSet = true
        ApplicationConfiguration_instanceValue = NullUtil.getInstance().NULL_OBJECT
    ApplicationConfiguration_instanceValue
proc `instance=`*(t: typedesc[ApplicationConfiguration], value: JObject) =
    ApplicationConfiguration_instanceSet = true
    ApplicationConfiguration_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsApplicationConfiguration(this: ApplicationConfiguration) =
    this.logUtil = LogUtil.getInstance()
    this.fullscreen = true
    this.showTitleBar = false
    this.progressBarView = false
    discard

proc getInstance*(t: typedesc[ApplicationConfiguration]): ApplicationConfiguration {.discardable.} =
        if ApplicationConfiguration.instance == NullUtil.getInstance().NULL_OBJECT:
            ApplicationConfiguration.instance = newApplicationConfiguration()
        return ApplicationConfiguration(JObject(ApplicationConfiguration.instance))

proc initApplicationConfiguration*(this: ApplicationConfiguration) =
        this.initFieldsApplicationConfiguration()
        try:
            this.read()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)

proc newApplicationConfiguration*(): ApplicationConfiguration =
    result = ApplicationConfiguration()
    initApplicationConfiguration(result)

method read*(this: ApplicationConfiguration) {.base.} =
        this.setFullscreen(true)
        this.setProgressBarView(false)
        this.setShowTitleBar(false)
        this.logUtil.putF(jstr("Read Configuration: ") & jstr(this.toString()), this, "read")

method write*(this: ApplicationConfiguration) {.base.} =
        discard

method update*(this: ApplicationConfiguration, gameFeature: Feature) {.base.} =
        if (jSame(gameFeature, MainFeatureFactory.getInstance().FULL_SCREEN)):
            let features: Features = Features.getInstance()
            if features.isFeature(gameFeature):
                if (not this.isFullscreen()):
                    this.setFullscreen(true)
                    this.write()
            else:
                if this.isFullscreen():
                    this.setFullscreen(false)
                    this.write()

method setFullscreen*(this: ApplicationConfiguration, fullscreen: bool) {.base.} =
        this.fullscreen = fullscreen

method isFullscreen*(this: ApplicationConfiguration): bool {.base, discardable.} =
        return this.fullscreen

method setShowTitleBar*(this: ApplicationConfiguration, showTitleBar: bool) {.base.} =
        this.showTitleBar = showTitleBar

method isShowTitleBar*(this: ApplicationConfiguration): bool {.base, discardable.} =
        return this.showTitleBar

method setProgressBarView*(this: ApplicationConfiguration, progressBarView: bool) {.base.} =
        this.progressBarView = progressBarView

method isProgressBarView*(this: ApplicationConfiguration): bool {.base, discardable.} =
        return this.progressBarView

method toString*(this: ApplicationConfiguration): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("isFullscreen: ")
        stringBuffer.appendboolean(this.isFullscreen())
        stringBuffer.append(" isProgressBarView: ")
        stringBuffer.appendboolean(this.isProgressBarView())
        stringBuffer.append(" isShowTitleBar: ")
        stringBuffer.appendboolean(this.isShowTitleBar())
        return stringBuffer.toString()

