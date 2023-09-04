.class public Lorg/apache/commons/imaging/formats/png/PngImageInfo;
.super Lorg/apache/commons/imaging/ImageInfo;
.source "PngImageInfo.java"


# instance fields
.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/PngText;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lorg/apache/commons/imaging/formats/png/PhysicalScale;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;Ljava/util/List;Lorg/apache/commons/imaging/formats/png/PhysicalScale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/imaging/ImageFormat;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IIFIFIZZZ",
            "Lorg/apache/commons/imaging/ImageInfo$ColorType;",
            "Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/PngText;",
            ">;",
            "Lorg/apache/commons/imaging/formats/png/PhysicalScale;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct/range {p0 .. p18}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    move-object/from16 v1, p19

    .line 2
    iput-object v1, v0, Lorg/apache/commons/imaging/formats/png/PngImageInfo;->t:Ljava/util/List;

    move-object/from16 v1, p20

    .line 3
    iput-object v1, v0, Lorg/apache/commons/imaging/formats/png/PngImageInfo;->u:Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    return-void
.end method


# virtual methods
.method public getPhysicalScale()Lorg/apache/commons/imaging/formats/png/PhysicalScale;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/PngImageInfo;->u:Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    return-object v0
.end method

.method public getTextChunks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/PngText;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/PngImageInfo;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
