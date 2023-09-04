.class public Lcom/manateeworks/BarcodeScanner;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manateeworks/BarcodeScanner$MWLocation;,
        Lcom/manateeworks/BarcodeScanner$MWResult;,
        Lcom/manateeworks/BarcodeScanner$MWResults;
    }
.end annotation


# static fields
.field public static final FOUND_11:I = 0x16

.field public static final FOUND_128:I = 0xb

.field public static final FOUND_128_GS1:I = 0x14

.field public static final FOUND_25_IATA:I = 0x18

.field public static final FOUND_25_INTERLEAVED:I = 0xf

.field public static final FOUND_25_STANDARD:I = 0x10

.field public static final FOUND_39:I = 0x2

.field public static final FOUND_93:I = 0x11

.field public static final FOUND_AZTEC:I = 0xe

.field public static final FOUND_CODABAR:I = 0x12

.field public static final FOUND_DM:I = 0x1

.field public static final FOUND_DOTCODE:I = 0x13

.field public static final FOUND_EAN_13:I = 0x7

.field public static final FOUND_EAN_8:I = 0x8

.field public static final FOUND_ITF14:I = 0x15

.field public static final FOUND_MSI:I = 0x17

.field public static final FOUND_NONE:I = 0x0

.field public static final FOUND_PDF:I = 0xc

.field public static final FOUND_QR:I = 0xd

.field public static final FOUND_RSS_14:I = 0x3

.field public static final FOUND_RSS_14_STACK:I = 0x4

.field public static final FOUND_RSS_EXP:I = 0x6

.field public static final FOUND_RSS_LIM:I = 0x5

.field public static final FOUND_UPC_A:I = 0x9

.field public static final FOUND_UPC_E:I = 0xa

.field public static final MWB_CFG_CODABAR_INCLUDE_STARTSTOP:I = 0x1

.field public static final MWB_CFG_CODE11_REQ_DOUBLE_CHKSUM:I = 0x2

.field public static final MWB_CFG_CODE11_REQ_SINGLE_CHKSUM:I = 0x1

.field public static final MWB_CFG_CODE25_REQ_CHKSUM:I = 0x1

.field public static final MWB_CFG_CODE39_DONT_REQUIRE_STOP:I = 0x4

.field public static final MWB_CFG_CODE39_EXTENDED_MODE:I = 0x8

.field public static final MWB_CFG_CODE39_REQUIRE_CHECKSUM:I = 0x2

.field public static final MWB_CFG_CODE93_EXTENDED_MODE:I = 0x8

.field public static final MWB_CFG_EANUPC_DISABLE_ADDON:I = 0x1

.field public static final MWB_CFG_GLOBAL_CALCULATE_1D_LOCATION:I = 0x10

.field public static final MWB_CFG_GLOBAL_HORIZONTAL_SHARPENING:I = 0x1

.field public static final MWB_CFG_GLOBAL_ROTATE180:I = 0x8

.field public static final MWB_CFG_GLOBAL_ROTATE90:I = 0x4

.field public static final MWB_CFG_GLOBAL_SHARPENING:I = 0x3

.field public static final MWB_CFG_GLOBAL_USE_CENTRIC_SCANNING:I = 0x40

.field public static final MWB_CFG_GLOBAL_VEIRIFY_1D_LOCATION:I = 0x20

.field public static final MWB_CFG_GLOBAL_VERTICAL_SHARPENING:I = 0x2

.field public static final MWB_CFG_MSI_REQ_1010_CHKSUM:I = 0x2

.field public static final MWB_CFG_MSI_REQ_10_CHKSUM:I = 0x1

.field public static final MWB_CFG_MSI_REQ_1110_IBM_CHKSUM:I = 0x10

.field public static final MWB_CFG_MSI_REQ_1110_NCR_CHKSUM:I = 0x20

.field public static final MWB_CFG_MSI_REQ_11_IBM_CHKSUM:I = 0x4

.field public static final MWB_CFG_MSI_REQ_11_NCR_CHKSUM:I = 0x8

.field public static final MWB_CODE_MASK_11:I = 0x1000

.field public static final MWB_CODE_MASK_128:I = 0x20

.field public static final MWB_CODE_MASK_25:I = 0x100

.field public static final MWB_CODE_MASK_39:I = 0x8

.field public static final MWB_CODE_MASK_93:I = 0x200

.field public static final MWB_CODE_MASK_ALL:I = -0x1

.field public static final MWB_CODE_MASK_AZTEC:I = 0x80

.field public static final MWB_CODE_MASK_CODABAR:I = 0x400

.field public static final MWB_CODE_MASK_DM:I = 0x2

.field public static final MWB_CODE_MASK_DOTCODE:I = 0x800

.field public static final MWB_CODE_MASK_EANUPC:I = 0x10

.field public static final MWB_CODE_MASK_MSI:I = 0x2000

.field public static final MWB_CODE_MASK_NONE:I = 0x0

.field public static final MWB_CODE_MASK_PDF:I = 0x40

.field public static final MWB_CODE_MASK_QR:I = 0x1

.field public static final MWB_CODE_MASK_RSS:I = 0x4

.field public static final MWB_PAR_ID_ECI_MODE:I = 0x8

.field public static final MWB_PAR_ID_RESULT_PREFIX:I = 0x10

.field public static final MWB_PAR_VALUE_ECI_DISABLED:I = 0x0

.field public static final MWB_PAR_VALUE_ECI_ENABLED:I = 0x1

.field public static final MWB_PAR_VALUE_RESULT_PREFIX_ALWAYS:I = 0x1

.field public static final MWB_PAR_VALUE_RESULT_PREFIX_DEFAULT:I = 0x2

.field public static final MWB_PAR_VALUE_RESULT_PREFIX_NEVER:I = 0x0

.field public static final MWB_RESULT_FT_BYTES:I = 0x1

.field public static final MWB_RESULT_FT_IMAGE_HEIGHT:I = 0x9

.field public static final MWB_RESULT_FT_IMAGE_WIDTH:I = 0x8

.field public static final MWB_RESULT_FT_ISGS1:I = 0x6

.field public static final MWB_RESULT_FT_LOCATION:I = 0x7

.field public static final MWB_RESULT_FT_PARSER_BYTES:I = 0xa

.field public static final MWB_RESULT_FT_SUBTYPE:I = 0x4

.field public static final MWB_RESULT_FT_SUCCESS:I = 0x5

.field public static final MWB_RESULT_FT_TEXT:I = 0x2

.field public static final MWB_RESULT_FT_TYPE:I = 0x3

.field public static final MWB_RESULT_TYPE_MW:I = 0x2

.field public static final MWB_RESULT_TYPE_RAW:I = 0x1

.field public static final MWB_RT_BAD_PARAM:I = -0x3

.field public static final MWB_RT_FAIL:I = -0x1

.field public static final MWB_RT_NOT_SUPPORTED:I = -0x2

.field public static final MWB_RT_OK:I = 0x0

.field public static final MWB_SCANDIRECTION_AUTODETECT:I = 0x8

.field public static final MWB_SCANDIRECTION_HORIZONTAL:I = 0x1

.field public static final MWB_SCANDIRECTION_OMNI:I = 0x4

.field public static final MWB_SCANDIRECTION_VERTICAL:I = 0x2

.field public static final MWB_SUBC_MASK_C25_INTERLEAVED:I = 0x1

.field public static final MWB_SUBC_MASK_C25_ITF14:I = 0x4

.field public static final MWB_SUBC_MASK_C25_STANDARD:I = 0x2

.field public static final MWB_SUBC_MASK_EANUPC_EAN_13:I = 0x1

.field public static final MWB_SUBC_MASK_EANUPC_EAN_8:I = 0x2

.field public static final MWB_SUBC_MASK_EANUPC_UPC_A:I = 0x4

.field public static final MWB_SUBC_MASK_EANUPC_UPC_E:I = 0x8

.field public static final MWB_SUBC_MASK_RSS_14:I = 0x1

.field public static final MWB_SUBC_MASK_RSS_EXP:I = 0x8

.field public static final MWB_SUBC_MASK_RSS_LIM:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BarcodeScannerLib"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native MWBcleanupLib()I
.end method

.method public static native MWBgetActiveCodes()I
.end method

.method public static native MWBgetBarcodeLocation()[F
.end method

.method public static native MWBgetDirection()I
.end method

.method public static native MWBgetLastType()I
.end method

.method public static native MWBgetLibVersion()I
.end method

.method public static native MWBgetResultType()I
.end method

.method public static MWBgetScanningRect(I)Landroid/graphics/RectF;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/manateeworks/BarcodeScanner;->MWBgetScanningRectArray(I)[F

    move-result-object p0

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x3

    aget p0, p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static native MWBgetScanningRectArray(I)[F
.end method

.method public static native MWBgetSupportedCodes()I
.end method

.method public static native MWBinit(Landroid/app/Activity;)I
.end method

.method public static native MWBisLastGS1()I
.end method

.method public static native MWBregisterCode(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native MWBscanGrayscaleImage([BII)[B
.end method

.method public static native MWBsetActiveCodes(I)I
.end method

.method public static native MWBsetActiveSubcodes(II)I
.end method

.method public static native MWBsetDirection(I)I
.end method

.method public static native MWBsetDuplicate([BI)V
.end method

.method public static native MWBsetDuplicatesTimeout(I)I
.end method

.method public static native MWBsetFlags(II)I
.end method

.method public static native MWBsetLevel(I)I
.end method

.method public static native MWBsetMinLength(II)I
.end method

.method public static native MWBsetParam(III)I
.end method

.method public static native MWBsetResultType(I)I
.end method

.method public static native MWBsetScanningRect(IFFFF)I
.end method

.method public static MWBsetScanningRect(ILandroid/graphics/Rect;)I
    .locals 4

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p1

    int-to-float p1, v3

    invoke-static {p0, v0, v1, v2, p1}, Lcom/manateeworks/BarcodeScanner;->MWBsetScanningRect(IFFFF)I

    move-result p0

    return p0
.end method

.method public static native MWBvalidateVIN([B)I
.end method
