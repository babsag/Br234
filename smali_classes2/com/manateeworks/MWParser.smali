.class public Lcom/manateeworks/MWParser;
.super Ljava/lang/Object;
.source "MWParser.java"


# static fields
.field public static final MWB_RT_BAD_PARAM:I = -0x3

.field public static final MWB_RT_FAIL:I = -0x1

.field public static final MWB_RT_NOT_SUPPORTED:I = -0x2

.field public static final MWB_RT_OK:I = 0x0

.field public static final MWP_PARSER_MASK_AAMVA:I = 0x8

.field public static final MWP_PARSER_MASK_GS1:I = 0x1

.field public static final MWP_PARSER_MASK_HIBC:I = 0x10

.field public static final MWP_PARSER_MASK_ISBT:I = 0x4

.field public static final MWP_PARSER_MASK_IUID:I = 0x2

.field public static final MWP_PARSER_MASK_NONE:I = 0x0

.field public static final UID_ERROR_DUPLICATE_DQ:D = -15.0

.field public static final UID_ERROR_DUPLICATE_EI:D = -19.0

.field public static final UID_ERROR_DUPLICATE_LOT:D = -17.0

.field public static final UID_ERROR_DUPLICATE_SN:D = -18.0

.field public static final UID_ERROR_DUPLICATE_UII:D = -16.0

.field public static final UID_ERROR_EOT_MISSING:D = -10.0

.field public static final UID_ERROR_GS_MISSING:D = -8.0

.field public static final UID_ERROR_INVALID_CAGE:D = -3.1

.field public static final UID_ERROR_INVALID_DODAAC:D = -3.3

.field public static final UID_ERROR_INVALID_DUNS:D = -3.2

.field public static final UID_ERROR_INVALID_EI:D = -3.0

.field public static final UID_ERROR_INVALID_FORMAT:D = -2.0

.field public static final UID_ERROR_INVALID_GS1COMP:D = -3.4

.field public static final UID_ERROR_INVALID_HEADER:D = -1.0

.field public static final UID_ERROR_INVALID_IAC:D = -22.0

.field public static final UID_ERROR_INVALID_LOT:D = -7.0

.field public static final UID_ERROR_INVALID_PN:D = -4.0

.field public static final UID_ERROR_INVALID_SN:D = -5.0

.field public static final UID_ERROR_INVALID_TEI:D = -23.0

.field public static final UID_ERROR_INVALID_UII:D = -6.0

.field public static final UID_ERROR_LOT_PN_CONFLICT:D = -20.0

.field public static final UID_ERROR_MISSING_REQ:D = -21.0

.field public static final UID_ERROR_NO_EI:D = -12.0

.field public static final UID_ERROR_NO_LOT:D = -14.0

.field public static final UID_ERROR_NO_PN:D = -13.0

.field public static final UID_ERROR_NO_SN:D = -11.0

.field public static final UID_ERROR_RS_MISSING:D = -9.0

.field public static final UID_WARN_EXTRA_CHARS:D = 91.0

.field public static final UID_WARN_OBSOLETE_FORMAT:D = 95.0

.field public static final UID_WARN_SPACE_AROUND:D = 93.0

.field public static final UID_WARN_UNKNOWN_DQ:D = 94.0

.field public static final UID_WARN_UNNEEDED_DATA:D = 92.0


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

.method public static native MWBgetLibVersion()I
.end method

.method public static native MWPgetFormattedText(I[B)Ljava/lang/String;
.end method

.method public static native MWPgetJSON(I[B)Ljava/lang/String;
.end method

.method public static native MWPgetSupportedParsers()I
.end method

.method public static native MWPregisterParser(ILjava/lang/String;Ljava/lang/String;)I
.end method
