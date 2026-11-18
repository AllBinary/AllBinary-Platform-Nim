# Generated Code Do Not Modify
# package org.bouncycastle.jce.provider

{.warning[UnusedImport]: off.}
import allbinary_java
import java/security/Provider as ProviderModule
export ProviderModule

type
    BouncyCastleProvider* = ref object of Provider

proc newBouncyCastleProvider*(): BouncyCastleProvider
proc initBouncyCastleProvider*(this: BouncyCastleProvider)
method setParameter*(this: BouncyCastleProvider, parameterName: string, parameter: JObject) {.base.}

var BouncyCastleProvider_infoValue: string
var BouncyCastleProvider_infoSet = false
proc info*(t: typedesc[BouncyCastleProvider]): string =
    if not BouncyCastleProvider_infoSet:
        BouncyCastleProvider_infoSet = true
        BouncyCastleProvider_infoValue = "BouncyCastle Security Provider v1.41"
    BouncyCastleProvider_infoValue
proc `info=`*(t: typedesc[BouncyCastleProvider], value: string) =
    BouncyCastleProvider_infoSet = true
    BouncyCastleProvider_infoValue = value
var BouncyCastleProvider_PROVIDER_NAMEValue: string
var BouncyCastleProvider_PROVIDER_NAMESet = false
proc PROVIDER_NAME*(t: typedesc[BouncyCastleProvider]): string =
    if not BouncyCastleProvider_PROVIDER_NAMESet:
        BouncyCastleProvider_PROVIDER_NAMESet = true
        BouncyCastleProvider_PROVIDER_NAMEValue = "BC"
    BouncyCastleProvider_PROVIDER_NAMEValue
proc `PROVIDER_NAME=`*(t: typedesc[BouncyCastleProvider], value: string) =
    BouncyCastleProvider_PROVIDER_NAMESet = true
    BouncyCastleProvider_PROVIDER_NAMEValue = value

proc initBouncyCastleProvider*(this: BouncyCastleProvider) =
        initProvider(this, BouncyCastleProvider.PROVIDER_NAME, 1.41, BouncyCastleProvider.info)

proc newBouncyCastleProvider*(): BouncyCastleProvider =
    result = BouncyCastleProvider()
    initBouncyCastleProvider(result)

method setParameter*(this: BouncyCastleProvider, parameterName: string, parameter: JObject) {.base.} =
        discard

when declared(newBouncyCastleProviderHook0):
    newBouncyCastleProviderHook0 = proc (): Provider = newBouncyCastleProvider()

