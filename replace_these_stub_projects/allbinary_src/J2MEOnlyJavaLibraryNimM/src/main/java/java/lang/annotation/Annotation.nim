# Generated Code Do Not Modify
# package java.lang.annotation

{.warning[UnusedImport]: off.}
import allbinary_java

type
    Annotation* = ref object of JObject


method annotationType*(this: Annotation): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "annotationType")

