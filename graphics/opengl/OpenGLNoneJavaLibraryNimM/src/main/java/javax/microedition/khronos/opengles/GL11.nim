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
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module

type
    GL11* = ref object of GL10

var GL11_GL_ACTIVE_TEXTUREValue: int32
var GL11_GL_ACTIVE_TEXTURESet = false
proc GL_ACTIVE_TEXTURE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_ACTIVE_TEXTURESet:
        GL11_GL_ACTIVE_TEXTURESet = true
        GL11_GL_ACTIVE_TEXTUREValue = 34016
    GL11_GL_ACTIVE_TEXTUREValue
var GL11_GL_ADD_SIGNEDValue: int32
var GL11_GL_ADD_SIGNEDSet = false
proc GL_ADD_SIGNED*(t: typedesc[GL11]): int32 =
    if not GL11_GL_ADD_SIGNEDSet:
        GL11_GL_ADD_SIGNEDSet = true
        GL11_GL_ADD_SIGNEDValue = 34164
    GL11_GL_ADD_SIGNEDValue
var GL11_GL_ALPHA_SCALEValue: int32
var GL11_GL_ALPHA_SCALESet = false
proc GL_ALPHA_SCALE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_ALPHA_SCALESet:
        GL11_GL_ALPHA_SCALESet = true
        GL11_GL_ALPHA_SCALEValue = 3356
    GL11_GL_ALPHA_SCALEValue
var GL11_GL_ALPHA_TEST_FUNCValue: int32
var GL11_GL_ALPHA_TEST_FUNCSet = false
proc GL_ALPHA_TEST_FUNC*(t: typedesc[GL11]): int32 =
    if not GL11_GL_ALPHA_TEST_FUNCSet:
        GL11_GL_ALPHA_TEST_FUNCSet = true
        GL11_GL_ALPHA_TEST_FUNCValue = 3009
    GL11_GL_ALPHA_TEST_FUNCValue
var GL11_GL_ALPHA_TEST_REFValue: int32
var GL11_GL_ALPHA_TEST_REFSet = false
proc GL_ALPHA_TEST_REF*(t: typedesc[GL11]): int32 =
    if not GL11_GL_ALPHA_TEST_REFSet:
        GL11_GL_ALPHA_TEST_REFSet = true
        GL11_GL_ALPHA_TEST_REFValue = 3010
    GL11_GL_ALPHA_TEST_REFValue
var GL11_GL_ARRAY_BUFFERValue: int32
var GL11_GL_ARRAY_BUFFERSet = false
proc GL_ARRAY_BUFFER*(t: typedesc[GL11]): int32 =
    if not GL11_GL_ARRAY_BUFFERSet:
        GL11_GL_ARRAY_BUFFERSet = true
        GL11_GL_ARRAY_BUFFERValue = 34962
    GL11_GL_ARRAY_BUFFERValue
var GL11_GL_ARRAY_BUFFER_BINDINGValue: int32
var GL11_GL_ARRAY_BUFFER_BINDINGSet = false
proc GL_ARRAY_BUFFER_BINDING*(t: typedesc[GL11]): int32 =
    if not GL11_GL_ARRAY_BUFFER_BINDINGSet:
        GL11_GL_ARRAY_BUFFER_BINDINGSet = true
        GL11_GL_ARRAY_BUFFER_BINDINGValue = 34964
    GL11_GL_ARRAY_BUFFER_BINDINGValue
var GL11_GL_BLEND_DSTValue: int32
var GL11_GL_BLEND_DSTSet = false
proc GL_BLEND_DST*(t: typedesc[GL11]): int32 =
    if not GL11_GL_BLEND_DSTSet:
        GL11_GL_BLEND_DSTSet = true
        GL11_GL_BLEND_DSTValue = 3040
    GL11_GL_BLEND_DSTValue
var GL11_GL_BLEND_SRCValue: int32
var GL11_GL_BLEND_SRCSet = false
proc GL_BLEND_SRC*(t: typedesc[GL11]): int32 =
    if not GL11_GL_BLEND_SRCSet:
        GL11_GL_BLEND_SRCSet = true
        GL11_GL_BLEND_SRCValue = 3041
    GL11_GL_BLEND_SRCValue
var GL11_GL_BUFFER_ACCESSValue: int32
var GL11_GL_BUFFER_ACCESSSet = false
proc GL_BUFFER_ACCESS*(t: typedesc[GL11]): int32 =
    if not GL11_GL_BUFFER_ACCESSSet:
        GL11_GL_BUFFER_ACCESSSet = true
        GL11_GL_BUFFER_ACCESSValue = 35003
    GL11_GL_BUFFER_ACCESSValue
var GL11_GL_BUFFER_SIZEValue: int32
var GL11_GL_BUFFER_SIZESet = false
proc GL_BUFFER_SIZE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_BUFFER_SIZESet:
        GL11_GL_BUFFER_SIZESet = true
        GL11_GL_BUFFER_SIZEValue = 34660
    GL11_GL_BUFFER_SIZEValue
var GL11_GL_BUFFER_USAGEValue: int32
var GL11_GL_BUFFER_USAGESet = false
proc GL_BUFFER_USAGE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_BUFFER_USAGESet:
        GL11_GL_BUFFER_USAGESet = true
        GL11_GL_BUFFER_USAGEValue = 34661
    GL11_GL_BUFFER_USAGEValue
var GL11_GL_CLIENT_ACTIVE_TEXTUREValue: int32
var GL11_GL_CLIENT_ACTIVE_TEXTURESet = false
proc GL_CLIENT_ACTIVE_TEXTURE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_CLIENT_ACTIVE_TEXTURESet:
        GL11_GL_CLIENT_ACTIVE_TEXTURESet = true
        GL11_GL_CLIENT_ACTIVE_TEXTUREValue = 34017
    GL11_GL_CLIENT_ACTIVE_TEXTUREValue
var GL11_GL_CLIP_PLANE0Value: int32
var GL11_GL_CLIP_PLANE0Set = false
proc GL_CLIP_PLANE0*(t: typedesc[GL11]): int32 =
    if not GL11_GL_CLIP_PLANE0Set:
        GL11_GL_CLIP_PLANE0Set = true
        GL11_GL_CLIP_PLANE0Value = 12288
    GL11_GL_CLIP_PLANE0Value
var GL11_GL_CLIP_PLANE1Value: int32
var GL11_GL_CLIP_PLANE1Set = false
proc GL_CLIP_PLANE1*(t: typedesc[GL11]): int32 =
    if not GL11_GL_CLIP_PLANE1Set:
        GL11_GL_CLIP_PLANE1Set = true
        GL11_GL_CLIP_PLANE1Value = 12289
    GL11_GL_CLIP_PLANE1Value
var GL11_GL_CLIP_PLANE2Value: int32
var GL11_GL_CLIP_PLANE2Set = false
proc GL_CLIP_PLANE2*(t: typedesc[GL11]): int32 =
    if not GL11_GL_CLIP_PLANE2Set:
        GL11_GL_CLIP_PLANE2Set = true
        GL11_GL_CLIP_PLANE2Value = 12290
    GL11_GL_CLIP_PLANE2Value
var GL11_GL_CLIP_PLANE3Value: int32
var GL11_GL_CLIP_PLANE3Set = false
proc GL_CLIP_PLANE3*(t: typedesc[GL11]): int32 =
    if not GL11_GL_CLIP_PLANE3Set:
        GL11_GL_CLIP_PLANE3Set = true
        GL11_GL_CLIP_PLANE3Value = 12291
    GL11_GL_CLIP_PLANE3Value
var GL11_GL_CLIP_PLANE4Value: int32
var GL11_GL_CLIP_PLANE4Set = false
proc GL_CLIP_PLANE4*(t: typedesc[GL11]): int32 =
    if not GL11_GL_CLIP_PLANE4Set:
        GL11_GL_CLIP_PLANE4Set = true
        GL11_GL_CLIP_PLANE4Value = 12292
    GL11_GL_CLIP_PLANE4Value
var GL11_GL_CLIP_PLANE5Value: int32
var GL11_GL_CLIP_PLANE5Set = false
proc GL_CLIP_PLANE5*(t: typedesc[GL11]): int32 =
    if not GL11_GL_CLIP_PLANE5Set:
        GL11_GL_CLIP_PLANE5Set = true
        GL11_GL_CLIP_PLANE5Value = 12293
    GL11_GL_CLIP_PLANE5Value
var GL11_GL_COLOR_ARRAY_BUFFER_BINDINGValue: int32
var GL11_GL_COLOR_ARRAY_BUFFER_BINDINGSet = false
proc GL_COLOR_ARRAY_BUFFER_BINDING*(t: typedesc[GL11]): int32 =
    if not GL11_GL_COLOR_ARRAY_BUFFER_BINDINGSet:
        GL11_GL_COLOR_ARRAY_BUFFER_BINDINGSet = true
        GL11_GL_COLOR_ARRAY_BUFFER_BINDINGValue = 34968
    GL11_GL_COLOR_ARRAY_BUFFER_BINDINGValue
var GL11_GL_COLOR_ARRAY_POINTERValue: int32
var GL11_GL_COLOR_ARRAY_POINTERSet = false
proc GL_COLOR_ARRAY_POINTER*(t: typedesc[GL11]): int32 =
    if not GL11_GL_COLOR_ARRAY_POINTERSet:
        GL11_GL_COLOR_ARRAY_POINTERSet = true
        GL11_GL_COLOR_ARRAY_POINTERValue = 32912
    GL11_GL_COLOR_ARRAY_POINTERValue
var GL11_GL_COLOR_ARRAY_SIZEValue: int32
var GL11_GL_COLOR_ARRAY_SIZESet = false
proc GL_COLOR_ARRAY_SIZE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_COLOR_ARRAY_SIZESet:
        GL11_GL_COLOR_ARRAY_SIZESet = true
        GL11_GL_COLOR_ARRAY_SIZEValue = 32897
    GL11_GL_COLOR_ARRAY_SIZEValue
var GL11_GL_COLOR_ARRAY_STRIDEValue: int32
var GL11_GL_COLOR_ARRAY_STRIDESet = false
proc GL_COLOR_ARRAY_STRIDE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_COLOR_ARRAY_STRIDESet:
        GL11_GL_COLOR_ARRAY_STRIDESet = true
        GL11_GL_COLOR_ARRAY_STRIDEValue = 32899
    GL11_GL_COLOR_ARRAY_STRIDEValue
var GL11_GL_COLOR_ARRAY_TYPEValue: int32
var GL11_GL_COLOR_ARRAY_TYPESet = false
proc GL_COLOR_ARRAY_TYPE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_COLOR_ARRAY_TYPESet:
        GL11_GL_COLOR_ARRAY_TYPESet = true
        GL11_GL_COLOR_ARRAY_TYPEValue = 32898
    GL11_GL_COLOR_ARRAY_TYPEValue
var GL11_GL_COLOR_CLEAR_VALUEValue: int32
var GL11_GL_COLOR_CLEAR_VALUESet = false
proc GL_COLOR_CLEAR_VALUE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_COLOR_CLEAR_VALUESet:
        GL11_GL_COLOR_CLEAR_VALUESet = true
        GL11_GL_COLOR_CLEAR_VALUEValue = 3106
    GL11_GL_COLOR_CLEAR_VALUEValue
var GL11_GL_COLOR_WRITEMASKValue: int32
var GL11_GL_COLOR_WRITEMASKSet = false
proc GL_COLOR_WRITEMASK*(t: typedesc[GL11]): int32 =
    if not GL11_GL_COLOR_WRITEMASKSet:
        GL11_GL_COLOR_WRITEMASKSet = true
        GL11_GL_COLOR_WRITEMASKValue = 3107
    GL11_GL_COLOR_WRITEMASKValue
var GL11_GL_COMBINEValue: int32
var GL11_GL_COMBINESet = false
proc GL_COMBINE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_COMBINESet:
        GL11_GL_COMBINESet = true
        GL11_GL_COMBINEValue = 34160
    GL11_GL_COMBINEValue
var GL11_GL_COMBINE_ALPHAValue: int32
var GL11_GL_COMBINE_ALPHASet = false
proc GL_COMBINE_ALPHA*(t: typedesc[GL11]): int32 =
    if not GL11_GL_COMBINE_ALPHASet:
        GL11_GL_COMBINE_ALPHASet = true
        GL11_GL_COMBINE_ALPHAValue = 34162
    GL11_GL_COMBINE_ALPHAValue
var GL11_GL_COMBINE_RGBValue: int32
var GL11_GL_COMBINE_RGBSet = false
proc GL_COMBINE_RGB*(t: typedesc[GL11]): int32 =
    if not GL11_GL_COMBINE_RGBSet:
        GL11_GL_COMBINE_RGBSet = true
        GL11_GL_COMBINE_RGBValue = 34161
    GL11_GL_COMBINE_RGBValue
var GL11_GL_CONSTANTValue: int32
var GL11_GL_CONSTANTSet = false
proc GL_CONSTANT*(t: typedesc[GL11]): int32 =
    if not GL11_GL_CONSTANTSet:
        GL11_GL_CONSTANTSet = true
        GL11_GL_CONSTANTValue = 34166
    GL11_GL_CONSTANTValue
var GL11_GL_COORD_REPLACE_OESValue: int32
var GL11_GL_COORD_REPLACE_OESSet = false
proc GL_COORD_REPLACE_OES*(t: typedesc[GL11]): int32 =
    if not GL11_GL_COORD_REPLACE_OESSet:
        GL11_GL_COORD_REPLACE_OESSet = true
        GL11_GL_COORD_REPLACE_OESValue = 34914
    GL11_GL_COORD_REPLACE_OESValue
var GL11_GL_CULL_FACE_MODEValue: int32
var GL11_GL_CULL_FACE_MODESet = false
proc GL_CULL_FACE_MODE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_CULL_FACE_MODESet:
        GL11_GL_CULL_FACE_MODESet = true
        GL11_GL_CULL_FACE_MODEValue = 2885
    GL11_GL_CULL_FACE_MODEValue
var GL11_GL_CURRENT_COLORValue: int32
var GL11_GL_CURRENT_COLORSet = false
proc GL_CURRENT_COLOR*(t: typedesc[GL11]): int32 =
    if not GL11_GL_CURRENT_COLORSet:
        GL11_GL_CURRENT_COLORSet = true
        GL11_GL_CURRENT_COLORValue = 2816
    GL11_GL_CURRENT_COLORValue
var GL11_GL_CURRENT_NORMALValue: int32
var GL11_GL_CURRENT_NORMALSet = false
proc GL_CURRENT_NORMAL*(t: typedesc[GL11]): int32 =
    if not GL11_GL_CURRENT_NORMALSet:
        GL11_GL_CURRENT_NORMALSet = true
        GL11_GL_CURRENT_NORMALValue = 2818
    GL11_GL_CURRENT_NORMALValue
var GL11_GL_CURRENT_TEXTURE_COORDSValue: int32
var GL11_GL_CURRENT_TEXTURE_COORDSSet = false
proc GL_CURRENT_TEXTURE_COORDS*(t: typedesc[GL11]): int32 =
    if not GL11_GL_CURRENT_TEXTURE_COORDSSet:
        GL11_GL_CURRENT_TEXTURE_COORDSSet = true
        GL11_GL_CURRENT_TEXTURE_COORDSValue = 2819
    GL11_GL_CURRENT_TEXTURE_COORDSValue
var GL11_GL_DEPTH_CLEAR_VALUEValue: int32
var GL11_GL_DEPTH_CLEAR_VALUESet = false
proc GL_DEPTH_CLEAR_VALUE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_DEPTH_CLEAR_VALUESet:
        GL11_GL_DEPTH_CLEAR_VALUESet = true
        GL11_GL_DEPTH_CLEAR_VALUEValue = 2931
    GL11_GL_DEPTH_CLEAR_VALUEValue
var GL11_GL_DEPTH_FUNCValue: int32
var GL11_GL_DEPTH_FUNCSet = false
proc GL_DEPTH_FUNC*(t: typedesc[GL11]): int32 =
    if not GL11_GL_DEPTH_FUNCSet:
        GL11_GL_DEPTH_FUNCSet = true
        GL11_GL_DEPTH_FUNCValue = 2932
    GL11_GL_DEPTH_FUNCValue
var GL11_GL_DEPTH_RANGEValue: int32
var GL11_GL_DEPTH_RANGESet = false
proc GL_DEPTH_RANGE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_DEPTH_RANGESet:
        GL11_GL_DEPTH_RANGESet = true
        GL11_GL_DEPTH_RANGEValue = 2928
    GL11_GL_DEPTH_RANGEValue
var GL11_GL_DEPTH_WRITEMASKValue: int32
var GL11_GL_DEPTH_WRITEMASKSet = false
proc GL_DEPTH_WRITEMASK*(t: typedesc[GL11]): int32 =
    if not GL11_GL_DEPTH_WRITEMASKSet:
        GL11_GL_DEPTH_WRITEMASKSet = true
        GL11_GL_DEPTH_WRITEMASKValue = 2930
    GL11_GL_DEPTH_WRITEMASKValue
var GL11_GL_DOT3_RGBValue: int32
var GL11_GL_DOT3_RGBSet = false
proc GL_DOT3_RGB*(t: typedesc[GL11]): int32 =
    if not GL11_GL_DOT3_RGBSet:
        GL11_GL_DOT3_RGBSet = true
        GL11_GL_DOT3_RGBValue = 34478
    GL11_GL_DOT3_RGBValue
var GL11_GL_DOT3_RGBAValue: int32
var GL11_GL_DOT3_RGBASet = false
proc GL_DOT3_RGBA*(t: typedesc[GL11]): int32 =
    if not GL11_GL_DOT3_RGBASet:
        GL11_GL_DOT3_RGBASet = true
        GL11_GL_DOT3_RGBAValue = 34479
    GL11_GL_DOT3_RGBAValue
var GL11_GL_DYNAMIC_DRAWValue: int32
var GL11_GL_DYNAMIC_DRAWSet = false
proc GL_DYNAMIC_DRAW*(t: typedesc[GL11]): int32 =
    if not GL11_GL_DYNAMIC_DRAWSet:
        GL11_GL_DYNAMIC_DRAWSet = true
        GL11_GL_DYNAMIC_DRAWValue = 35048
    GL11_GL_DYNAMIC_DRAWValue
var GL11_GL_ELEMENT_ARRAY_BUFFERValue: int32
var GL11_GL_ELEMENT_ARRAY_BUFFERSet = false
proc GL_ELEMENT_ARRAY_BUFFER*(t: typedesc[GL11]): int32 =
    if not GL11_GL_ELEMENT_ARRAY_BUFFERSet:
        GL11_GL_ELEMENT_ARRAY_BUFFERSet = true
        GL11_GL_ELEMENT_ARRAY_BUFFERValue = 34963
    GL11_GL_ELEMENT_ARRAY_BUFFERValue
var GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGValue: int32
var GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGSet = false
proc GL_ELEMENT_ARRAY_BUFFER_BINDING*(t: typedesc[GL11]): int32 =
    if not GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGSet:
        GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGSet = true
        GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGValue = 34965
    GL11_GL_ELEMENT_ARRAY_BUFFER_BINDINGValue
var GL11_GL_FRONT_FACEValue: int32
var GL11_GL_FRONT_FACESet = false
proc GL_FRONT_FACE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_FRONT_FACESet:
        GL11_GL_FRONT_FACESet = true
        GL11_GL_FRONT_FACEValue = 2886
    GL11_GL_FRONT_FACEValue
var GL11_GL_GENERATE_MIPMAPValue: int32
var GL11_GL_GENERATE_MIPMAPSet = false
proc GL_GENERATE_MIPMAP*(t: typedesc[GL11]): int32 =
    if not GL11_GL_GENERATE_MIPMAPSet:
        GL11_GL_GENERATE_MIPMAPSet = true
        GL11_GL_GENERATE_MIPMAPValue = 33169
    GL11_GL_GENERATE_MIPMAPValue
var GL11_GL_GENERATE_MIPMAP_HINTValue: int32
var GL11_GL_GENERATE_MIPMAP_HINTSet = false
proc GL_GENERATE_MIPMAP_HINT*(t: typedesc[GL11]): int32 =
    if not GL11_GL_GENERATE_MIPMAP_HINTSet:
        GL11_GL_GENERATE_MIPMAP_HINTSet = true
        GL11_GL_GENERATE_MIPMAP_HINTValue = 33170
    GL11_GL_GENERATE_MIPMAP_HINTValue
var GL11_GL_INTERPOLATEValue: int32
var GL11_GL_INTERPOLATESet = false
proc GL_INTERPOLATE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_INTERPOLATESet:
        GL11_GL_INTERPOLATESet = true
        GL11_GL_INTERPOLATEValue = 34165
    GL11_GL_INTERPOLATEValue
var GL11_GL_LINE_WIDTHValue: int32
var GL11_GL_LINE_WIDTHSet = false
proc GL_LINE_WIDTH*(t: typedesc[GL11]): int32 =
    if not GL11_GL_LINE_WIDTHSet:
        GL11_GL_LINE_WIDTHSet = true
        GL11_GL_LINE_WIDTHValue = 2849
    GL11_GL_LINE_WIDTHValue
var GL11_GL_LOGIC_OP_MODEValue: int32
var GL11_GL_LOGIC_OP_MODESet = false
proc GL_LOGIC_OP_MODE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_LOGIC_OP_MODESet:
        GL11_GL_LOGIC_OP_MODESet = true
        GL11_GL_LOGIC_OP_MODEValue = 3056
    GL11_GL_LOGIC_OP_MODEValue
var GL11_GL_MATRIX_MODEValue: int32
var GL11_GL_MATRIX_MODESet = false
proc GL_MATRIX_MODE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_MATRIX_MODESet:
        GL11_GL_MATRIX_MODESet = true
        GL11_GL_MATRIX_MODEValue = 2976
    GL11_GL_MATRIX_MODEValue
var GL11_GL_MAX_CLIP_PLANESValue: int32
var GL11_GL_MAX_CLIP_PLANESSet = false
proc GL_MAX_CLIP_PLANES*(t: typedesc[GL11]): int32 =
    if not GL11_GL_MAX_CLIP_PLANESSet:
        GL11_GL_MAX_CLIP_PLANESSet = true
        GL11_GL_MAX_CLIP_PLANESValue = 3378
    GL11_GL_MAX_CLIP_PLANESValue
var GL11_GL_MODELVIEW_MATRIXValue: int32
var GL11_GL_MODELVIEW_MATRIXSet = false
proc GL_MODELVIEW_MATRIX*(t: typedesc[GL11]): int32 =
    if not GL11_GL_MODELVIEW_MATRIXSet:
        GL11_GL_MODELVIEW_MATRIXSet = true
        GL11_GL_MODELVIEW_MATRIXValue = 2982
    GL11_GL_MODELVIEW_MATRIXValue
var GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue: int32
var GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet = false
proc GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES*(t: typedesc[GL11]): int32 =
    if not GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet:
        GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESSet = true
        GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue = 35213
    GL11_GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OESValue
var GL11_GL_MODELVIEW_STACK_DEPTHValue: int32
var GL11_GL_MODELVIEW_STACK_DEPTHSet = false
proc GL_MODELVIEW_STACK_DEPTH*(t: typedesc[GL11]): int32 =
    if not GL11_GL_MODELVIEW_STACK_DEPTHSet:
        GL11_GL_MODELVIEW_STACK_DEPTHSet = true
        GL11_GL_MODELVIEW_STACK_DEPTHValue = 2979
    GL11_GL_MODELVIEW_STACK_DEPTHValue
var GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGValue: int32
var GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGSet = false
proc GL_NORMAL_ARRAY_BUFFER_BINDING*(t: typedesc[GL11]): int32 =
    if not GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGSet:
        GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGSet = true
        GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGValue = 34967
    GL11_GL_NORMAL_ARRAY_BUFFER_BINDINGValue
var GL11_GL_NORMAL_ARRAY_POINTERValue: int32
var GL11_GL_NORMAL_ARRAY_POINTERSet = false
proc GL_NORMAL_ARRAY_POINTER*(t: typedesc[GL11]): int32 =
    if not GL11_GL_NORMAL_ARRAY_POINTERSet:
        GL11_GL_NORMAL_ARRAY_POINTERSet = true
        GL11_GL_NORMAL_ARRAY_POINTERValue = 32911
    GL11_GL_NORMAL_ARRAY_POINTERValue
var GL11_GL_NORMAL_ARRAY_STRIDEValue: int32
var GL11_GL_NORMAL_ARRAY_STRIDESet = false
proc GL_NORMAL_ARRAY_STRIDE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_NORMAL_ARRAY_STRIDESet:
        GL11_GL_NORMAL_ARRAY_STRIDESet = true
        GL11_GL_NORMAL_ARRAY_STRIDEValue = 32895
    GL11_GL_NORMAL_ARRAY_STRIDEValue
var GL11_GL_NORMAL_ARRAY_TYPEValue: int32
var GL11_GL_NORMAL_ARRAY_TYPESet = false
proc GL_NORMAL_ARRAY_TYPE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_NORMAL_ARRAY_TYPESet:
        GL11_GL_NORMAL_ARRAY_TYPESet = true
        GL11_GL_NORMAL_ARRAY_TYPEValue = 32894
    GL11_GL_NORMAL_ARRAY_TYPEValue
var GL11_GL_OPERAND0_ALPHAValue: int32
var GL11_GL_OPERAND0_ALPHASet = false
proc GL_OPERAND0_ALPHA*(t: typedesc[GL11]): int32 =
    if not GL11_GL_OPERAND0_ALPHASet:
        GL11_GL_OPERAND0_ALPHASet = true
        GL11_GL_OPERAND0_ALPHAValue = 34200
    GL11_GL_OPERAND0_ALPHAValue
var GL11_GL_OPERAND0_RGBValue: int32
var GL11_GL_OPERAND0_RGBSet = false
proc GL_OPERAND0_RGB*(t: typedesc[GL11]): int32 =
    if not GL11_GL_OPERAND0_RGBSet:
        GL11_GL_OPERAND0_RGBSet = true
        GL11_GL_OPERAND0_RGBValue = 34192
    GL11_GL_OPERAND0_RGBValue
var GL11_GL_OPERAND1_ALPHAValue: int32
var GL11_GL_OPERAND1_ALPHASet = false
proc GL_OPERAND1_ALPHA*(t: typedesc[GL11]): int32 =
    if not GL11_GL_OPERAND1_ALPHASet:
        GL11_GL_OPERAND1_ALPHASet = true
        GL11_GL_OPERAND1_ALPHAValue = 34201
    GL11_GL_OPERAND1_ALPHAValue
var GL11_GL_OPERAND1_RGBValue: int32
var GL11_GL_OPERAND1_RGBSet = false
proc GL_OPERAND1_RGB*(t: typedesc[GL11]): int32 =
    if not GL11_GL_OPERAND1_RGBSet:
        GL11_GL_OPERAND1_RGBSet = true
        GL11_GL_OPERAND1_RGBValue = 34193
    GL11_GL_OPERAND1_RGBValue
var GL11_GL_OPERAND2_ALPHAValue: int32
var GL11_GL_OPERAND2_ALPHASet = false
proc GL_OPERAND2_ALPHA*(t: typedesc[GL11]): int32 =
    if not GL11_GL_OPERAND2_ALPHASet:
        GL11_GL_OPERAND2_ALPHASet = true
        GL11_GL_OPERAND2_ALPHAValue = 34202
    GL11_GL_OPERAND2_ALPHAValue
var GL11_GL_OPERAND2_RGBValue: int32
var GL11_GL_OPERAND2_RGBSet = false
proc GL_OPERAND2_RGB*(t: typedesc[GL11]): int32 =
    if not GL11_GL_OPERAND2_RGBSet:
        GL11_GL_OPERAND2_RGBSet = true
        GL11_GL_OPERAND2_RGBValue = 34194
    GL11_GL_OPERAND2_RGBValue
var GL11_GL_POINT_DISTANCE_ATTENUATIONValue: int32
var GL11_GL_POINT_DISTANCE_ATTENUATIONSet = false
proc GL_POINT_DISTANCE_ATTENUATION*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POINT_DISTANCE_ATTENUATIONSet:
        GL11_GL_POINT_DISTANCE_ATTENUATIONSet = true
        GL11_GL_POINT_DISTANCE_ATTENUATIONValue = 33065
    GL11_GL_POINT_DISTANCE_ATTENUATIONValue
var GL11_GL_POINT_FADE_THRESHOLD_SIZEValue: int32
var GL11_GL_POINT_FADE_THRESHOLD_SIZESet = false
proc GL_POINT_FADE_THRESHOLD_SIZE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POINT_FADE_THRESHOLD_SIZESet:
        GL11_GL_POINT_FADE_THRESHOLD_SIZESet = true
        GL11_GL_POINT_FADE_THRESHOLD_SIZEValue = 33064
    GL11_GL_POINT_FADE_THRESHOLD_SIZEValue
var GL11_GL_POINT_SIZEValue: int32
var GL11_GL_POINT_SIZESet = false
proc GL_POINT_SIZE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POINT_SIZESet:
        GL11_GL_POINT_SIZESet = true
        GL11_GL_POINT_SIZEValue = 2833
    GL11_GL_POINT_SIZEValue
var GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue: int32
var GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet = false
proc GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet:
        GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESSet = true
        GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue = 35743
    GL11_GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OESValue
var GL11_GL_POINT_SIZE_ARRAY_OESValue: int32
var GL11_GL_POINT_SIZE_ARRAY_OESSet = false
proc GL_POINT_SIZE_ARRAY_OES*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POINT_SIZE_ARRAY_OESSet:
        GL11_GL_POINT_SIZE_ARRAY_OESSet = true
        GL11_GL_POINT_SIZE_ARRAY_OESValue = 35740
    GL11_GL_POINT_SIZE_ARRAY_OESValue
var GL11_GL_POINT_SIZE_ARRAY_POINTER_OESValue: int32
var GL11_GL_POINT_SIZE_ARRAY_POINTER_OESSet = false
proc GL_POINT_SIZE_ARRAY_POINTER_OES*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POINT_SIZE_ARRAY_POINTER_OESSet:
        GL11_GL_POINT_SIZE_ARRAY_POINTER_OESSet = true
        GL11_GL_POINT_SIZE_ARRAY_POINTER_OESValue = 35212
    GL11_GL_POINT_SIZE_ARRAY_POINTER_OESValue
var GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESValue: int32
var GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESSet = false
proc GL_POINT_SIZE_ARRAY_STRIDE_OES*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESSet:
        GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESSet = true
        GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESValue = 35211
    GL11_GL_POINT_SIZE_ARRAY_STRIDE_OESValue
var GL11_GL_POINT_SIZE_ARRAY_TYPE_OESValue: int32
var GL11_GL_POINT_SIZE_ARRAY_TYPE_OESSet = false
proc GL_POINT_SIZE_ARRAY_TYPE_OES*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POINT_SIZE_ARRAY_TYPE_OESSet:
        GL11_GL_POINT_SIZE_ARRAY_TYPE_OESSet = true
        GL11_GL_POINT_SIZE_ARRAY_TYPE_OESValue = 35210
    GL11_GL_POINT_SIZE_ARRAY_TYPE_OESValue
var GL11_GL_POINT_SIZE_MAXValue: int32
var GL11_GL_POINT_SIZE_MAXSet = false
proc GL_POINT_SIZE_MAX*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POINT_SIZE_MAXSet:
        GL11_GL_POINT_SIZE_MAXSet = true
        GL11_GL_POINT_SIZE_MAXValue = 33063
    GL11_GL_POINT_SIZE_MAXValue
var GL11_GL_POINT_SIZE_MINValue: int32
var GL11_GL_POINT_SIZE_MINSet = false
proc GL_POINT_SIZE_MIN*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POINT_SIZE_MINSet:
        GL11_GL_POINT_SIZE_MINSet = true
        GL11_GL_POINT_SIZE_MINValue = 33062
    GL11_GL_POINT_SIZE_MINValue
var GL11_GL_POINT_SPRITE_OESValue: int32
var GL11_GL_POINT_SPRITE_OESSet = false
proc GL_POINT_SPRITE_OES*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POINT_SPRITE_OESSet:
        GL11_GL_POINT_SPRITE_OESSet = true
        GL11_GL_POINT_SPRITE_OESValue = 34913
    GL11_GL_POINT_SPRITE_OESValue
var GL11_GL_POLYGON_OFFSET_FACTORValue: int32
var GL11_GL_POLYGON_OFFSET_FACTORSet = false
proc GL_POLYGON_OFFSET_FACTOR*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POLYGON_OFFSET_FACTORSet:
        GL11_GL_POLYGON_OFFSET_FACTORSet = true
        GL11_GL_POLYGON_OFFSET_FACTORValue = 32824
    GL11_GL_POLYGON_OFFSET_FACTORValue
var GL11_GL_POLYGON_OFFSET_UNITSValue: int32
var GL11_GL_POLYGON_OFFSET_UNITSSet = false
proc GL_POLYGON_OFFSET_UNITS*(t: typedesc[GL11]): int32 =
    if not GL11_GL_POLYGON_OFFSET_UNITSSet:
        GL11_GL_POLYGON_OFFSET_UNITSSet = true
        GL11_GL_POLYGON_OFFSET_UNITSValue = 10752
    GL11_GL_POLYGON_OFFSET_UNITSValue
var GL11_GL_PREVIOUSValue: int32
var GL11_GL_PREVIOUSSet = false
proc GL_PREVIOUS*(t: typedesc[GL11]): int32 =
    if not GL11_GL_PREVIOUSSet:
        GL11_GL_PREVIOUSSet = true
        GL11_GL_PREVIOUSValue = 34168
    GL11_GL_PREVIOUSValue
var GL11_GL_PRIMARY_COLORValue: int32
var GL11_GL_PRIMARY_COLORSet = false
proc GL_PRIMARY_COLOR*(t: typedesc[GL11]): int32 =
    if not GL11_GL_PRIMARY_COLORSet:
        GL11_GL_PRIMARY_COLORSet = true
        GL11_GL_PRIMARY_COLORValue = 34167
    GL11_GL_PRIMARY_COLORValue
var GL11_GL_PROJECTION_MATRIXValue: int32
var GL11_GL_PROJECTION_MATRIXSet = false
proc GL_PROJECTION_MATRIX*(t: typedesc[GL11]): int32 =
    if not GL11_GL_PROJECTION_MATRIXSet:
        GL11_GL_PROJECTION_MATRIXSet = true
        GL11_GL_PROJECTION_MATRIXValue = 2983
    GL11_GL_PROJECTION_MATRIXValue
var GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue: int32
var GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet = false
proc GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES*(t: typedesc[GL11]): int32 =
    if not GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet:
        GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESSet = true
        GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue = 35214
    GL11_GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OESValue
var GL11_GL_PROJECTION_STACK_DEPTHValue: int32
var GL11_GL_PROJECTION_STACK_DEPTHSet = false
proc GL_PROJECTION_STACK_DEPTH*(t: typedesc[GL11]): int32 =
    if not GL11_GL_PROJECTION_STACK_DEPTHSet:
        GL11_GL_PROJECTION_STACK_DEPTHSet = true
        GL11_GL_PROJECTION_STACK_DEPTHValue = 2980
    GL11_GL_PROJECTION_STACK_DEPTHValue
var GL11_GL_RGB_SCALEValue: int32
var GL11_GL_RGB_SCALESet = false
proc GL_RGB_SCALE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_RGB_SCALESet:
        GL11_GL_RGB_SCALESet = true
        GL11_GL_RGB_SCALEValue = 34163
    GL11_GL_RGB_SCALEValue
var GL11_GL_SAMPLE_BUFFERSValue: int32
var GL11_GL_SAMPLE_BUFFERSSet = false
proc GL_SAMPLE_BUFFERS*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SAMPLE_BUFFERSSet:
        GL11_GL_SAMPLE_BUFFERSSet = true
        GL11_GL_SAMPLE_BUFFERSValue = 32936
    GL11_GL_SAMPLE_BUFFERSValue
var GL11_GL_SAMPLE_COVERAGE_INVERTValue: int32
var GL11_GL_SAMPLE_COVERAGE_INVERTSet = false
proc GL_SAMPLE_COVERAGE_INVERT*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SAMPLE_COVERAGE_INVERTSet:
        GL11_GL_SAMPLE_COVERAGE_INVERTSet = true
        GL11_GL_SAMPLE_COVERAGE_INVERTValue = 32939
    GL11_GL_SAMPLE_COVERAGE_INVERTValue
var GL11_GL_SAMPLE_COVERAGE_VALUEValue: int32
var GL11_GL_SAMPLE_COVERAGE_VALUESet = false
proc GL_SAMPLE_COVERAGE_VALUE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SAMPLE_COVERAGE_VALUESet:
        GL11_GL_SAMPLE_COVERAGE_VALUESet = true
        GL11_GL_SAMPLE_COVERAGE_VALUEValue = 32938
    GL11_GL_SAMPLE_COVERAGE_VALUEValue
var GL11_GL_SAMPLESValue: int32
var GL11_GL_SAMPLESSet = false
proc GL_SAMPLES*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SAMPLESSet:
        GL11_GL_SAMPLESSet = true
        GL11_GL_SAMPLESValue = 32937
    GL11_GL_SAMPLESValue
var GL11_GL_SCISSOR_BOXValue: int32
var GL11_GL_SCISSOR_BOXSet = false
proc GL_SCISSOR_BOX*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SCISSOR_BOXSet:
        GL11_GL_SCISSOR_BOXSet = true
        GL11_GL_SCISSOR_BOXValue = 3088
    GL11_GL_SCISSOR_BOXValue
var GL11_GL_SHADE_MODELValue: int32
var GL11_GL_SHADE_MODELSet = false
proc GL_SHADE_MODEL*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SHADE_MODELSet:
        GL11_GL_SHADE_MODELSet = true
        GL11_GL_SHADE_MODELValue = 2900
    GL11_GL_SHADE_MODELValue
var GL11_GL_SRC0_ALPHAValue: int32
var GL11_GL_SRC0_ALPHASet = false
proc GL_SRC0_ALPHA*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SRC0_ALPHASet:
        GL11_GL_SRC0_ALPHASet = true
        GL11_GL_SRC0_ALPHAValue = 34184
    GL11_GL_SRC0_ALPHAValue
var GL11_GL_SRC0_RGBValue: int32
var GL11_GL_SRC0_RGBSet = false
proc GL_SRC0_RGB*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SRC0_RGBSet:
        GL11_GL_SRC0_RGBSet = true
        GL11_GL_SRC0_RGBValue = 34176
    GL11_GL_SRC0_RGBValue
var GL11_GL_SRC1_ALPHAValue: int32
var GL11_GL_SRC1_ALPHASet = false
proc GL_SRC1_ALPHA*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SRC1_ALPHASet:
        GL11_GL_SRC1_ALPHASet = true
        GL11_GL_SRC1_ALPHAValue = 34185
    GL11_GL_SRC1_ALPHAValue
var GL11_GL_SRC1_RGBValue: int32
var GL11_GL_SRC1_RGBSet = false
proc GL_SRC1_RGB*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SRC1_RGBSet:
        GL11_GL_SRC1_RGBSet = true
        GL11_GL_SRC1_RGBValue = 34177
    GL11_GL_SRC1_RGBValue
var GL11_GL_SRC2_ALPHAValue: int32
var GL11_GL_SRC2_ALPHASet = false
proc GL_SRC2_ALPHA*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SRC2_ALPHASet:
        GL11_GL_SRC2_ALPHASet = true
        GL11_GL_SRC2_ALPHAValue = 34186
    GL11_GL_SRC2_ALPHAValue
var GL11_GL_SRC2_RGBValue: int32
var GL11_GL_SRC2_RGBSet = false
proc GL_SRC2_RGB*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SRC2_RGBSet:
        GL11_GL_SRC2_RGBSet = true
        GL11_GL_SRC2_RGBValue = 34178
    GL11_GL_SRC2_RGBValue
var GL11_GL_STATIC_DRAWValue: int32
var GL11_GL_STATIC_DRAWSet = false
proc GL_STATIC_DRAW*(t: typedesc[GL11]): int32 =
    if not GL11_GL_STATIC_DRAWSet:
        GL11_GL_STATIC_DRAWSet = true
        GL11_GL_STATIC_DRAWValue = 35044
    GL11_GL_STATIC_DRAWValue
var GL11_GL_STENCIL_CLEAR_VALUEValue: int32
var GL11_GL_STENCIL_CLEAR_VALUESet = false
proc GL_STENCIL_CLEAR_VALUE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_STENCIL_CLEAR_VALUESet:
        GL11_GL_STENCIL_CLEAR_VALUESet = true
        GL11_GL_STENCIL_CLEAR_VALUEValue = 2961
    GL11_GL_STENCIL_CLEAR_VALUEValue
var GL11_GL_STENCIL_FAILValue: int32
var GL11_GL_STENCIL_FAILSet = false
proc GL_STENCIL_FAIL*(t: typedesc[GL11]): int32 =
    if not GL11_GL_STENCIL_FAILSet:
        GL11_GL_STENCIL_FAILSet = true
        GL11_GL_STENCIL_FAILValue = 2964
    GL11_GL_STENCIL_FAILValue
var GL11_GL_STENCIL_FUNCValue: int32
var GL11_GL_STENCIL_FUNCSet = false
proc GL_STENCIL_FUNC*(t: typedesc[GL11]): int32 =
    if not GL11_GL_STENCIL_FUNCSet:
        GL11_GL_STENCIL_FUNCSet = true
        GL11_GL_STENCIL_FUNCValue = 2962
    GL11_GL_STENCIL_FUNCValue
var GL11_GL_STENCIL_PASS_DEPTH_FAILValue: int32
var GL11_GL_STENCIL_PASS_DEPTH_FAILSet = false
proc GL_STENCIL_PASS_DEPTH_FAIL*(t: typedesc[GL11]): int32 =
    if not GL11_GL_STENCIL_PASS_DEPTH_FAILSet:
        GL11_GL_STENCIL_PASS_DEPTH_FAILSet = true
        GL11_GL_STENCIL_PASS_DEPTH_FAILValue = 2965
    GL11_GL_STENCIL_PASS_DEPTH_FAILValue
var GL11_GL_STENCIL_PASS_DEPTH_PASSValue: int32
var GL11_GL_STENCIL_PASS_DEPTH_PASSSet = false
proc GL_STENCIL_PASS_DEPTH_PASS*(t: typedesc[GL11]): int32 =
    if not GL11_GL_STENCIL_PASS_DEPTH_PASSSet:
        GL11_GL_STENCIL_PASS_DEPTH_PASSSet = true
        GL11_GL_STENCIL_PASS_DEPTH_PASSValue = 2966
    GL11_GL_STENCIL_PASS_DEPTH_PASSValue
var GL11_GL_STENCIL_REFValue: int32
var GL11_GL_STENCIL_REFSet = false
proc GL_STENCIL_REF*(t: typedesc[GL11]): int32 =
    if not GL11_GL_STENCIL_REFSet:
        GL11_GL_STENCIL_REFSet = true
        GL11_GL_STENCIL_REFValue = 2967
    GL11_GL_STENCIL_REFValue
var GL11_GL_STENCIL_VALUE_MASKValue: int32
var GL11_GL_STENCIL_VALUE_MASKSet = false
proc GL_STENCIL_VALUE_MASK*(t: typedesc[GL11]): int32 =
    if not GL11_GL_STENCIL_VALUE_MASKSet:
        GL11_GL_STENCIL_VALUE_MASKSet = true
        GL11_GL_STENCIL_VALUE_MASKValue = 2963
    GL11_GL_STENCIL_VALUE_MASKValue
var GL11_GL_STENCIL_WRITEMASKValue: int32
var GL11_GL_STENCIL_WRITEMASKSet = false
proc GL_STENCIL_WRITEMASK*(t: typedesc[GL11]): int32 =
    if not GL11_GL_STENCIL_WRITEMASKSet:
        GL11_GL_STENCIL_WRITEMASKSet = true
        GL11_GL_STENCIL_WRITEMASKValue = 2968
    GL11_GL_STENCIL_WRITEMASKValue
var GL11_GL_SUBTRACTValue: int32
var GL11_GL_SUBTRACTSet = false
proc GL_SUBTRACT*(t: typedesc[GL11]): int32 =
    if not GL11_GL_SUBTRACTSet:
        GL11_GL_SUBTRACTSet = true
        GL11_GL_SUBTRACTValue = 34023
    GL11_GL_SUBTRACTValue
var GL11_GL_TEXTURE_BINDING_2DValue: int32
var GL11_GL_TEXTURE_BINDING_2DSet = false
proc GL_TEXTURE_BINDING_2D*(t: typedesc[GL11]): int32 =
    if not GL11_GL_TEXTURE_BINDING_2DSet:
        GL11_GL_TEXTURE_BINDING_2DSet = true
        GL11_GL_TEXTURE_BINDING_2DValue = 32873
    GL11_GL_TEXTURE_BINDING_2DValue
var GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue: int32
var GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet = false
proc GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING*(t: typedesc[GL11]): int32 =
    if not GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet:
        GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGSet = true
        GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue = 34970
    GL11_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDINGValue
var GL11_GL_TEXTURE_COORD_ARRAY_POINTERValue: int32
var GL11_GL_TEXTURE_COORD_ARRAY_POINTERSet = false
proc GL_TEXTURE_COORD_ARRAY_POINTER*(t: typedesc[GL11]): int32 =
    if not GL11_GL_TEXTURE_COORD_ARRAY_POINTERSet:
        GL11_GL_TEXTURE_COORD_ARRAY_POINTERSet = true
        GL11_GL_TEXTURE_COORD_ARRAY_POINTERValue = 32914
    GL11_GL_TEXTURE_COORD_ARRAY_POINTERValue
var GL11_GL_TEXTURE_COORD_ARRAY_SIZEValue: int32
var GL11_GL_TEXTURE_COORD_ARRAY_SIZESet = false
proc GL_TEXTURE_COORD_ARRAY_SIZE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_TEXTURE_COORD_ARRAY_SIZESet:
        GL11_GL_TEXTURE_COORD_ARRAY_SIZESet = true
        GL11_GL_TEXTURE_COORD_ARRAY_SIZEValue = 32904
    GL11_GL_TEXTURE_COORD_ARRAY_SIZEValue
var GL11_GL_TEXTURE_COORD_ARRAY_STRIDEValue: int32
var GL11_GL_TEXTURE_COORD_ARRAY_STRIDESet = false
proc GL_TEXTURE_COORD_ARRAY_STRIDE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_TEXTURE_COORD_ARRAY_STRIDESet:
        GL11_GL_TEXTURE_COORD_ARRAY_STRIDESet = true
        GL11_GL_TEXTURE_COORD_ARRAY_STRIDEValue = 32906
    GL11_GL_TEXTURE_COORD_ARRAY_STRIDEValue
var GL11_GL_TEXTURE_COORD_ARRAY_TYPEValue: int32
var GL11_GL_TEXTURE_COORD_ARRAY_TYPESet = false
proc GL_TEXTURE_COORD_ARRAY_TYPE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_TEXTURE_COORD_ARRAY_TYPESet:
        GL11_GL_TEXTURE_COORD_ARRAY_TYPESet = true
        GL11_GL_TEXTURE_COORD_ARRAY_TYPEValue = 32905
    GL11_GL_TEXTURE_COORD_ARRAY_TYPEValue
var GL11_GL_TEXTURE_MATRIXValue: int32
var GL11_GL_TEXTURE_MATRIXSet = false
proc GL_TEXTURE_MATRIX*(t: typedesc[GL11]): int32 =
    if not GL11_GL_TEXTURE_MATRIXSet:
        GL11_GL_TEXTURE_MATRIXSet = true
        GL11_GL_TEXTURE_MATRIXValue = 2984
    GL11_GL_TEXTURE_MATRIXValue
var GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue: int32
var GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet = false
proc GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES*(t: typedesc[GL11]): int32 =
    if not GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet:
        GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESSet = true
        GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue = 35215
    GL11_GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OESValue
var GL11_GL_TEXTURE_STACK_DEPTHValue: int32
var GL11_GL_TEXTURE_STACK_DEPTHSet = false
proc GL_TEXTURE_STACK_DEPTH*(t: typedesc[GL11]): int32 =
    if not GL11_GL_TEXTURE_STACK_DEPTHSet:
        GL11_GL_TEXTURE_STACK_DEPTHSet = true
        GL11_GL_TEXTURE_STACK_DEPTHValue = 2981
    GL11_GL_TEXTURE_STACK_DEPTHValue
var GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGValue: int32
var GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGSet = false
proc GL_VERTEX_ARRAY_BUFFER_BINDING*(t: typedesc[GL11]): int32 =
    if not GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGSet:
        GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGSet = true
        GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGValue = 34966
    GL11_GL_VERTEX_ARRAY_BUFFER_BINDINGValue
var GL11_GL_VERTEX_ARRAY_POINTERValue: int32
var GL11_GL_VERTEX_ARRAY_POINTERSet = false
proc GL_VERTEX_ARRAY_POINTER*(t: typedesc[GL11]): int32 =
    if not GL11_GL_VERTEX_ARRAY_POINTERSet:
        GL11_GL_VERTEX_ARRAY_POINTERSet = true
        GL11_GL_VERTEX_ARRAY_POINTERValue = 32910
    GL11_GL_VERTEX_ARRAY_POINTERValue
var GL11_GL_VERTEX_ARRAY_SIZEValue: int32
var GL11_GL_VERTEX_ARRAY_SIZESet = false
proc GL_VERTEX_ARRAY_SIZE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_VERTEX_ARRAY_SIZESet:
        GL11_GL_VERTEX_ARRAY_SIZESet = true
        GL11_GL_VERTEX_ARRAY_SIZEValue = 32890
    GL11_GL_VERTEX_ARRAY_SIZEValue
var GL11_GL_VERTEX_ARRAY_STRIDEValue: int32
var GL11_GL_VERTEX_ARRAY_STRIDESet = false
proc GL_VERTEX_ARRAY_STRIDE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_VERTEX_ARRAY_STRIDESet:
        GL11_GL_VERTEX_ARRAY_STRIDESet = true
        GL11_GL_VERTEX_ARRAY_STRIDEValue = 32892
    GL11_GL_VERTEX_ARRAY_STRIDEValue
var GL11_GL_VERTEX_ARRAY_TYPEValue: int32
var GL11_GL_VERTEX_ARRAY_TYPESet = false
proc GL_VERTEX_ARRAY_TYPE*(t: typedesc[GL11]): int32 =
    if not GL11_GL_VERTEX_ARRAY_TYPESet:
        GL11_GL_VERTEX_ARRAY_TYPESet = true
        GL11_GL_VERTEX_ARRAY_TYPEValue = 32891
    GL11_GL_VERTEX_ARRAY_TYPEValue
var GL11_GL_VIEWPORTValue: int32
var GL11_GL_VIEWPORTSet = false
proc GL_VIEWPORT*(t: typedesc[GL11]): int32 =
    if not GL11_GL_VIEWPORTSet:
        GL11_GL_VIEWPORTSet = true
        GL11_GL_VIEWPORTValue = 2978
    GL11_GL_VIEWPORTValue
var GL11_GL_WRITE_ONLYValue: int32
var GL11_GL_WRITE_ONLYSet = false
proc GL_WRITE_ONLY*(t: typedesc[GL11]): int32 =
    if not GL11_GL_WRITE_ONLYSet:
        GL11_GL_WRITE_ONLYSet = true
        GL11_GL_WRITE_ONLYValue = 35001
    GL11_GL_WRITE_ONLYValue

method glBindBuffer*(this: GL11, target: int32, buffer: int32) {.base.} =
        raise newJException("AbstractMethodError", "glBindBuffer")

method glBufferData*(this: GL11, target: int32, size: int32, data: Buffer, usage: int32) {.base.} =
        raise newJException("AbstractMethodError", "glBufferData")

method glBufferSubData*(this: GL11, target: int32, offset: int32, size: int32, data: Buffer) {.base.} =
        raise newJException("AbstractMethodError", "glBufferSubData")

method glClipPlanef*(this: GL11, plane: int32, equation: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glClipPlanef")

method glClipPlanef*(this: GL11, plane: int32, equation: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glClipPlanef")

method glColor4ub*(this: GL11, red: int8, green: int8, blue: int8, alpha: int8) {.base.} =
        raise newJException("AbstractMethodError", "glColor4ub")

method glColorPointer*(this: GL11, size: int32, `type`: int32, stride: int32, offset: int32) =
        raise newJException("AbstractMethodError", "glColorPointer")

method glDeleteBuffers*(this: GL11, n: int32, buffers: JArray[int32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glDeleteBuffers")

method glDeleteBuffers*(this: GL11, n: int32, buffers: IntBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glDeleteBuffers")

method glDrawElements*(this: GL11, mode: int32, count: int32, `type`: int32, offset: int32) =
        raise newJException("AbstractMethodError", "glDrawElements")

method glGenBuffers*(this: GL11, n: int32, buffers: JArray[int32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glGenBuffers")

method glGenBuffers*(this: GL11, n: int32, buffers: IntBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glGenBuffers")

method glGetBufferParameteriv*(this: GL11, target: int32, pname: int32, params: JArray[int32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glGetBufferParameteriv")

method glGetBufferParameteriv*(this: GL11, target: int32, pname: int32, params: IntBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glGetBufferParameteriv")

method glGetClipPlanef*(this: GL11, pname: int32, eqn: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glGetClipPlanef")

method glGetClipPlanef*(this: GL11, pname: int32, eqn: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glGetClipPlanef")

method glGetFloatv*(this: GL11, pname: int32, params: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glGetFloatv")

method glGetFloatv*(this: GL11, pname: int32, params: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glGetFloatv")

method glGetLightfv*(this: GL11, light: int32, pname: int32, params: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glGetLightfv")

method glGetLightfv*(this: GL11, light: int32, pname: int32, params: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glGetLightfv")

method glGetMaterialfv*(this: GL11, face: int32, pname: int32, params: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glGetMaterialfv")

method glGetMaterialfv*(this: GL11, face: int32, pname: int32, params: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glGetMaterialfv")

method glGetTexEnviv*(this: GL11, env: int32, pname: int32, params: JArray[int32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glGetTexEnviv")

method glGetTexEnviv*(this: GL11, env: int32, pname: int32, params: IntBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glGetTexEnviv")

method glGetTexParameterfv*(this: GL11, target: int32, pname: int32, params: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glGetTexParameterfv")

method glGetTexParameterfv*(this: GL11, target: int32, pname: int32, params: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glGetTexParameterfv")

method glGetTexParameteriv*(this: GL11, target: int32, pname: int32, params: JArray[int32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glGetTexParameteriv")

method glGetTexParameteriv*(this: GL11, target: int32, pname: int32, params: IntBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glGetTexParameteriv")

method glIsBuffer*(this: GL11, buffer: int32): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "glIsBuffer")

method glIsEnabled*(this: GL11, cap: int32): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "glIsEnabled")

method glIsTexture*(this: GL11, texture: int32): bool {.base, discardable.} =
        raise newJException("AbstractMethodError", "glIsTexture")

method glNormalPointer*(this: GL11, `type`: int32, stride: int32, offset: int32) =
        raise newJException("AbstractMethodError", "glNormalPointer")

method glPointParameterf*(this: GL11, pname: int32, param: float32) {.base.} =
        raise newJException("AbstractMethodError", "glPointParameterf")

method glPointParameterfv*(this: GL11, pname: int32, params: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glPointParameterfv")

method glPointParameterfv*(this: GL11, pname: int32, params: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glPointParameterfv")

method glTexCoordPointer*(this: GL11, size: int32, `type`: int32, stride: int32, offset: int32) =
        raise newJException("AbstractMethodError", "glTexCoordPointer")

method glTexEnvi*(this: GL11, target: int32, pname: int32, param: int32) {.base.} =
        raise newJException("AbstractMethodError", "glTexEnvi")

method glTexEnviv*(this: GL11, target: int32, pname: int32, params: JArray[int32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glTexEnviv")

method glTexEnviv*(this: GL11, target: int32, pname: int32, params: IntBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glTexEnviv")

method glTexParameterfv*(this: GL11, target: int32, pname: int32, params: JArray[float32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glTexParameterfv")

method glTexParameterfv*(this: GL11, target: int32, pname: int32, params: FloatBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glTexParameterfv")

method glTexParameteriv*(this: GL11, target: int32, pname: int32, params: JArray[int32], offset: int32) {.base.} =
        raise newJException("AbstractMethodError", "glTexParameteriv")

method glTexParameteriv*(this: GL11, target: int32, pname: int32, params: IntBuffer) {.base.} =
        raise newJException("AbstractMethodError", "glTexParameteriv")

method glVertexPointer*(this: GL11, size: int32, `type`: int32, stride: int32, offset: int32) =
        raise newJException("AbstractMethodError", "glVertexPointer")

