.class public final enum Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;
.super Ljava/lang/Enum;
.source "TiffPlanarConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

.field public static final enum CHUNKY:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

.field public static final enum PLANAR:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;


# instance fields
.field public final codeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    const-string v1, "CHUNKY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->CHUNKY:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    .line 2
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    const-string v4, "PLANAR"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->PLANAR:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    new-array v4, v5, [Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->$VALUES:[Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->codeValue:I

    return-void
.end method

.method public static lenientValueOf(I)Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->CHUNKY:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->PLANAR:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->CHUNKY:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->$VALUES:[Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    return-object v0
.end method
