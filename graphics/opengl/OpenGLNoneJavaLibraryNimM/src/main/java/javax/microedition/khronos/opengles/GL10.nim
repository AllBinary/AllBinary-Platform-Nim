# Generated Code Do Not Modify
# package javax.microedition.khronos.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import java/nio/Buffer as BufferModule
export BufferModule
import java/nio/FloatBuffer as FloatBufferModule
export FloatBufferModule
import java/nio/IntBuffer as IntBufferModule
export IntBufferModule
import javax/microedition/khronos/opengles/GL as GLModule
export GLModule

type
    GL10* = ref object of GL

var GL10_GL_ADDValue: int32
var GL10_GL_ADDSet = false
proc GL_ADD*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ADDSet:
        GL10_GL_ADDSet = true
        GL10_GL_ADDValue = 260
    GL10_GL_ADDValue
var GL10_GL_ALIASED_LINE_WIDTH_RANGEValue: int32
var GL10_GL_ALIASED_LINE_WIDTH_RANGESet = false
proc GL_ALIASED_LINE_WIDTH_RANGE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ALIASED_LINE_WIDTH_RANGESet:
        GL10_GL_ALIASED_LINE_WIDTH_RANGESet = true
        GL10_GL_ALIASED_LINE_WIDTH_RANGEValue = 33902
    GL10_GL_ALIASED_LINE_WIDTH_RANGEValue
var GL10_GL_ALIASED_POINT_SIZE_RANGEValue: int32
var GL10_GL_ALIASED_POINT_SIZE_RANGESet = false
proc GL_ALIASED_POINT_SIZE_RANGE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ALIASED_POINT_SIZE_RANGESet:
        GL10_GL_ALIASED_POINT_SIZE_RANGESet = true
        GL10_GL_ALIASED_POINT_SIZE_RANGEValue = 33901
    GL10_GL_ALIASED_POINT_SIZE_RANGEValue
var GL10_GL_ALPHAValue: int32
var GL10_GL_ALPHASet = false
proc GL_ALPHA*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ALPHASet:
        GL10_GL_ALPHASet = true
        GL10_GL_ALPHAValue = 6406
    GL10_GL_ALPHAValue
var GL10_GL_ALPHA_BITSValue: int32
var GL10_GL_ALPHA_BITSSet = false
proc GL_ALPHA_BITS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ALPHA_BITSSet:
        GL10_GL_ALPHA_BITSSet = true
        GL10_GL_ALPHA_BITSValue = 3413
    GL10_GL_ALPHA_BITSValue
var GL10_GL_ALPHA_TESTValue: int32
var GL10_GL_ALPHA_TESTSet = false
proc GL_ALPHA_TEST*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ALPHA_TESTSet:
        GL10_GL_ALPHA_TESTSet = true
        GL10_GL_ALPHA_TESTValue = 3008
    GL10_GL_ALPHA_TESTValue
var GL10_GL_ALWAYSValue: int32
var GL10_GL_ALWAYSSet = false
proc GL_ALWAYS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ALWAYSSet:
        GL10_GL_ALWAYSSet = true
        GL10_GL_ALWAYSValue = 519
    GL10_GL_ALWAYSValue
var GL10_GL_AMBIENTValue: int32
var GL10_GL_AMBIENTSet = false
proc GL_AMBIENT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_AMBIENTSet:
        GL10_GL_AMBIENTSet = true
        GL10_GL_AMBIENTValue = 4608
    GL10_GL_AMBIENTValue
var GL10_GL_AMBIENT_AND_DIFFUSEValue: int32
var GL10_GL_AMBIENT_AND_DIFFUSESet = false
proc GL_AMBIENT_AND_DIFFUSE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_AMBIENT_AND_DIFFUSESet:
        GL10_GL_AMBIENT_AND_DIFFUSESet = true
        GL10_GL_AMBIENT_AND_DIFFUSEValue = 5634
    GL10_GL_AMBIENT_AND_DIFFUSEValue
var GL10_GL_ANDValue: int32
var GL10_GL_ANDSet = false
proc GL_AND*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ANDSet:
        GL10_GL_ANDSet = true
        GL10_GL_ANDValue = 5377
    GL10_GL_ANDValue
var GL10_GL_AND_INVERTEDValue: int32
var GL10_GL_AND_INVERTEDSet = false
proc GL_AND_INVERTED*(t: typedesc[GL10]): int32 =
    if not GL10_GL_AND_INVERTEDSet:
        GL10_GL_AND_INVERTEDSet = true
        GL10_GL_AND_INVERTEDValue = 5380
    GL10_GL_AND_INVERTEDValue
var GL10_GL_AND_REVERSEValue: int32
var GL10_GL_AND_REVERSESet = false
proc GL_AND_REVERSE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_AND_REVERSESet:
        GL10_GL_AND_REVERSESet = true
        GL10_GL_AND_REVERSEValue = 5378
    GL10_GL_AND_REVERSEValue
var GL10_GL_BACKValue: int32
var GL10_GL_BACKSet = false
proc GL_BACK*(t: typedesc[GL10]): int32 =
    if not GL10_GL_BACKSet:
        GL10_GL_BACKSet = true
        GL10_GL_BACKValue = 1029
    GL10_GL_BACKValue
var GL10_GL_BLENDValue: int32
var GL10_GL_BLENDSet = false
proc GL_BLEND*(t: typedesc[GL10]): int32 =
    if not GL10_GL_BLENDSet:
        GL10_GL_BLENDSet = true
        GL10_GL_BLENDValue = 3042
    GL10_GL_BLENDValue
var GL10_GL_BLUE_BITSValue: int32
var GL10_GL_BLUE_BITSSet = false
proc GL_BLUE_BITS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_BLUE_BITSSet:
        GL10_GL_BLUE_BITSSet = true
        GL10_GL_BLUE_BITSValue = 3412
    GL10_GL_BLUE_BITSValue
var GL10_GL_BYTEValue: int32
var GL10_GL_BYTESet = false
proc GL_BYTE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_BYTESet:
        GL10_GL_BYTESet = true
        GL10_GL_BYTEValue = 5120
    GL10_GL_BYTEValue
var GL10_GL_CCWValue: int32
var GL10_GL_CCWSet = false
proc GL_CCW*(t: typedesc[GL10]): int32 =
    if not GL10_GL_CCWSet:
        GL10_GL_CCWSet = true
        GL10_GL_CCWValue = 2305
    GL10_GL_CCWValue
var GL10_GL_CLAMP_TO_EDGEValue: int32
var GL10_GL_CLAMP_TO_EDGESet = false
proc GL_CLAMP_TO_EDGE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_CLAMP_TO_EDGESet:
        GL10_GL_CLAMP_TO_EDGESet = true
        GL10_GL_CLAMP_TO_EDGEValue = 33071
    GL10_GL_CLAMP_TO_EDGEValue
var GL10_GL_CLEARValue: int32
var GL10_GL_CLEARSet = false
proc GL_CLEAR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_CLEARSet:
        GL10_GL_CLEARSet = true
        GL10_GL_CLEARValue = 5376
    GL10_GL_CLEARValue
var GL10_GL_COLOR_ARRAYValue: int32
var GL10_GL_COLOR_ARRAYSet = false
proc GL_COLOR_ARRAY*(t: typedesc[GL10]): int32 =
    if not GL10_GL_COLOR_ARRAYSet:
        GL10_GL_COLOR_ARRAYSet = true
        GL10_GL_COLOR_ARRAYValue = 32886
    GL10_GL_COLOR_ARRAYValue
var GL10_GL_COLOR_BUFFER_BITValue: int32
var GL10_GL_COLOR_BUFFER_BITSet = false
proc GL_COLOR_BUFFER_BIT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_COLOR_BUFFER_BITSet:
        GL10_GL_COLOR_BUFFER_BITSet = true
        GL10_GL_COLOR_BUFFER_BITValue = 16384
    GL10_GL_COLOR_BUFFER_BITValue
var GL10_GL_COLOR_LOGIC_OPValue: int32
var GL10_GL_COLOR_LOGIC_OPSet = false
proc GL_COLOR_LOGIC_OP*(t: typedesc[GL10]): int32 =
    if not GL10_GL_COLOR_LOGIC_OPSet:
        GL10_GL_COLOR_LOGIC_OPSet = true
        GL10_GL_COLOR_LOGIC_OPValue = 3058
    GL10_GL_COLOR_LOGIC_OPValue
var GL10_GL_COLOR_MATERIALValue: int32
var GL10_GL_COLOR_MATERIALSet = false
proc GL_COLOR_MATERIAL*(t: typedesc[GL10]): int32 =
    if not GL10_GL_COLOR_MATERIALSet:
        GL10_GL_COLOR_MATERIALSet = true
        GL10_GL_COLOR_MATERIALValue = 2903
    GL10_GL_COLOR_MATERIALValue
var GL10_GL_COMPRESSED_TEXTURE_FORMATSValue: int32
var GL10_GL_COMPRESSED_TEXTURE_FORMATSSet = false
proc GL_COMPRESSED_TEXTURE_FORMATS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_COMPRESSED_TEXTURE_FORMATSSet:
        GL10_GL_COMPRESSED_TEXTURE_FORMATSSet = true
        GL10_GL_COMPRESSED_TEXTURE_FORMATSValue = 34467
    GL10_GL_COMPRESSED_TEXTURE_FORMATSValue
var GL10_GL_CONSTANT_ATTENUATIONValue: int32
var GL10_GL_CONSTANT_ATTENUATIONSet = false
proc GL_CONSTANT_ATTENUATION*(t: typedesc[GL10]): int32 =
    if not GL10_GL_CONSTANT_ATTENUATIONSet:
        GL10_GL_CONSTANT_ATTENUATIONSet = true
        GL10_GL_CONSTANT_ATTENUATIONValue = 4615
    GL10_GL_CONSTANT_ATTENUATIONValue
var GL10_GL_COPYValue: int32
var GL10_GL_COPYSet = false
proc GL_COPY*(t: typedesc[GL10]): int32 =
    if not GL10_GL_COPYSet:
        GL10_GL_COPYSet = true
        GL10_GL_COPYValue = 5379
    GL10_GL_COPYValue
var GL10_GL_COPY_INVERTEDValue: int32
var GL10_GL_COPY_INVERTEDSet = false
proc GL_COPY_INVERTED*(t: typedesc[GL10]): int32 =
    if not GL10_GL_COPY_INVERTEDSet:
        GL10_GL_COPY_INVERTEDSet = true
        GL10_GL_COPY_INVERTEDValue = 5388
    GL10_GL_COPY_INVERTEDValue
var GL10_GL_CULL_FACEValue: int32
var GL10_GL_CULL_FACESet = false
proc GL_CULL_FACE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_CULL_FACESet:
        GL10_GL_CULL_FACESet = true
        GL10_GL_CULL_FACEValue = 2884
    GL10_GL_CULL_FACEValue
var GL10_GL_CWValue: int32
var GL10_GL_CWSet = false
proc GL_CW*(t: typedesc[GL10]): int32 =
    if not GL10_GL_CWSet:
        GL10_GL_CWSet = true
        GL10_GL_CWValue = 2304
    GL10_GL_CWValue
var GL10_GL_DECALValue: int32
var GL10_GL_DECALSet = false
proc GL_DECAL*(t: typedesc[GL10]): int32 =
    if not GL10_GL_DECALSet:
        GL10_GL_DECALSet = true
        GL10_GL_DECALValue = 8449
    GL10_GL_DECALValue
var GL10_GL_DECRValue: int32
var GL10_GL_DECRSet = false
proc GL_DECR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_DECRSet:
        GL10_GL_DECRSet = true
        GL10_GL_DECRValue = 7683
    GL10_GL_DECRValue
var GL10_GL_DEPTH_BITSValue: int32
var GL10_GL_DEPTH_BITSSet = false
proc GL_DEPTH_BITS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_DEPTH_BITSSet:
        GL10_GL_DEPTH_BITSSet = true
        GL10_GL_DEPTH_BITSValue = 3414
    GL10_GL_DEPTH_BITSValue
var GL10_GL_DEPTH_BUFFER_BITValue: int32
var GL10_GL_DEPTH_BUFFER_BITSet = false
proc GL_DEPTH_BUFFER_BIT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_DEPTH_BUFFER_BITSet:
        GL10_GL_DEPTH_BUFFER_BITSet = true
        GL10_GL_DEPTH_BUFFER_BITValue = 256
    GL10_GL_DEPTH_BUFFER_BITValue
var GL10_GL_DEPTH_TESTValue: int32
var GL10_GL_DEPTH_TESTSet = false
proc GL_DEPTH_TEST*(t: typedesc[GL10]): int32 =
    if not GL10_GL_DEPTH_TESTSet:
        GL10_GL_DEPTH_TESTSet = true
        GL10_GL_DEPTH_TESTValue = 2929
    GL10_GL_DEPTH_TESTValue
var GL10_GL_DIFFUSEValue: int32
var GL10_GL_DIFFUSESet = false
proc GL_DIFFUSE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_DIFFUSESet:
        GL10_GL_DIFFUSESet = true
        GL10_GL_DIFFUSEValue = 4609
    GL10_GL_DIFFUSEValue
var GL10_GL_DITHERValue: int32
var GL10_GL_DITHERSet = false
proc GL_DITHER*(t: typedesc[GL10]): int32 =
    if not GL10_GL_DITHERSet:
        GL10_GL_DITHERSet = true
        GL10_GL_DITHERValue = 3024
    GL10_GL_DITHERValue
var GL10_GL_DONT_CAREValue: int32
var GL10_GL_DONT_CARESet = false
proc GL_DONT_CARE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_DONT_CARESet:
        GL10_GL_DONT_CARESet = true
        GL10_GL_DONT_CAREValue = 4352
    GL10_GL_DONT_CAREValue
var GL10_GL_DST_ALPHAValue: int32
var GL10_GL_DST_ALPHASet = false
proc GL_DST_ALPHA*(t: typedesc[GL10]): int32 =
    if not GL10_GL_DST_ALPHASet:
        GL10_GL_DST_ALPHASet = true
        GL10_GL_DST_ALPHAValue = 772
    GL10_GL_DST_ALPHAValue
var GL10_GL_DST_COLORValue: int32
var GL10_GL_DST_COLORSet = false
proc GL_DST_COLOR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_DST_COLORSet:
        GL10_GL_DST_COLORSet = true
        GL10_GL_DST_COLORValue = 774
    GL10_GL_DST_COLORValue
var GL10_GL_EMISSIONValue: int32
var GL10_GL_EMISSIONSet = false
proc GL_EMISSION*(t: typedesc[GL10]): int32 =
    if not GL10_GL_EMISSIONSet:
        GL10_GL_EMISSIONSet = true
        GL10_GL_EMISSIONValue = 5632
    GL10_GL_EMISSIONValue
var GL10_GL_EQUALValue: int32
var GL10_GL_EQUALSet = false
proc GL_EQUAL*(t: typedesc[GL10]): int32 =
    if not GL10_GL_EQUALSet:
        GL10_GL_EQUALSet = true
        GL10_GL_EQUALValue = 514
    GL10_GL_EQUALValue
var GL10_GL_EQUIVValue: int32
var GL10_GL_EQUIVSet = false
proc GL_EQUIV*(t: typedesc[GL10]): int32 =
    if not GL10_GL_EQUIVSet:
        GL10_GL_EQUIVSet = true
        GL10_GL_EQUIVValue = 5385
    GL10_GL_EQUIVValue
var GL10_GL_EXPValue: int32
var GL10_GL_EXPSet = false
proc GL_EXP*(t: typedesc[GL10]): int32 =
    if not GL10_GL_EXPSet:
        GL10_GL_EXPSet = true
        GL10_GL_EXPValue = 2048
    GL10_GL_EXPValue
var GL10_GL_EXP2Value: int32
var GL10_GL_EXP2Set = false
proc GL_EXP2*(t: typedesc[GL10]): int32 =
    if not GL10_GL_EXP2Set:
        GL10_GL_EXP2Set = true
        GL10_GL_EXP2Value = 2049
    GL10_GL_EXP2Value
var GL10_GL_EXTENSIONSValue: int32
var GL10_GL_EXTENSIONSSet = false
proc GL_EXTENSIONS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_EXTENSIONSSet:
        GL10_GL_EXTENSIONSSet = true
        GL10_GL_EXTENSIONSValue = 7939
    GL10_GL_EXTENSIONSValue
var GL10_GL_FALSEValue: int32
var GL10_GL_FALSESet = false
proc GL_FALSE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FALSESet:
        GL10_GL_FALSESet = true
        GL10_GL_FALSEValue = 0
    GL10_GL_FALSEValue
var GL10_GL_FASTESTValue: int32
var GL10_GL_FASTESTSet = false
proc GL_FASTEST*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FASTESTSet:
        GL10_GL_FASTESTSet = true
        GL10_GL_FASTESTValue = 4353
    GL10_GL_FASTESTValue
var GL10_GL_FIXEDValue: int32
var GL10_GL_FIXEDSet = false
proc GL_FIXED*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FIXEDSet:
        GL10_GL_FIXEDSet = true
        GL10_GL_FIXEDValue = 5132
    GL10_GL_FIXEDValue
var GL10_GL_FLATValue: int32
var GL10_GL_FLATSet = false
proc GL_FLAT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FLATSet:
        GL10_GL_FLATSet = true
        GL10_GL_FLATValue = 7424
    GL10_GL_FLATValue
var GL10_GL_FLOATValue: int32
var GL10_GL_FLOATSet = false
proc GL_FLOAT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FLOATSet:
        GL10_GL_FLOATSet = true
        GL10_GL_FLOATValue = 5126
    GL10_GL_FLOATValue
var GL10_GL_FOGValue: int32
var GL10_GL_FOGSet = false
proc GL_FOG*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FOGSet:
        GL10_GL_FOGSet = true
        GL10_GL_FOGValue = 2912
    GL10_GL_FOGValue
var GL10_GL_FOG_COLORValue: int32
var GL10_GL_FOG_COLORSet = false
proc GL_FOG_COLOR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FOG_COLORSet:
        GL10_GL_FOG_COLORSet = true
        GL10_GL_FOG_COLORValue = 2918
    GL10_GL_FOG_COLORValue
var GL10_GL_FOG_DENSITYValue: int32
var GL10_GL_FOG_DENSITYSet = false
proc GL_FOG_DENSITY*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FOG_DENSITYSet:
        GL10_GL_FOG_DENSITYSet = true
        GL10_GL_FOG_DENSITYValue = 2914
    GL10_GL_FOG_DENSITYValue
var GL10_GL_FOG_ENDValue: int32
var GL10_GL_FOG_ENDSet = false
proc GL_FOG_END*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FOG_ENDSet:
        GL10_GL_FOG_ENDSet = true
        GL10_GL_FOG_ENDValue = 2916
    GL10_GL_FOG_ENDValue
var GL10_GL_FOG_HINTValue: int32
var GL10_GL_FOG_HINTSet = false
proc GL_FOG_HINT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FOG_HINTSet:
        GL10_GL_FOG_HINTSet = true
        GL10_GL_FOG_HINTValue = 3156
    GL10_GL_FOG_HINTValue
var GL10_GL_FOG_MODEValue: int32
var GL10_GL_FOG_MODESet = false
proc GL_FOG_MODE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FOG_MODESet:
        GL10_GL_FOG_MODESet = true
        GL10_GL_FOG_MODEValue = 2917
    GL10_GL_FOG_MODEValue
var GL10_GL_FOG_STARTValue: int32
var GL10_GL_FOG_STARTSet = false
proc GL_FOG_START*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FOG_STARTSet:
        GL10_GL_FOG_STARTSet = true
        GL10_GL_FOG_STARTValue = 2915
    GL10_GL_FOG_STARTValue
var GL10_GL_FRONTValue: int32
var GL10_GL_FRONTSet = false
proc GL_FRONT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FRONTSet:
        GL10_GL_FRONTSet = true
        GL10_GL_FRONTValue = 1028
    GL10_GL_FRONTValue
var GL10_GL_FRONT_AND_BACKValue: int32
var GL10_GL_FRONT_AND_BACKSet = false
proc GL_FRONT_AND_BACK*(t: typedesc[GL10]): int32 =
    if not GL10_GL_FRONT_AND_BACKSet:
        GL10_GL_FRONT_AND_BACKSet = true
        GL10_GL_FRONT_AND_BACKValue = 1032
    GL10_GL_FRONT_AND_BACKValue
var GL10_GL_GEQUALValue: int32
var GL10_GL_GEQUALSet = false
proc GL_GEQUAL*(t: typedesc[GL10]): int32 =
    if not GL10_GL_GEQUALSet:
        GL10_GL_GEQUALSet = true
        GL10_GL_GEQUALValue = 518
    GL10_GL_GEQUALValue
var GL10_GL_GREATERValue: int32
var GL10_GL_GREATERSet = false
proc GL_GREATER*(t: typedesc[GL10]): int32 =
    if not GL10_GL_GREATERSet:
        GL10_GL_GREATERSet = true
        GL10_GL_GREATERValue = 516
    GL10_GL_GREATERValue
var GL10_GL_GREEN_BITSValue: int32
var GL10_GL_GREEN_BITSSet = false
proc GL_GREEN_BITS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_GREEN_BITSSet:
        GL10_GL_GREEN_BITSSet = true
        GL10_GL_GREEN_BITSValue = 3411
    GL10_GL_GREEN_BITSValue
var GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESValue: int32
var GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESSet = false
proc GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESSet:
        GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESSet = true
        GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESValue = 35739
    GL10_GL_IMPLEMENTATION_COLOR_READ_FORMAT_OESValue
var GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESValue: int32
var GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESSet = false
proc GL_IMPLEMENTATION_COLOR_READ_TYPE_OES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESSet:
        GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESSet = true
        GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESValue = 35738
    GL10_GL_IMPLEMENTATION_COLOR_READ_TYPE_OESValue
var GL10_GL_INCRValue: int32
var GL10_GL_INCRSet = false
proc GL_INCR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_INCRSet:
        GL10_GL_INCRSet = true
        GL10_GL_INCRValue = 7682
    GL10_GL_INCRValue
var GL10_GL_INVALID_ENUMValue: int32
var GL10_GL_INVALID_ENUMSet = false
proc GL_INVALID_ENUM*(t: typedesc[GL10]): int32 =
    if not GL10_GL_INVALID_ENUMSet:
        GL10_GL_INVALID_ENUMSet = true
        GL10_GL_INVALID_ENUMValue = 1280
    GL10_GL_INVALID_ENUMValue
var GL10_GL_INVALID_OPERATIONValue: int32
var GL10_GL_INVALID_OPERATIONSet = false
proc GL_INVALID_OPERATION*(t: typedesc[GL10]): int32 =
    if not GL10_GL_INVALID_OPERATIONSet:
        GL10_GL_INVALID_OPERATIONSet = true
        GL10_GL_INVALID_OPERATIONValue = 1282
    GL10_GL_INVALID_OPERATIONValue
var GL10_GL_INVALID_VALUEValue: int32
var GL10_GL_INVALID_VALUESet = false
proc GL_INVALID_VALUE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_INVALID_VALUESet:
        GL10_GL_INVALID_VALUESet = true
        GL10_GL_INVALID_VALUEValue = 1281
    GL10_GL_INVALID_VALUEValue
var GL10_GL_INVERTValue: int32
var GL10_GL_INVERTSet = false
proc GL_INVERT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_INVERTSet:
        GL10_GL_INVERTSet = true
        GL10_GL_INVERTValue = 5386
    GL10_GL_INVERTValue
var GL10_GL_KEEPValue: int32
var GL10_GL_KEEPSet = false
proc GL_KEEP*(t: typedesc[GL10]): int32 =
    if not GL10_GL_KEEPSet:
        GL10_GL_KEEPSet = true
        GL10_GL_KEEPValue = 7680
    GL10_GL_KEEPValue
var GL10_GL_LEQUALValue: int32
var GL10_GL_LEQUALSet = false
proc GL_LEQUAL*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LEQUALSet:
        GL10_GL_LEQUALSet = true
        GL10_GL_LEQUALValue = 515
    GL10_GL_LEQUALValue
var GL10_GL_LESSValue: int32
var GL10_GL_LESSSet = false
proc GL_LESS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LESSSet:
        GL10_GL_LESSSet = true
        GL10_GL_LESSValue = 513
    GL10_GL_LESSValue
var GL10_GL_LIGHT_MODEL_AMBIENTValue: int32
var GL10_GL_LIGHT_MODEL_AMBIENTSet = false
proc GL_LIGHT_MODEL_AMBIENT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LIGHT_MODEL_AMBIENTSet:
        GL10_GL_LIGHT_MODEL_AMBIENTSet = true
        GL10_GL_LIGHT_MODEL_AMBIENTValue = 2899
    GL10_GL_LIGHT_MODEL_AMBIENTValue
var GL10_GL_LIGHT_MODEL_TWO_SIDEValue: int32
var GL10_GL_LIGHT_MODEL_TWO_SIDESet = false
proc GL_LIGHT_MODEL_TWO_SIDE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LIGHT_MODEL_TWO_SIDESet:
        GL10_GL_LIGHT_MODEL_TWO_SIDESet = true
        GL10_GL_LIGHT_MODEL_TWO_SIDEValue = 2898
    GL10_GL_LIGHT_MODEL_TWO_SIDEValue
var GL10_GL_LIGHT0Value: int32
var GL10_GL_LIGHT0Set = false
proc GL_LIGHT0*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LIGHT0Set:
        GL10_GL_LIGHT0Set = true
        GL10_GL_LIGHT0Value = 16384
    GL10_GL_LIGHT0Value
var GL10_GL_LIGHT1Value: int32
var GL10_GL_LIGHT1Set = false
proc GL_LIGHT1*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LIGHT1Set:
        GL10_GL_LIGHT1Set = true
        GL10_GL_LIGHT1Value = 16385
    GL10_GL_LIGHT1Value
var GL10_GL_LIGHT2Value: int32
var GL10_GL_LIGHT2Set = false
proc GL_LIGHT2*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LIGHT2Set:
        GL10_GL_LIGHT2Set = true
        GL10_GL_LIGHT2Value = 16386
    GL10_GL_LIGHT2Value
var GL10_GL_LIGHT3Value: int32
var GL10_GL_LIGHT3Set = false
proc GL_LIGHT3*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LIGHT3Set:
        GL10_GL_LIGHT3Set = true
        GL10_GL_LIGHT3Value = 16387
    GL10_GL_LIGHT3Value
var GL10_GL_LIGHT4Value: int32
var GL10_GL_LIGHT4Set = false
proc GL_LIGHT4*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LIGHT4Set:
        GL10_GL_LIGHT4Set = true
        GL10_GL_LIGHT4Value = 16388
    GL10_GL_LIGHT4Value
var GL10_GL_LIGHT5Value: int32
var GL10_GL_LIGHT5Set = false
proc GL_LIGHT5*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LIGHT5Set:
        GL10_GL_LIGHT5Set = true
        GL10_GL_LIGHT5Value = 16389
    GL10_GL_LIGHT5Value
var GL10_GL_LIGHT6Value: int32
var GL10_GL_LIGHT6Set = false
proc GL_LIGHT6*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LIGHT6Set:
        GL10_GL_LIGHT6Set = true
        GL10_GL_LIGHT6Value = 16390
    GL10_GL_LIGHT6Value
var GL10_GL_LIGHT7Value: int32
var GL10_GL_LIGHT7Set = false
proc GL_LIGHT7*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LIGHT7Set:
        GL10_GL_LIGHT7Set = true
        GL10_GL_LIGHT7Value = 16391
    GL10_GL_LIGHT7Value
var GL10_GL_LIGHTINGValue: int32
var GL10_GL_LIGHTINGSet = false
proc GL_LIGHTING*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LIGHTINGSet:
        GL10_GL_LIGHTINGSet = true
        GL10_GL_LIGHTINGValue = 2896
    GL10_GL_LIGHTINGValue
var GL10_GL_LINE_LOOPValue: int32
var GL10_GL_LINE_LOOPSet = false
proc GL_LINE_LOOP*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LINE_LOOPSet:
        GL10_GL_LINE_LOOPSet = true
        GL10_GL_LINE_LOOPValue = 2
    GL10_GL_LINE_LOOPValue
var GL10_GL_LINE_SMOOTHValue: int32
var GL10_GL_LINE_SMOOTHSet = false
proc GL_LINE_SMOOTH*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LINE_SMOOTHSet:
        GL10_GL_LINE_SMOOTHSet = true
        GL10_GL_LINE_SMOOTHValue = 2848
    GL10_GL_LINE_SMOOTHValue
var GL10_GL_LINE_SMOOTH_HINTValue: int32
var GL10_GL_LINE_SMOOTH_HINTSet = false
proc GL_LINE_SMOOTH_HINT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LINE_SMOOTH_HINTSet:
        GL10_GL_LINE_SMOOTH_HINTSet = true
        GL10_GL_LINE_SMOOTH_HINTValue = 3154
    GL10_GL_LINE_SMOOTH_HINTValue
var GL10_GL_LINE_STRIPValue: int32
var GL10_GL_LINE_STRIPSet = false
proc GL_LINE_STRIP*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LINE_STRIPSet:
        GL10_GL_LINE_STRIPSet = true
        GL10_GL_LINE_STRIPValue = 3
    GL10_GL_LINE_STRIPValue
var GL10_GL_LINEARValue: int32
var GL10_GL_LINEARSet = false
proc GL_LINEAR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LINEARSet:
        GL10_GL_LINEARSet = true
        GL10_GL_LINEARValue = 9729
    GL10_GL_LINEARValue
var GL10_GL_LINEAR_ATTENUATIONValue: int32
var GL10_GL_LINEAR_ATTENUATIONSet = false
proc GL_LINEAR_ATTENUATION*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LINEAR_ATTENUATIONSet:
        GL10_GL_LINEAR_ATTENUATIONSet = true
        GL10_GL_LINEAR_ATTENUATIONValue = 4616
    GL10_GL_LINEAR_ATTENUATIONValue
var GL10_GL_LINEAR_MIPMAP_LINEARValue: int32
var GL10_GL_LINEAR_MIPMAP_LINEARSet = false
proc GL_LINEAR_MIPMAP_LINEAR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LINEAR_MIPMAP_LINEARSet:
        GL10_GL_LINEAR_MIPMAP_LINEARSet = true
        GL10_GL_LINEAR_MIPMAP_LINEARValue = 9987
    GL10_GL_LINEAR_MIPMAP_LINEARValue
var GL10_GL_LINEAR_MIPMAP_NEARESTValue: int32
var GL10_GL_LINEAR_MIPMAP_NEARESTSet = false
proc GL_LINEAR_MIPMAP_NEAREST*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LINEAR_MIPMAP_NEARESTSet:
        GL10_GL_LINEAR_MIPMAP_NEARESTSet = true
        GL10_GL_LINEAR_MIPMAP_NEARESTValue = 9985
    GL10_GL_LINEAR_MIPMAP_NEARESTValue
var GL10_GL_LINESValue: int32
var GL10_GL_LINESSet = false
proc GL_LINES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LINESSet:
        GL10_GL_LINESSet = true
        GL10_GL_LINESValue = 1
    GL10_GL_LINESValue
var GL10_GL_LUMINANCEValue: int32
var GL10_GL_LUMINANCESet = false
proc GL_LUMINANCE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LUMINANCESet:
        GL10_GL_LUMINANCESet = true
        GL10_GL_LUMINANCEValue = 6409
    GL10_GL_LUMINANCEValue
var GL10_GL_LUMINANCE_ALPHAValue: int32
var GL10_GL_LUMINANCE_ALPHASet = false
proc GL_LUMINANCE_ALPHA*(t: typedesc[GL10]): int32 =
    if not GL10_GL_LUMINANCE_ALPHASet:
        GL10_GL_LUMINANCE_ALPHASet = true
        GL10_GL_LUMINANCE_ALPHAValue = 6410
    GL10_GL_LUMINANCE_ALPHAValue
var GL10_GL_MAX_ELEMENTS_INDICESValue: int32
var GL10_GL_MAX_ELEMENTS_INDICESSet = false
proc GL_MAX_ELEMENTS_INDICES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_MAX_ELEMENTS_INDICESSet:
        GL10_GL_MAX_ELEMENTS_INDICESSet = true
        GL10_GL_MAX_ELEMENTS_INDICESValue = 33001
    GL10_GL_MAX_ELEMENTS_INDICESValue
var GL10_GL_MAX_ELEMENTS_VERTICESValue: int32
var GL10_GL_MAX_ELEMENTS_VERTICESSet = false
proc GL_MAX_ELEMENTS_VERTICES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_MAX_ELEMENTS_VERTICESSet:
        GL10_GL_MAX_ELEMENTS_VERTICESSet = true
        GL10_GL_MAX_ELEMENTS_VERTICESValue = 33000
    GL10_GL_MAX_ELEMENTS_VERTICESValue
var GL10_GL_MAX_LIGHTSValue: int32
var GL10_GL_MAX_LIGHTSSet = false
proc GL_MAX_LIGHTS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_MAX_LIGHTSSet:
        GL10_GL_MAX_LIGHTSSet = true
        GL10_GL_MAX_LIGHTSValue = 3377
    GL10_GL_MAX_LIGHTSValue
var GL10_GL_MAX_MODELVIEW_STACK_DEPTHValue: int32
var GL10_GL_MAX_MODELVIEW_STACK_DEPTHSet = false
proc GL_MAX_MODELVIEW_STACK_DEPTH*(t: typedesc[GL10]): int32 =
    if not GL10_GL_MAX_MODELVIEW_STACK_DEPTHSet:
        GL10_GL_MAX_MODELVIEW_STACK_DEPTHSet = true
        GL10_GL_MAX_MODELVIEW_STACK_DEPTHValue = 3382
    GL10_GL_MAX_MODELVIEW_STACK_DEPTHValue
var GL10_GL_MAX_PROJECTION_STACK_DEPTHValue: int32
var GL10_GL_MAX_PROJECTION_STACK_DEPTHSet = false
proc GL_MAX_PROJECTION_STACK_DEPTH*(t: typedesc[GL10]): int32 =
    if not GL10_GL_MAX_PROJECTION_STACK_DEPTHSet:
        GL10_GL_MAX_PROJECTION_STACK_DEPTHSet = true
        GL10_GL_MAX_PROJECTION_STACK_DEPTHValue = 3384
    GL10_GL_MAX_PROJECTION_STACK_DEPTHValue
var GL10_GL_MAX_TEXTURE_SIZEValue: int32
var GL10_GL_MAX_TEXTURE_SIZESet = false
proc GL_MAX_TEXTURE_SIZE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_MAX_TEXTURE_SIZESet:
        GL10_GL_MAX_TEXTURE_SIZESet = true
        GL10_GL_MAX_TEXTURE_SIZEValue = 3379
    GL10_GL_MAX_TEXTURE_SIZEValue
var GL10_GL_MAX_TEXTURE_STACK_DEPTHValue: int32
var GL10_GL_MAX_TEXTURE_STACK_DEPTHSet = false
proc GL_MAX_TEXTURE_STACK_DEPTH*(t: typedesc[GL10]): int32 =
    if not GL10_GL_MAX_TEXTURE_STACK_DEPTHSet:
        GL10_GL_MAX_TEXTURE_STACK_DEPTHSet = true
        GL10_GL_MAX_TEXTURE_STACK_DEPTHValue = 3385
    GL10_GL_MAX_TEXTURE_STACK_DEPTHValue
var GL10_GL_MAX_TEXTURE_UNITSValue: int32
var GL10_GL_MAX_TEXTURE_UNITSSet = false
proc GL_MAX_TEXTURE_UNITS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_MAX_TEXTURE_UNITSSet:
        GL10_GL_MAX_TEXTURE_UNITSSet = true
        GL10_GL_MAX_TEXTURE_UNITSValue = 34018
    GL10_GL_MAX_TEXTURE_UNITSValue
var GL10_GL_MAX_VIEWPORT_DIMSValue: int32
var GL10_GL_MAX_VIEWPORT_DIMSSet = false
proc GL_MAX_VIEWPORT_DIMS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_MAX_VIEWPORT_DIMSSet:
        GL10_GL_MAX_VIEWPORT_DIMSSet = true
        GL10_GL_MAX_VIEWPORT_DIMSValue = 3386
    GL10_GL_MAX_VIEWPORT_DIMSValue
var GL10_GL_MODELVIEWValue: int32
var GL10_GL_MODELVIEWSet = false
proc GL_MODELVIEW*(t: typedesc[GL10]): int32 =
    if not GL10_GL_MODELVIEWSet:
        GL10_GL_MODELVIEWSet = true
        GL10_GL_MODELVIEWValue = 5888
    GL10_GL_MODELVIEWValue
var GL10_GL_MODULATEValue: int32
var GL10_GL_MODULATESet = false
proc GL_MODULATE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_MODULATESet:
        GL10_GL_MODULATESet = true
        GL10_GL_MODULATEValue = 8448
    GL10_GL_MODULATEValue
var GL10_GL_MULTISAMPLEValue: int32
var GL10_GL_MULTISAMPLESet = false
proc GL_MULTISAMPLE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_MULTISAMPLESet:
        GL10_GL_MULTISAMPLESet = true
        GL10_GL_MULTISAMPLEValue = 32925
    GL10_GL_MULTISAMPLEValue
var GL10_GL_NANDValue: int32
var GL10_GL_NANDSet = false
proc GL_NAND*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NANDSet:
        GL10_GL_NANDSet = true
        GL10_GL_NANDValue = 5390
    GL10_GL_NANDValue
var GL10_GL_NEARESTValue: int32
var GL10_GL_NEARESTSet = false
proc GL_NEAREST*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NEARESTSet:
        GL10_GL_NEARESTSet = true
        GL10_GL_NEARESTValue = 9728
    GL10_GL_NEARESTValue
var GL10_GL_NEAREST_MIPMAP_LINEARValue: int32
var GL10_GL_NEAREST_MIPMAP_LINEARSet = false
proc GL_NEAREST_MIPMAP_LINEAR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NEAREST_MIPMAP_LINEARSet:
        GL10_GL_NEAREST_MIPMAP_LINEARSet = true
        GL10_GL_NEAREST_MIPMAP_LINEARValue = 9986
    GL10_GL_NEAREST_MIPMAP_LINEARValue
var GL10_GL_NEAREST_MIPMAP_NEARESTValue: int32
var GL10_GL_NEAREST_MIPMAP_NEARESTSet = false
proc GL_NEAREST_MIPMAP_NEAREST*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NEAREST_MIPMAP_NEARESTSet:
        GL10_GL_NEAREST_MIPMAP_NEARESTSet = true
        GL10_GL_NEAREST_MIPMAP_NEARESTValue = 9984
    GL10_GL_NEAREST_MIPMAP_NEARESTValue
var GL10_GL_NEVERValue: int32
var GL10_GL_NEVERSet = false
proc GL_NEVER*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NEVERSet:
        GL10_GL_NEVERSet = true
        GL10_GL_NEVERValue = 512
    GL10_GL_NEVERValue
var GL10_GL_NICESTValue: int32
var GL10_GL_NICESTSet = false
proc GL_NICEST*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NICESTSet:
        GL10_GL_NICESTSet = true
        GL10_GL_NICESTValue = 4354
    GL10_GL_NICESTValue
var GL10_GL_NO_ERRORValue: int32
var GL10_GL_NO_ERRORSet = false
proc GL_NO_ERROR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NO_ERRORSet:
        GL10_GL_NO_ERRORSet = true
        GL10_GL_NO_ERRORValue = 0
    GL10_GL_NO_ERRORValue
var GL10_GL_NOOPValue: int32
var GL10_GL_NOOPSet = false
proc GL_NOOP*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NOOPSet:
        GL10_GL_NOOPSet = true
        GL10_GL_NOOPValue = 5381
    GL10_GL_NOOPValue
var GL10_GL_NORValue: int32
var GL10_GL_NORSet = false
proc GL_NOR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NORSet:
        GL10_GL_NORSet = true
        GL10_GL_NORValue = 5384
    GL10_GL_NORValue
var GL10_GL_NORMAL_ARRAYValue: int32
var GL10_GL_NORMAL_ARRAYSet = false
proc GL_NORMAL_ARRAY*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NORMAL_ARRAYSet:
        GL10_GL_NORMAL_ARRAYSet = true
        GL10_GL_NORMAL_ARRAYValue = 32885
    GL10_GL_NORMAL_ARRAYValue
var GL10_GL_NORMALIZEValue: int32
var GL10_GL_NORMALIZESet = false
proc GL_NORMALIZE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NORMALIZESet:
        GL10_GL_NORMALIZESet = true
        GL10_GL_NORMALIZEValue = 2977
    GL10_GL_NORMALIZEValue
var GL10_GL_NOTEQUALValue: int32
var GL10_GL_NOTEQUALSet = false
proc GL_NOTEQUAL*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NOTEQUALSet:
        GL10_GL_NOTEQUALSet = true
        GL10_GL_NOTEQUALValue = 517
    GL10_GL_NOTEQUALValue
var GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSValue: int32
var GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSSet = false
proc GL_NUM_COMPRESSED_TEXTURE_FORMATS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSSet:
        GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSSet = true
        GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSValue = 34466
    GL10_GL_NUM_COMPRESSED_TEXTURE_FORMATSValue
var GL10_GL_ONEValue: int32
var GL10_GL_ONESet = false
proc GL_ONE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ONESet:
        GL10_GL_ONESet = true
        GL10_GL_ONEValue = 1
    GL10_GL_ONEValue
var GL10_GL_ONE_MINUS_DST_ALPHAValue: int32
var GL10_GL_ONE_MINUS_DST_ALPHASet = false
proc GL_ONE_MINUS_DST_ALPHA*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ONE_MINUS_DST_ALPHASet:
        GL10_GL_ONE_MINUS_DST_ALPHASet = true
        GL10_GL_ONE_MINUS_DST_ALPHAValue = 773
    GL10_GL_ONE_MINUS_DST_ALPHAValue
var GL10_GL_ONE_MINUS_DST_COLORValue: int32
var GL10_GL_ONE_MINUS_DST_COLORSet = false
proc GL_ONE_MINUS_DST_COLOR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ONE_MINUS_DST_COLORSet:
        GL10_GL_ONE_MINUS_DST_COLORSet = true
        GL10_GL_ONE_MINUS_DST_COLORValue = 775
    GL10_GL_ONE_MINUS_DST_COLORValue
var GL10_GL_ONE_MINUS_SRC_ALPHAValue: int32
var GL10_GL_ONE_MINUS_SRC_ALPHASet = false
proc GL_ONE_MINUS_SRC_ALPHA*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ONE_MINUS_SRC_ALPHASet:
        GL10_GL_ONE_MINUS_SRC_ALPHASet = true
        GL10_GL_ONE_MINUS_SRC_ALPHAValue = 771
    GL10_GL_ONE_MINUS_SRC_ALPHAValue
var GL10_GL_ONE_MINUS_SRC_COLORValue: int32
var GL10_GL_ONE_MINUS_SRC_COLORSet = false
proc GL_ONE_MINUS_SRC_COLOR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ONE_MINUS_SRC_COLORSet:
        GL10_GL_ONE_MINUS_SRC_COLORSet = true
        GL10_GL_ONE_MINUS_SRC_COLORValue = 769
    GL10_GL_ONE_MINUS_SRC_COLORValue
var GL10_GL_ORValue: int32
var GL10_GL_ORSet = false
proc GL_OR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ORSet:
        GL10_GL_ORSet = true
        GL10_GL_ORValue = 5383
    GL10_GL_ORValue
var GL10_GL_OR_INVERTEDValue: int32
var GL10_GL_OR_INVERTEDSet = false
proc GL_OR_INVERTED*(t: typedesc[GL10]): int32 =
    if not GL10_GL_OR_INVERTEDSet:
        GL10_GL_OR_INVERTEDSet = true
        GL10_GL_OR_INVERTEDValue = 5389
    GL10_GL_OR_INVERTEDValue
var GL10_GL_OR_REVERSEValue: int32
var GL10_GL_OR_REVERSESet = false
proc GL_OR_REVERSE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_OR_REVERSESet:
        GL10_GL_OR_REVERSESet = true
        GL10_GL_OR_REVERSEValue = 5387
    GL10_GL_OR_REVERSEValue
var GL10_GL_OUT_OF_MEMORYValue: int32
var GL10_GL_OUT_OF_MEMORYSet = false
proc GL_OUT_OF_MEMORY*(t: typedesc[GL10]): int32 =
    if not GL10_GL_OUT_OF_MEMORYSet:
        GL10_GL_OUT_OF_MEMORYSet = true
        GL10_GL_OUT_OF_MEMORYValue = 1285
    GL10_GL_OUT_OF_MEMORYValue
var GL10_GL_PACK_ALIGNMENTValue: int32
var GL10_GL_PACK_ALIGNMENTSet = false
proc GL_PACK_ALIGNMENT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PACK_ALIGNMENTSet:
        GL10_GL_PACK_ALIGNMENTSet = true
        GL10_GL_PACK_ALIGNMENTValue = 3333
    GL10_GL_PACK_ALIGNMENTValue
var GL10_GL_PALETTE4_R5_G6_B5_OESValue: int32
var GL10_GL_PALETTE4_R5_G6_B5_OESSet = false
proc GL_PALETTE4_R5_G6_B5_OES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PALETTE4_R5_G6_B5_OESSet:
        GL10_GL_PALETTE4_R5_G6_B5_OESSet = true
        GL10_GL_PALETTE4_R5_G6_B5_OESValue = 35730
    GL10_GL_PALETTE4_R5_G6_B5_OESValue
var GL10_GL_PALETTE4_RGB5_A1_OESValue: int32
var GL10_GL_PALETTE4_RGB5_A1_OESSet = false
proc GL_PALETTE4_RGB5_A1_OES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PALETTE4_RGB5_A1_OESSet:
        GL10_GL_PALETTE4_RGB5_A1_OESSet = true
        GL10_GL_PALETTE4_RGB5_A1_OESValue = 35732
    GL10_GL_PALETTE4_RGB5_A1_OESValue
var GL10_GL_PALETTE4_RGB8_OESValue: int32
var GL10_GL_PALETTE4_RGB8_OESSet = false
proc GL_PALETTE4_RGB8_OES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PALETTE4_RGB8_OESSet:
        GL10_GL_PALETTE4_RGB8_OESSet = true
        GL10_GL_PALETTE4_RGB8_OESValue = 35728
    GL10_GL_PALETTE4_RGB8_OESValue
var GL10_GL_PALETTE4_RGBA4_OESValue: int32
var GL10_GL_PALETTE4_RGBA4_OESSet = false
proc GL_PALETTE4_RGBA4_OES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PALETTE4_RGBA4_OESSet:
        GL10_GL_PALETTE4_RGBA4_OESSet = true
        GL10_GL_PALETTE4_RGBA4_OESValue = 35731
    GL10_GL_PALETTE4_RGBA4_OESValue
var GL10_GL_PALETTE4_RGBA8_OESValue: int32
var GL10_GL_PALETTE4_RGBA8_OESSet = false
proc GL_PALETTE4_RGBA8_OES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PALETTE4_RGBA8_OESSet:
        GL10_GL_PALETTE4_RGBA8_OESSet = true
        GL10_GL_PALETTE4_RGBA8_OESValue = 35729
    GL10_GL_PALETTE4_RGBA8_OESValue
var GL10_GL_PALETTE8_R5_G6_B5_OESValue: int32
var GL10_GL_PALETTE8_R5_G6_B5_OESSet = false
proc GL_PALETTE8_R5_G6_B5_OES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PALETTE8_R5_G6_B5_OESSet:
        GL10_GL_PALETTE8_R5_G6_B5_OESSet = true
        GL10_GL_PALETTE8_R5_G6_B5_OESValue = 35735
    GL10_GL_PALETTE8_R5_G6_B5_OESValue
var GL10_GL_PALETTE8_RGB5_A1_OESValue: int32
var GL10_GL_PALETTE8_RGB5_A1_OESSet = false
proc GL_PALETTE8_RGB5_A1_OES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PALETTE8_RGB5_A1_OESSet:
        GL10_GL_PALETTE8_RGB5_A1_OESSet = true
        GL10_GL_PALETTE8_RGB5_A1_OESValue = 35737
    GL10_GL_PALETTE8_RGB5_A1_OESValue
var GL10_GL_PALETTE8_RGB8_OESValue: int32
var GL10_GL_PALETTE8_RGB8_OESSet = false
proc GL_PALETTE8_RGB8_OES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PALETTE8_RGB8_OESSet:
        GL10_GL_PALETTE8_RGB8_OESSet = true
        GL10_GL_PALETTE8_RGB8_OESValue = 35733
    GL10_GL_PALETTE8_RGB8_OESValue
var GL10_GL_PALETTE8_RGBA4_OESValue: int32
var GL10_GL_PALETTE8_RGBA4_OESSet = false
proc GL_PALETTE8_RGBA4_OES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PALETTE8_RGBA4_OESSet:
        GL10_GL_PALETTE8_RGBA4_OESSet = true
        GL10_GL_PALETTE8_RGBA4_OESValue = 35736
    GL10_GL_PALETTE8_RGBA4_OESValue
var GL10_GL_PALETTE8_RGBA8_OESValue: int32
var GL10_GL_PALETTE8_RGBA8_OESSet = false
proc GL_PALETTE8_RGBA8_OES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PALETTE8_RGBA8_OESSet:
        GL10_GL_PALETTE8_RGBA8_OESSet = true
        GL10_GL_PALETTE8_RGBA8_OESValue = 35734
    GL10_GL_PALETTE8_RGBA8_OESValue
var GL10_GL_PERSPECTIVE_CORRECTION_HINTValue: int32
var GL10_GL_PERSPECTIVE_CORRECTION_HINTSet = false
proc GL_PERSPECTIVE_CORRECTION_HINT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PERSPECTIVE_CORRECTION_HINTSet:
        GL10_GL_PERSPECTIVE_CORRECTION_HINTSet = true
        GL10_GL_PERSPECTIVE_CORRECTION_HINTValue = 3152
    GL10_GL_PERSPECTIVE_CORRECTION_HINTValue
var GL10_GL_POINT_SMOOTHValue: int32
var GL10_GL_POINT_SMOOTHSet = false
proc GL_POINT_SMOOTH*(t: typedesc[GL10]): int32 =
    if not GL10_GL_POINT_SMOOTHSet:
        GL10_GL_POINT_SMOOTHSet = true
        GL10_GL_POINT_SMOOTHValue = 2832
    GL10_GL_POINT_SMOOTHValue
var GL10_GL_POINT_SMOOTH_HINTValue: int32
var GL10_GL_POINT_SMOOTH_HINTSet = false
proc GL_POINT_SMOOTH_HINT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_POINT_SMOOTH_HINTSet:
        GL10_GL_POINT_SMOOTH_HINTSet = true
        GL10_GL_POINT_SMOOTH_HINTValue = 3153
    GL10_GL_POINT_SMOOTH_HINTValue
var GL10_GL_POINTSValue: int32
var GL10_GL_POINTSSet = false
proc GL_POINTS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_POINTSSet:
        GL10_GL_POINTSSet = true
        GL10_GL_POINTSValue = 0
    GL10_GL_POINTSValue
var GL10_GL_POINT_FADE_THRESHOLD_SIZEValue: int32
var GL10_GL_POINT_FADE_THRESHOLD_SIZESet = false
proc GL_POINT_FADE_THRESHOLD_SIZE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_POINT_FADE_THRESHOLD_SIZESet:
        GL10_GL_POINT_FADE_THRESHOLD_SIZESet = true
        GL10_GL_POINT_FADE_THRESHOLD_SIZEValue = 33064
    GL10_GL_POINT_FADE_THRESHOLD_SIZEValue
var GL10_GL_POINT_SIZEValue: int32
var GL10_GL_POINT_SIZESet = false
proc GL_POINT_SIZE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_POINT_SIZESet:
        GL10_GL_POINT_SIZESet = true
        GL10_GL_POINT_SIZEValue = 2833
    GL10_GL_POINT_SIZEValue
var GL10_GL_POLYGON_OFFSET_FILLValue: int32
var GL10_GL_POLYGON_OFFSET_FILLSet = false
proc GL_POLYGON_OFFSET_FILL*(t: typedesc[GL10]): int32 =
    if not GL10_GL_POLYGON_OFFSET_FILLSet:
        GL10_GL_POLYGON_OFFSET_FILLSet = true
        GL10_GL_POLYGON_OFFSET_FILLValue = 32823
    GL10_GL_POLYGON_OFFSET_FILLValue
var GL10_GL_POLYGON_SMOOTH_HINTValue: int32
var GL10_GL_POLYGON_SMOOTH_HINTSet = false
proc GL_POLYGON_SMOOTH_HINT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_POLYGON_SMOOTH_HINTSet:
        GL10_GL_POLYGON_SMOOTH_HINTSet = true
        GL10_GL_POLYGON_SMOOTH_HINTValue = 3155
    GL10_GL_POLYGON_SMOOTH_HINTValue
var GL10_GL_POSITIONValue: int32
var GL10_GL_POSITIONSet = false
proc GL_POSITION*(t: typedesc[GL10]): int32 =
    if not GL10_GL_POSITIONSet:
        GL10_GL_POSITIONSet = true
        GL10_GL_POSITIONValue = 4611
    GL10_GL_POSITIONValue
var GL10_GL_PROJECTIONValue: int32
var GL10_GL_PROJECTIONSet = false
proc GL_PROJECTION*(t: typedesc[GL10]): int32 =
    if not GL10_GL_PROJECTIONSet:
        GL10_GL_PROJECTIONSet = true
        GL10_GL_PROJECTIONValue = 5889
    GL10_GL_PROJECTIONValue
var GL10_GL_QUADRATIC_ATTENUATIONValue: int32
var GL10_GL_QUADRATIC_ATTENUATIONSet = false
proc GL_QUADRATIC_ATTENUATION*(t: typedesc[GL10]): int32 =
    if not GL10_GL_QUADRATIC_ATTENUATIONSet:
        GL10_GL_QUADRATIC_ATTENUATIONSet = true
        GL10_GL_QUADRATIC_ATTENUATIONValue = 4617
    GL10_GL_QUADRATIC_ATTENUATIONValue
var GL10_GL_RED_BITSValue: int32
var GL10_GL_RED_BITSSet = false
proc GL_RED_BITS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_RED_BITSSet:
        GL10_GL_RED_BITSSet = true
        GL10_GL_RED_BITSValue = 3410
    GL10_GL_RED_BITSValue
var GL10_GL_RENDERERValue: int32
var GL10_GL_RENDERERSet = false
proc GL_RENDERER*(t: typedesc[GL10]): int32 =
    if not GL10_GL_RENDERERSet:
        GL10_GL_RENDERERSet = true
        GL10_GL_RENDERERValue = 7937
    GL10_GL_RENDERERValue
var GL10_GL_REPEATValue: int32
var GL10_GL_REPEATSet = false
proc GL_REPEAT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_REPEATSet:
        GL10_GL_REPEATSet = true
        GL10_GL_REPEATValue = 10497
    GL10_GL_REPEATValue
var GL10_GL_REPLACEValue: int32
var GL10_GL_REPLACESet = false
proc GL_REPLACE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_REPLACESet:
        GL10_GL_REPLACESet = true
        GL10_GL_REPLACEValue = 7681
    GL10_GL_REPLACEValue
var GL10_GL_RESCALE_NORMALValue: int32
var GL10_GL_RESCALE_NORMALSet = false
proc GL_RESCALE_NORMAL*(t: typedesc[GL10]): int32 =
    if not GL10_GL_RESCALE_NORMALSet:
        GL10_GL_RESCALE_NORMALSet = true
        GL10_GL_RESCALE_NORMALValue = 32826
    GL10_GL_RESCALE_NORMALValue
var GL10_GL_RGBValue: int32
var GL10_GL_RGBSet = false
proc GL_RGB*(t: typedesc[GL10]): int32 =
    if not GL10_GL_RGBSet:
        GL10_GL_RGBSet = true
        GL10_GL_RGBValue = 6407
    GL10_GL_RGBValue
var GL10_GL_RGBAValue: int32
var GL10_GL_RGBASet = false
proc GL_RGBA*(t: typedesc[GL10]): int32 =
    if not GL10_GL_RGBASet:
        GL10_GL_RGBASet = true
        GL10_GL_RGBAValue = 6408
    GL10_GL_RGBAValue
var GL10_GL_SAMPLE_ALPHA_TO_COVERAGEValue: int32
var GL10_GL_SAMPLE_ALPHA_TO_COVERAGESet = false
proc GL_SAMPLE_ALPHA_TO_COVERAGE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SAMPLE_ALPHA_TO_COVERAGESet:
        GL10_GL_SAMPLE_ALPHA_TO_COVERAGESet = true
        GL10_GL_SAMPLE_ALPHA_TO_COVERAGEValue = 32926
    GL10_GL_SAMPLE_ALPHA_TO_COVERAGEValue
var GL10_GL_SAMPLE_ALPHA_TO_ONEValue: int32
var GL10_GL_SAMPLE_ALPHA_TO_ONESet = false
proc GL_SAMPLE_ALPHA_TO_ONE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SAMPLE_ALPHA_TO_ONESet:
        GL10_GL_SAMPLE_ALPHA_TO_ONESet = true
        GL10_GL_SAMPLE_ALPHA_TO_ONEValue = 32927
    GL10_GL_SAMPLE_ALPHA_TO_ONEValue
var GL10_GL_SAMPLE_COVERAGEValue: int32
var GL10_GL_SAMPLE_COVERAGESet = false
proc GL_SAMPLE_COVERAGE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SAMPLE_COVERAGESet:
        GL10_GL_SAMPLE_COVERAGESet = true
        GL10_GL_SAMPLE_COVERAGEValue = 32928
    GL10_GL_SAMPLE_COVERAGEValue
var GL10_GL_SCISSOR_TESTValue: int32
var GL10_GL_SCISSOR_TESTSet = false
proc GL_SCISSOR_TEST*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SCISSOR_TESTSet:
        GL10_GL_SCISSOR_TESTSet = true
        GL10_GL_SCISSOR_TESTValue = 3089
    GL10_GL_SCISSOR_TESTValue
var GL10_GL_SETValue: int32
var GL10_GL_SETSet = false
proc GL_SET*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SETSet:
        GL10_GL_SETSet = true
        GL10_GL_SETValue = 5391
    GL10_GL_SETValue
var GL10_GL_SHININESSValue: int32
var GL10_GL_SHININESSSet = false
proc GL_SHININESS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SHININESSSet:
        GL10_GL_SHININESSSet = true
        GL10_GL_SHININESSValue = 5633
    GL10_GL_SHININESSValue
var GL10_GL_SHORTValue: int32
var GL10_GL_SHORTSet = false
proc GL_SHORT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SHORTSet:
        GL10_GL_SHORTSet = true
        GL10_GL_SHORTValue = 5122
    GL10_GL_SHORTValue
var GL10_GL_SMOOTHValue: int32
var GL10_GL_SMOOTHSet = false
proc GL_SMOOTH*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SMOOTHSet:
        GL10_GL_SMOOTHSet = true
        GL10_GL_SMOOTHValue = 7425
    GL10_GL_SMOOTHValue
var GL10_GL_SMOOTH_LINE_WIDTH_RANGEValue: int32
var GL10_GL_SMOOTH_LINE_WIDTH_RANGESet = false
proc GL_SMOOTH_LINE_WIDTH_RANGE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SMOOTH_LINE_WIDTH_RANGESet:
        GL10_GL_SMOOTH_LINE_WIDTH_RANGESet = true
        GL10_GL_SMOOTH_LINE_WIDTH_RANGEValue = 2850
    GL10_GL_SMOOTH_LINE_WIDTH_RANGEValue
var GL10_GL_SMOOTH_POINT_SIZE_RANGEValue: int32
var GL10_GL_SMOOTH_POINT_SIZE_RANGESet = false
proc GL_SMOOTH_POINT_SIZE_RANGE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SMOOTH_POINT_SIZE_RANGESet:
        GL10_GL_SMOOTH_POINT_SIZE_RANGESet = true
        GL10_GL_SMOOTH_POINT_SIZE_RANGEValue = 2834
    GL10_GL_SMOOTH_POINT_SIZE_RANGEValue
var GL10_GL_SPECULARValue: int32
var GL10_GL_SPECULARSet = false
proc GL_SPECULAR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SPECULARSet:
        GL10_GL_SPECULARSet = true
        GL10_GL_SPECULARValue = 4610
    GL10_GL_SPECULARValue
var GL10_GL_SPOT_CUTOFFValue: int32
var GL10_GL_SPOT_CUTOFFSet = false
proc GL_SPOT_CUTOFF*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SPOT_CUTOFFSet:
        GL10_GL_SPOT_CUTOFFSet = true
        GL10_GL_SPOT_CUTOFFValue = 4614
    GL10_GL_SPOT_CUTOFFValue
var GL10_GL_SPOT_DIRECTIONValue: int32
var GL10_GL_SPOT_DIRECTIONSet = false
proc GL_SPOT_DIRECTION*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SPOT_DIRECTIONSet:
        GL10_GL_SPOT_DIRECTIONSet = true
        GL10_GL_SPOT_DIRECTIONValue = 4612
    GL10_GL_SPOT_DIRECTIONValue
var GL10_GL_SPOT_EXPONENTValue: int32
var GL10_GL_SPOT_EXPONENTSet = false
proc GL_SPOT_EXPONENT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SPOT_EXPONENTSet:
        GL10_GL_SPOT_EXPONENTSet = true
        GL10_GL_SPOT_EXPONENTValue = 4613
    GL10_GL_SPOT_EXPONENTValue
var GL10_GL_SRC_ALPHAValue: int32
var GL10_GL_SRC_ALPHASet = false
proc GL_SRC_ALPHA*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SRC_ALPHASet:
        GL10_GL_SRC_ALPHASet = true
        GL10_GL_SRC_ALPHAValue = 770
    GL10_GL_SRC_ALPHAValue
var GL10_GL_SRC_ALPHA_SATURATEValue: int32
var GL10_GL_SRC_ALPHA_SATURATESet = false
proc GL_SRC_ALPHA_SATURATE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SRC_ALPHA_SATURATESet:
        GL10_GL_SRC_ALPHA_SATURATESet = true
        GL10_GL_SRC_ALPHA_SATURATEValue = 776
    GL10_GL_SRC_ALPHA_SATURATEValue
var GL10_GL_SRC_COLORValue: int32
var GL10_GL_SRC_COLORSet = false
proc GL_SRC_COLOR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SRC_COLORSet:
        GL10_GL_SRC_COLORSet = true
        GL10_GL_SRC_COLORValue = 768
    GL10_GL_SRC_COLORValue
var GL10_GL_STACK_OVERFLOWValue: int32
var GL10_GL_STACK_OVERFLOWSet = false
proc GL_STACK_OVERFLOW*(t: typedesc[GL10]): int32 =
    if not GL10_GL_STACK_OVERFLOWSet:
        GL10_GL_STACK_OVERFLOWSet = true
        GL10_GL_STACK_OVERFLOWValue = 1283
    GL10_GL_STACK_OVERFLOWValue
var GL10_GL_STACK_UNDERFLOWValue: int32
var GL10_GL_STACK_UNDERFLOWSet = false
proc GL_STACK_UNDERFLOW*(t: typedesc[GL10]): int32 =
    if not GL10_GL_STACK_UNDERFLOWSet:
        GL10_GL_STACK_UNDERFLOWSet = true
        GL10_GL_STACK_UNDERFLOWValue = 1284
    GL10_GL_STACK_UNDERFLOWValue
var GL10_GL_STENCIL_BITSValue: int32
var GL10_GL_STENCIL_BITSSet = false
proc GL_STENCIL_BITS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_STENCIL_BITSSet:
        GL10_GL_STENCIL_BITSSet = true
        GL10_GL_STENCIL_BITSValue = 3415
    GL10_GL_STENCIL_BITSValue
var GL10_GL_STENCIL_BUFFER_BITValue: int32
var GL10_GL_STENCIL_BUFFER_BITSet = false
proc GL_STENCIL_BUFFER_BIT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_STENCIL_BUFFER_BITSet:
        GL10_GL_STENCIL_BUFFER_BITSet = true
        GL10_GL_STENCIL_BUFFER_BITValue = 1024
    GL10_GL_STENCIL_BUFFER_BITValue
var GL10_GL_STENCIL_TESTValue: int32
var GL10_GL_STENCIL_TESTSet = false
proc GL_STENCIL_TEST*(t: typedesc[GL10]): int32 =
    if not GL10_GL_STENCIL_TESTSet:
        GL10_GL_STENCIL_TESTSet = true
        GL10_GL_STENCIL_TESTValue = 2960
    GL10_GL_STENCIL_TESTValue
var GL10_GL_SUBPIXEL_BITSValue: int32
var GL10_GL_SUBPIXEL_BITSSet = false
proc GL_SUBPIXEL_BITS*(t: typedesc[GL10]): int32 =
    if not GL10_GL_SUBPIXEL_BITSSet:
        GL10_GL_SUBPIXEL_BITSSet = true
        GL10_GL_SUBPIXEL_BITSValue = 3408
    GL10_GL_SUBPIXEL_BITSValue
var GL10_GL_TEXTUREValue: int32
var GL10_GL_TEXTURESet = false
proc GL_TEXTURE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURESet:
        GL10_GL_TEXTURESet = true
        GL10_GL_TEXTUREValue = 5890
    GL10_GL_TEXTUREValue
var GL10_GL_TEXTURE_2DValue: int32
var GL10_GL_TEXTURE_2DSet = false
proc GL_TEXTURE_2D*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE_2DSet:
        GL10_GL_TEXTURE_2DSet = true
        GL10_GL_TEXTURE_2DValue = 3553
    GL10_GL_TEXTURE_2DValue
var GL10_GL_TEXTURE_COORD_ARRAYValue: int32
var GL10_GL_TEXTURE_COORD_ARRAYSet = false
proc GL_TEXTURE_COORD_ARRAY*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE_COORD_ARRAYSet:
        GL10_GL_TEXTURE_COORD_ARRAYSet = true
        GL10_GL_TEXTURE_COORD_ARRAYValue = 32888
    GL10_GL_TEXTURE_COORD_ARRAYValue
var GL10_GL_TEXTURE_ENVValue: int32
var GL10_GL_TEXTURE_ENVSet = false
proc GL_TEXTURE_ENV*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE_ENVSet:
        GL10_GL_TEXTURE_ENVSet = true
        GL10_GL_TEXTURE_ENVValue = 8960
    GL10_GL_TEXTURE_ENVValue
var GL10_GL_TEXTURE_ENV_COLORValue: int32
var GL10_GL_TEXTURE_ENV_COLORSet = false
proc GL_TEXTURE_ENV_COLOR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE_ENV_COLORSet:
        GL10_GL_TEXTURE_ENV_COLORSet = true
        GL10_GL_TEXTURE_ENV_COLORValue = 8705
    GL10_GL_TEXTURE_ENV_COLORValue
var GL10_GL_TEXTURE_ENV_MODEValue: int32
var GL10_GL_TEXTURE_ENV_MODESet = false
proc GL_TEXTURE_ENV_MODE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE_ENV_MODESet:
        GL10_GL_TEXTURE_ENV_MODESet = true
        GL10_GL_TEXTURE_ENV_MODEValue = 8704
    GL10_GL_TEXTURE_ENV_MODEValue
var GL10_GL_TEXTURE_MAG_FILTERValue: int32
var GL10_GL_TEXTURE_MAG_FILTERSet = false
proc GL_TEXTURE_MAG_FILTER*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE_MAG_FILTERSet:
        GL10_GL_TEXTURE_MAG_FILTERSet = true
        GL10_GL_TEXTURE_MAG_FILTERValue = 10240
    GL10_GL_TEXTURE_MAG_FILTERValue
var GL10_GL_TEXTURE_MIN_FILTERValue: int32
var GL10_GL_TEXTURE_MIN_FILTERSet = false
proc GL_TEXTURE_MIN_FILTER*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE_MIN_FILTERSet:
        GL10_GL_TEXTURE_MIN_FILTERSet = true
        GL10_GL_TEXTURE_MIN_FILTERValue = 10241
    GL10_GL_TEXTURE_MIN_FILTERValue
var GL10_GL_TEXTURE_WRAP_SValue: int32
var GL10_GL_TEXTURE_WRAP_SSet = false
proc GL_TEXTURE_WRAP_S*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE_WRAP_SSet:
        GL10_GL_TEXTURE_WRAP_SSet = true
        GL10_GL_TEXTURE_WRAP_SValue = 10242
    GL10_GL_TEXTURE_WRAP_SValue
var GL10_GL_TEXTURE_WRAP_TValue: int32
var GL10_GL_TEXTURE_WRAP_TSet = false
proc GL_TEXTURE_WRAP_T*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE_WRAP_TSet:
        GL10_GL_TEXTURE_WRAP_TSet = true
        GL10_GL_TEXTURE_WRAP_TValue = 10243
    GL10_GL_TEXTURE_WRAP_TValue
var GL10_GL_TEXTURE0Value: int32
var GL10_GL_TEXTURE0Set = false
proc GL_TEXTURE0*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE0Set:
        GL10_GL_TEXTURE0Set = true
        GL10_GL_TEXTURE0Value = 33984
    GL10_GL_TEXTURE0Value
var GL10_GL_TEXTURE1Value: int32
var GL10_GL_TEXTURE1Set = false
proc GL_TEXTURE1*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE1Set:
        GL10_GL_TEXTURE1Set = true
        GL10_GL_TEXTURE1Value = 33985
    GL10_GL_TEXTURE1Value
var GL10_GL_TEXTURE2Value: int32
var GL10_GL_TEXTURE2Set = false
proc GL_TEXTURE2*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE2Set:
        GL10_GL_TEXTURE2Set = true
        GL10_GL_TEXTURE2Value = 33986
    GL10_GL_TEXTURE2Value
var GL10_GL_TEXTURE3Value: int32
var GL10_GL_TEXTURE3Set = false
proc GL_TEXTURE3*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE3Set:
        GL10_GL_TEXTURE3Set = true
        GL10_GL_TEXTURE3Value = 33987
    GL10_GL_TEXTURE3Value
var GL10_GL_TEXTURE4Value: int32
var GL10_GL_TEXTURE4Set = false
proc GL_TEXTURE4*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE4Set:
        GL10_GL_TEXTURE4Set = true
        GL10_GL_TEXTURE4Value = 33988
    GL10_GL_TEXTURE4Value
var GL10_GL_TEXTURE5Value: int32
var GL10_GL_TEXTURE5Set = false
proc GL_TEXTURE5*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE5Set:
        GL10_GL_TEXTURE5Set = true
        GL10_GL_TEXTURE5Value = 33989
    GL10_GL_TEXTURE5Value
var GL10_GL_TEXTURE6Value: int32
var GL10_GL_TEXTURE6Set = false
proc GL_TEXTURE6*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE6Set:
        GL10_GL_TEXTURE6Set = true
        GL10_GL_TEXTURE6Value = 33990
    GL10_GL_TEXTURE6Value
var GL10_GL_TEXTURE7Value: int32
var GL10_GL_TEXTURE7Set = false
proc GL_TEXTURE7*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE7Set:
        GL10_GL_TEXTURE7Set = true
        GL10_GL_TEXTURE7Value = 33991
    GL10_GL_TEXTURE7Value
var GL10_GL_TEXTURE8Value: int32
var GL10_GL_TEXTURE8Set = false
proc GL_TEXTURE8*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE8Set:
        GL10_GL_TEXTURE8Set = true
        GL10_GL_TEXTURE8Value = 33992
    GL10_GL_TEXTURE8Value
var GL10_GL_TEXTURE9Value: int32
var GL10_GL_TEXTURE9Set = false
proc GL_TEXTURE9*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE9Set:
        GL10_GL_TEXTURE9Set = true
        GL10_GL_TEXTURE9Value = 33993
    GL10_GL_TEXTURE9Value
var GL10_GL_TEXTURE10Value: int32
var GL10_GL_TEXTURE10Set = false
proc GL_TEXTURE10*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE10Set:
        GL10_GL_TEXTURE10Set = true
        GL10_GL_TEXTURE10Value = 33994
    GL10_GL_TEXTURE10Value
var GL10_GL_TEXTURE11Value: int32
var GL10_GL_TEXTURE11Set = false
proc GL_TEXTURE11*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE11Set:
        GL10_GL_TEXTURE11Set = true
        GL10_GL_TEXTURE11Value = 33995
    GL10_GL_TEXTURE11Value
var GL10_GL_TEXTURE12Value: int32
var GL10_GL_TEXTURE12Set = false
proc GL_TEXTURE12*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE12Set:
        GL10_GL_TEXTURE12Set = true
        GL10_GL_TEXTURE12Value = 33996
    GL10_GL_TEXTURE12Value
var GL10_GL_TEXTURE13Value: int32
var GL10_GL_TEXTURE13Set = false
proc GL_TEXTURE13*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE13Set:
        GL10_GL_TEXTURE13Set = true
        GL10_GL_TEXTURE13Value = 33997
    GL10_GL_TEXTURE13Value
var GL10_GL_TEXTURE14Value: int32
var GL10_GL_TEXTURE14Set = false
proc GL_TEXTURE14*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE14Set:
        GL10_GL_TEXTURE14Set = true
        GL10_GL_TEXTURE14Value = 33998
    GL10_GL_TEXTURE14Value
var GL10_GL_TEXTURE15Value: int32
var GL10_GL_TEXTURE15Set = false
proc GL_TEXTURE15*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE15Set:
        GL10_GL_TEXTURE15Set = true
        GL10_GL_TEXTURE15Value = 33999
    GL10_GL_TEXTURE15Value
var GL10_GL_TEXTURE16Value: int32
var GL10_GL_TEXTURE16Set = false
proc GL_TEXTURE16*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE16Set:
        GL10_GL_TEXTURE16Set = true
        GL10_GL_TEXTURE16Value = 34000
    GL10_GL_TEXTURE16Value
var GL10_GL_TEXTURE17Value: int32
var GL10_GL_TEXTURE17Set = false
proc GL_TEXTURE17*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE17Set:
        GL10_GL_TEXTURE17Set = true
        GL10_GL_TEXTURE17Value = 34001
    GL10_GL_TEXTURE17Value
var GL10_GL_TEXTURE18Value: int32
var GL10_GL_TEXTURE18Set = false
proc GL_TEXTURE18*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE18Set:
        GL10_GL_TEXTURE18Set = true
        GL10_GL_TEXTURE18Value = 34002
    GL10_GL_TEXTURE18Value
var GL10_GL_TEXTURE19Value: int32
var GL10_GL_TEXTURE19Set = false
proc GL_TEXTURE19*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE19Set:
        GL10_GL_TEXTURE19Set = true
        GL10_GL_TEXTURE19Value = 34003
    GL10_GL_TEXTURE19Value
var GL10_GL_TEXTURE20Value: int32
var GL10_GL_TEXTURE20Set = false
proc GL_TEXTURE20*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE20Set:
        GL10_GL_TEXTURE20Set = true
        GL10_GL_TEXTURE20Value = 34004
    GL10_GL_TEXTURE20Value
var GL10_GL_TEXTURE21Value: int32
var GL10_GL_TEXTURE21Set = false
proc GL_TEXTURE21*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE21Set:
        GL10_GL_TEXTURE21Set = true
        GL10_GL_TEXTURE21Value = 34005
    GL10_GL_TEXTURE21Value
var GL10_GL_TEXTURE22Value: int32
var GL10_GL_TEXTURE22Set = false
proc GL_TEXTURE22*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE22Set:
        GL10_GL_TEXTURE22Set = true
        GL10_GL_TEXTURE22Value = 34006
    GL10_GL_TEXTURE22Value
var GL10_GL_TEXTURE23Value: int32
var GL10_GL_TEXTURE23Set = false
proc GL_TEXTURE23*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE23Set:
        GL10_GL_TEXTURE23Set = true
        GL10_GL_TEXTURE23Value = 34007
    GL10_GL_TEXTURE23Value
var GL10_GL_TEXTURE24Value: int32
var GL10_GL_TEXTURE24Set = false
proc GL_TEXTURE24*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE24Set:
        GL10_GL_TEXTURE24Set = true
        GL10_GL_TEXTURE24Value = 34008
    GL10_GL_TEXTURE24Value
var GL10_GL_TEXTURE25Value: int32
var GL10_GL_TEXTURE25Set = false
proc GL_TEXTURE25*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE25Set:
        GL10_GL_TEXTURE25Set = true
        GL10_GL_TEXTURE25Value = 34009
    GL10_GL_TEXTURE25Value
var GL10_GL_TEXTURE26Value: int32
var GL10_GL_TEXTURE26Set = false
proc GL_TEXTURE26*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE26Set:
        GL10_GL_TEXTURE26Set = true
        GL10_GL_TEXTURE26Value = 34010
    GL10_GL_TEXTURE26Value
var GL10_GL_TEXTURE27Value: int32
var GL10_GL_TEXTURE27Set = false
proc GL_TEXTURE27*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE27Set:
        GL10_GL_TEXTURE27Set = true
        GL10_GL_TEXTURE27Value = 34011
    GL10_GL_TEXTURE27Value
var GL10_GL_TEXTURE28Value: int32
var GL10_GL_TEXTURE28Set = false
proc GL_TEXTURE28*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE28Set:
        GL10_GL_TEXTURE28Set = true
        GL10_GL_TEXTURE28Value = 34012
    GL10_GL_TEXTURE28Value
var GL10_GL_TEXTURE29Value: int32
var GL10_GL_TEXTURE29Set = false
proc GL_TEXTURE29*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE29Set:
        GL10_GL_TEXTURE29Set = true
        GL10_GL_TEXTURE29Value = 34013
    GL10_GL_TEXTURE29Value
var GL10_GL_TEXTURE30Value: int32
var GL10_GL_TEXTURE30Set = false
proc GL_TEXTURE30*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE30Set:
        GL10_GL_TEXTURE30Set = true
        GL10_GL_TEXTURE30Value = 34014
    GL10_GL_TEXTURE30Value
var GL10_GL_TEXTURE31Value: int32
var GL10_GL_TEXTURE31Set = false
proc GL_TEXTURE31*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TEXTURE31Set:
        GL10_GL_TEXTURE31Set = true
        GL10_GL_TEXTURE31Value = 34015
    GL10_GL_TEXTURE31Value
var GL10_GL_TRIANGLE_FANValue: int32
var GL10_GL_TRIANGLE_FANSet = false
proc GL_TRIANGLE_FAN*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TRIANGLE_FANSet:
        GL10_GL_TRIANGLE_FANSet = true
        GL10_GL_TRIANGLE_FANValue = 6
    GL10_GL_TRIANGLE_FANValue
var GL10_GL_TRIANGLE_STRIPValue: int32
var GL10_GL_TRIANGLE_STRIPSet = false
proc GL_TRIANGLE_STRIP*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TRIANGLE_STRIPSet:
        GL10_GL_TRIANGLE_STRIPSet = true
        GL10_GL_TRIANGLE_STRIPValue = 5
    GL10_GL_TRIANGLE_STRIPValue
var GL10_GL_TRIANGLESValue: int32
var GL10_GL_TRIANGLESSet = false
proc GL_TRIANGLES*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TRIANGLESSet:
        GL10_GL_TRIANGLESSet = true
        GL10_GL_TRIANGLESValue = 4
    GL10_GL_TRIANGLESValue
var GL10_GL_TRUEValue: int32
var GL10_GL_TRUESet = false
proc GL_TRUE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_TRUESet:
        GL10_GL_TRUESet = true
        GL10_GL_TRUEValue = 1
    GL10_GL_TRUEValue
var GL10_GL_UNPACK_ALIGNMENTValue: int32
var GL10_GL_UNPACK_ALIGNMENTSet = false
proc GL_UNPACK_ALIGNMENT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_UNPACK_ALIGNMENTSet:
        GL10_GL_UNPACK_ALIGNMENTSet = true
        GL10_GL_UNPACK_ALIGNMENTValue = 3317
    GL10_GL_UNPACK_ALIGNMENTValue
var GL10_GL_UNSIGNED_BYTEValue: int32
var GL10_GL_UNSIGNED_BYTESet = false
proc GL_UNSIGNED_BYTE*(t: typedesc[GL10]): int32 =
    if not GL10_GL_UNSIGNED_BYTESet:
        GL10_GL_UNSIGNED_BYTESet = true
        GL10_GL_UNSIGNED_BYTEValue = 5121
    GL10_GL_UNSIGNED_BYTEValue
var GL10_GL_UNSIGNED_SHORTValue: int32
var GL10_GL_UNSIGNED_SHORTSet = false
proc GL_UNSIGNED_SHORT*(t: typedesc[GL10]): int32 =
    if not GL10_GL_UNSIGNED_SHORTSet:
        GL10_GL_UNSIGNED_SHORTSet = true
        GL10_GL_UNSIGNED_SHORTValue = 5123
    GL10_GL_UNSIGNED_SHORTValue
var GL10_GL_UNSIGNED_SHORT_4_4_4_4Value: int32
var GL10_GL_UNSIGNED_SHORT_4_4_4_4Set = false
proc GL_UNSIGNED_SHORT_4_4_4_4*(t: typedesc[GL10]): int32 =
    if not GL10_GL_UNSIGNED_SHORT_4_4_4_4Set:
        GL10_GL_UNSIGNED_SHORT_4_4_4_4Set = true
        GL10_GL_UNSIGNED_SHORT_4_4_4_4Value = 32819
    GL10_GL_UNSIGNED_SHORT_4_4_4_4Value
var GL10_GL_UNSIGNED_SHORT_5_5_5_1Value: int32
var GL10_GL_UNSIGNED_SHORT_5_5_5_1Set = false
proc GL_UNSIGNED_SHORT_5_5_5_1*(t: typedesc[GL10]): int32 =
    if not GL10_GL_UNSIGNED_SHORT_5_5_5_1Set:
        GL10_GL_UNSIGNED_SHORT_5_5_5_1Set = true
        GL10_GL_UNSIGNED_SHORT_5_5_5_1Value = 32820
    GL10_GL_UNSIGNED_SHORT_5_5_5_1Value
var GL10_GL_UNSIGNED_SHORT_5_6_5Value: int32
var GL10_GL_UNSIGNED_SHORT_5_6_5Set = false
proc GL_UNSIGNED_SHORT_5_6_5*(t: typedesc[GL10]): int32 =
    if not GL10_GL_UNSIGNED_SHORT_5_6_5Set:
        GL10_GL_UNSIGNED_SHORT_5_6_5Set = true
        GL10_GL_UNSIGNED_SHORT_5_6_5Value = 33635
    GL10_GL_UNSIGNED_SHORT_5_6_5Value
var GL10_GL_VENDORValue: int32
var GL10_GL_VENDORSet = false
proc GL_VENDOR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_VENDORSet:
        GL10_GL_VENDORSet = true
        GL10_GL_VENDORValue = 7936
    GL10_GL_VENDORValue
var GL10_GL_VERSIONValue: int32
var GL10_GL_VERSIONSet = false
proc GL_VERSION*(t: typedesc[GL10]): int32 =
    if not GL10_GL_VERSIONSet:
        GL10_GL_VERSIONSet = true
        GL10_GL_VERSIONValue = 7938
    GL10_GL_VERSIONValue
var GL10_GL_VERTEX_ARRAYValue: int32
var GL10_GL_VERTEX_ARRAYSet = false
proc GL_VERTEX_ARRAY*(t: typedesc[GL10]): int32 =
    if not GL10_GL_VERTEX_ARRAYSet:
        GL10_GL_VERTEX_ARRAYSet = true
        GL10_GL_VERTEX_ARRAYValue = 32884
    GL10_GL_VERTEX_ARRAYValue
var GL10_GL_XORValue: int32
var GL10_GL_XORSet = false
proc GL_XOR*(t: typedesc[GL10]): int32 =
    if not GL10_GL_XORSet:
        GL10_GL_XORSet = true
        GL10_GL_XORValue = 5382
    GL10_GL_XORValue
var GL10_GL_ZEROValue: int32
var GL10_GL_ZEROSet = false
proc GL_ZERO*(t: typedesc[GL10]): int32 =
    if not GL10_GL_ZEROSet:
        GL10_GL_ZEROSet = true
        GL10_GL_ZEROValue = 0
    GL10_GL_ZEROValue

method glActiveTexture*(this: GL10, texture: int32) {.base.} =
        raise newJException("AbstractMethodError", "glActiveTexture")

method glAlphaFunc*(this: GL10, `func`: int32, `ref`: float32) {.base.} =
        raise newJException("AbstractMethodError", "glAlphaFunc")

method glBindTexture*(this: GL10, target: int32, texture: int32) {.base.} =
        raise newJException("AbstractMethodError", "glBindTexture")

method glBlendFunc*(this: GL10, sfactor: int32, dfactor: int32) {.base.} =
        raise newJException("AbstractMethodError", "glBlendFunc")

method glClear*(this: GL10, mask: int32) {.base.} =
        raise newJException("AbstractMethodError", "glClear")

method glClearColor*(this: GL10, red: float32, green: float32, blue: float32, alpha: float32) {.base.} =
        raise newJException("AbstractMethodError", "glClearColor")

method glClearDepthf*(this: GL10, depth: float32) {.base.} =
        raise newJException("AbstractMethodError", "glClearDepthf")

method glClearStencil*(this: GL10, s: int32) {.base.} =
        raise newJException("AbstractMethodError", "glClearStencil")

method glClientActiveTexture*(this: GL10, texture: int32) {.base.} =
        raise newJException("AbstractMethodError", "glClientActiveTexture")

method glColor4f*(this: GL10, red: float32, green: float32, blue: float32, alpha: float32) {.base.} =
        raise newJException("AbstractMethodError", "glColor4f")

method glColorMask*(this: GL10, red: bool, green: bool, blue: bool, alpha: bool) {.base.} =
        raise newJException("AbstractMethodError", "glColorMask")

method glColorPointer*(this: GL10, size: int32, `type`: int32, stride: int32, pointer: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glColorPointer")

method glCompressedTexImage2D*(this: GL10, target: int32, level: int32, internalformat: int32, width: int32, height: int32, border: int32, imageSize: int32, data: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glCompressedTexImage2D")

method glCompressedTexSubImage2D*(this: GL10, target: int32, level: int32, xoffset: int32, yoffset: int32, width: int32, height: int32, format: int32, imageSize: int32, data: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glCompressedTexSubImage2D")

method glCopyTexImage2D*(this: GL10, target: int32, level: int32, internalformat: int32, x: int32, y: int32, width: int32, height: int32, border: int32) {.base.} =
        raise newJException("AbstractMethodError", "glCopyTexImage2D")

method glCopyTexSubImage2D*(this: GL10, target: int32, level: int32, xoffset: int32, yoffset: int32, x: int32, y: int32, width: int32, height: int32) {.base.} =
        raise newJException("AbstractMethodError", "glCopyTexSubImage2D")

method glCullFace*(this: GL10, mode: int32) {.base.} =
        raise newJException("AbstractMethodError", "glCullFace")

method glDeleteTextures*(this: GL10, n: int32, textures: JArray[int32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glDeleteTextures")

method glDeleteTextures*(this: GL10, n: int32, textures: IntBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glDeleteTextures")

method glDepthFunc*(this: GL10, `func`: int32) {.base.} =
        raise newJException("AbstractMethodError", "glDepthFunc")

method glDepthMask*(this: GL10, flag: bool) {.base.} =
        raise newJException("AbstractMethodError", "glDepthMask")

method glDepthRangef*(this: GL10, zNear: float32, zFar: float32) {.base.} =
        raise newJException("AbstractMethodError", "glDepthRangef")

method glDisable*(this: GL10, cap: int32) {.base.} =
        raise newJException("AbstractMethodError", "glDisable")

method glDisableClientState*(this: GL10, array: int32) {.base.} =
        raise newJException("AbstractMethodError", "glDisableClientState")

method glDrawArrays*(this: GL10, mode: int32, first: int32, count: int32) {.base.} =
        raise newJException("AbstractMethodError", "glDrawArrays")

method glDrawElements*(this: GL10, mode: int32, count: int32, `type`: int32, indices: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glDrawElements")

method glEnable*(this: GL10, cap: int32) {.base.} =
        raise newJException("AbstractMethodError", "glEnable")

method glEnableClientState*(this: GL10, array: int32) {.base.} =
        raise newJException("AbstractMethodError", "glEnableClientState")

method glFinish*(this: GL10) {.base.} =
        raise newJException("AbstractMethodError", "glFinish")

method glFlush*(this: GL10) {.base.} =
        raise newJException("AbstractMethodError", "glFlush")

method glFogf*(this: GL10, pname: int32, param: float32) {.base.} =
        raise newJException("AbstractMethodError", "glFogf")

method glFogfv*(this: GL10, pname: int32, params: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glFogfv")

method glFogfv*(this: GL10, pname: int32, params: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glFogfv")

method glFrontFace*(this: GL10, mode: int32) {.base.} =
        raise newJException("AbstractMethodError", "glFrontFace")

method glFrustumf*(this: GL10, left: float32, right: float32, bottom: float32, top: float32, zNear: float32, zFar: float32) {.base.} =
        raise newJException("AbstractMethodError", "glFrustumf")

method glGenTextures*(this: GL10, n: int32, textures: JArray[int32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glGenTextures")

method glGenTextures*(this: GL10, n: int32, textures: IntBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glGenTextures")

method glGetError*(this: GL10): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "glGetError")

method glGetIntegerv*(this: GL10, pname: int32, params: JArray[int32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glGetIntegerv")

method glGetIntegerv*(this: GL10, pname: int32, params: IntBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glGetIntegerv")

method glGetString*(this: GL10, name: int32): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "glGetString")

method glHint*(this: GL10, target: int32, mode: int32) {.base.} =
        raise newJException("AbstractMethodError", "glHint")

method glLightModelf*(this: GL10, pname: int32, param: float32) {.base.} =
        raise newJException("AbstractMethodError", "glLightModelf")

method glLightModelfv*(this: GL10, pname: int32, params: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glLightModelfv")

method glLightModelfv*(this: GL10, pname: int32, params: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glLightModelfv")

method glLightf*(this: GL10, light: int32, pname: int32, param: float32) {.base.} =
        raise newJException("AbstractMethodError", "glLightf")

method glLightfv*(this: GL10, light: int32, pname: int32, params: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glLightfv")

method glLightfv*(this: GL10, light: int32, pname: int32, params: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glLightfv")

method glLineWidth*(this: GL10, width: float32) {.base.} =
        raise newJException("AbstractMethodError", "glLineWidth")

method glLoadIdentity*(this: GL10) {.base.} =
        raise newJException("AbstractMethodError", "glLoadIdentity")

method glLoadMatrixf*(this: GL10, m: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glLoadMatrixf")

method glLoadMatrixf*(this: GL10, m: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glLoadMatrixf")

method glLogicOp*(this: GL10, opcode: int32) {.base.} =
        raise newJException("AbstractMethodError", "glLogicOp")

method glMaterialf*(this: GL10, face: int32, pname: int32, param: float32) {.base.} =
        raise newJException("AbstractMethodError", "glMaterialf")

method glMaterialfv*(this: GL10, face: int32, pname: int32, params: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glMaterialfv")

method glMaterialfv*(this: GL10, face: int32, pname: int32, params: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glMaterialfv")

method glMatrixMode*(this: GL10, mode: int32) {.base.} =
        raise newJException("AbstractMethodError", "glMatrixMode")

method glMultMatrixf*(this: GL10, m: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glMultMatrixf")

method glMultMatrixf*(this: GL10, m: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glMultMatrixf")

method glMultiTexCoord4f*(this: GL10, target: int32, s: float32, t: float32, r: float32, q: float32) {.base.} =
        raise newJException("AbstractMethodError", "glMultiTexCoord4f")

method glNormal3f*(this: GL10, nx: float32, ny: float32, nz: float32) {.base.} =
        raise newJException("AbstractMethodError", "glNormal3f")

method glNormalPointer*(this: GL10, `type`: int32, stride: int32, pointer: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glNormalPointer")

method glOrthof*(this: GL10, left: float32, right: float32, bottom: float32, top: float32, zNear: float32, zFar: float32) {.base.} =
        raise newJException("AbstractMethodError", "glOrthof")

method glPixelStorei*(this: GL10, pname: int32, param: int32) {.base.} =
        raise newJException("AbstractMethodError", "glPixelStorei")

method glPointSize*(this: GL10, size: float32) {.base.} =
        raise newJException("AbstractMethodError", "glPointSize")

method glPolygonOffset*(this: GL10, factor: float32, units: float32) {.base.} =
        raise newJException("AbstractMethodError", "glPolygonOffset")

method glPopMatrix*(this: GL10) {.base.} =
        raise newJException("AbstractMethodError", "glPopMatrix")

method glPushMatrix*(this: GL10) {.base.} =
        raise newJException("AbstractMethodError", "glPushMatrix")

method glReadPixels*(this: GL10, x: int32, y: int32, width: int32, height: int32, format: int32, `type`: int32, pixels: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glReadPixels")

method glRotatef*(this: GL10, angle: float32, x: float32, y: float32, z: float32) {.base.} =
        raise newJException("AbstractMethodError", "glRotatef")

method glRotatex*(this: GL10, angle: int32, x: int32, y: int32, z: int32) {.base.} =
        raise newJException("AbstractMethodError", "glRotatex")

method glSampleCoverage*(this: GL10, value: float32, invert: bool) {.base.} =
        raise newJException("AbstractMethodError", "glSampleCoverage")

method glScalef*(this: GL10, x: float32, y: float32, z: float32) {.base.} =
        raise newJException("AbstractMethodError", "glScalef")

method glScalex*(this: GL10, x: int32, y: int32, z: int32) {.base.} =
        raise newJException("AbstractMethodError", "glScalex")

method glScissor*(this: GL10, x: int32, y: int32, width: int32, height: int32) {.base.} =
        raise newJException("AbstractMethodError", "glScissor")

method glShadeModel*(this: GL10, mode: int32) {.base.} =
        raise newJException("AbstractMethodError", "glShadeModel")

method glStencilFunc*(this: GL10, `func`: int32, `ref`: int32, mask: int32) {.base.} =
        raise newJException("AbstractMethodError", "glStencilFunc")

method glStencilMask*(this: GL10, mask: int32) {.base.} =
        raise newJException("AbstractMethodError", "glStencilMask")

method glStencilOp*(this: GL10, fail: int32, zfail: int32, zpass: int32) {.base.} =
        raise newJException("AbstractMethodError", "glStencilOp")

method glTexCoordPointer*(this: GL10, size: int32, `type`: int32, stride: int32, pointer: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glTexCoordPointer")

method glTexEnvf*(this: GL10, target: int32, pname: int32, param: float32) {.base.} =
        raise newJException("AbstractMethodError", "glTexEnvf")

method glTexEnvfv*(this: GL10, target: int32, pname: int32, params: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glTexEnvfv")

method glTexEnvfv*(this: GL10, target: int32, pname: int32, params: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glTexEnvfv")

method glTexImage2D*(this: GL10, target: int32, level: int32, internalformat: int32, width: int32, height: int32, border: int32, format: int32, `type`: int32, pixels: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glTexImage2D")

method glTexParameterf*(this: GL10, target: int32, pname: int32, param: float32) {.base.} =
        raise newJException("AbstractMethodError", "glTexParameterf")

method glTexParameteri*(this: GL10, target: int32, pname: int32, param: int32) {.base.} =
        raise newJException("AbstractMethodError", "glTexParameteri")

method glTexSubImage2D*(this: GL10, target: int32, level: int32, xoffset: int32, yoffset: int32, width: int32, height: int32, format: int32, `type`: int32, pixels: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glTexSubImage2D")

method glTranslatef*(this: GL10, x: float32, y: float32, z: float32) {.base.} =
        raise newJException("AbstractMethodError", "glTranslatef")

method glVertexPointer*(this: GL10, size: int32, `type`: int32, stride: int32, pointer: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glVertexPointer")

method glViewport*(this: GL10, x: int32, y: int32, width: int32, height: int32) {.base.} =
        raise newJException("AbstractMethodError", "glViewport")

method glBegin*(this: GL10, i: int32) {.base.} =
        raise newJException("AbstractMethodError", "glBegin")

method glEnd*(this: GL10) {.base.} =
        raise newJException("AbstractMethodError", "glEnd")

method glVertex3f*(this: GL10, f: float32, f2: float32, f3: float32) {.base.} =
        raise newJException("AbstractMethodError", "glVertex3f")

method glPolygonMode*(this: GL10, i: int32, i1: int32) {.base.} =
        raise newJException("AbstractMethodError", "glPolygonMode")

