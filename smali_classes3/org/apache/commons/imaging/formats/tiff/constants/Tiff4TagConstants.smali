.class public final Lorg/apache/commons/imaging/formats/tiff/constants/Tiff4TagConstants;
.super Ljava/lang/Object;
.source "Tiff4TagConstants.java"


# static fields
.field public static final ALL_TIFF_4_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_RESPONSE_UNIT_VALUE_0_00001:I = 0x5

.field public static final COLOR_RESPONSE_UNIT_VALUE_0_0001:I = 0x4

.field public static final COLOR_RESPONSE_UNIT_VALUE_0_001:I = 0x3

.field public static final COLOR_RESPONSE_UNIT_VALUE_0_01:I = 0x2

.field public static final COLOR_RESPONSE_UNIT_VALUE_0_1:I = 0x1

.field public static final TIFF_TAG_COLOR_RESPONSE_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_ROOT:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "ColorResponseUnit"

    const/16 v3, 0x12c

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Tiff4TagConstants;->TIFF_TAG_COLOR_RESPONSE_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Tiff4TagConstants;->ALL_TIFF_4_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
