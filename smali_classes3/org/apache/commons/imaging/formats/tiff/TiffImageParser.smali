.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "TiffImageParser.java"

# interfaces
.implements Lorg/apache/commons/imaging/common/XmpEmbeddable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/ImageParser<",
        "Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;",
        ">;",
        "Lorg/apache/commons/imaging/common/XmpEmbeddable;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getExtensions()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    return-void
.end method

.method private a(Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Ljava/awt/Rectangle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->isSubImageSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->getSubImageX()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->getSubImageY()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->getSubImageWidth()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->getSubImageHeight()I

    move-result p1

    .line 6
    new-instance v3, Ljava/awt/Rectangle;

    invoke-direct {v3, v0, v1, v2, p1}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v3

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;II[IIIII)Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move v0, p2

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 1
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIFF: Unknown fPhotometricInterpretation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2
    :pswitch_0
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;

    move-object v2, v0

    move/from16 v3, p6

    move-object v4, p4

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;-><init>(I[IIII)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCieLab;

    move-object v1, v0

    move/from16 v2, p6

    move-object v3, p4

    move v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCieLab;-><init>(I[IIII)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;

    move-object v1, v0

    move/from16 v2, p6

    move-object v3, p4

    move v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;-><init>(I[IIII)V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCmyk;

    move-object v1, v0

    move/from16 v2, p6

    move-object v3, p4

    move v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCmyk;-><init>(I[IIII)V

    return-object v0

    .line 6
    :cond_3
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COLOR_MAP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    move-object v3, p1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v9

    shl-int v0, v1, p3

    mul-int/lit8 v0, v0, 0x3

    .line 8
    array-length v1, v9

    if-ne v1, v0, :cond_4

    .line 9
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;

    move-object v3, v0

    move/from16 v4, p6

    move-object v5, p4

    move v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;-><init>(I[IIII[I)V

    return-object v0

    .line 10
    :cond_4
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tiff: fColorMap.length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")!=expectedColormapSize ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_5
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;

    move-object v2, v0

    move/from16 v3, p6

    move-object v4, p4

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;-><init>(I[IIII)V

    return-object v0

    :cond_6
    if-nez v0, :cond_7

    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 12
    :goto_0
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;

    move-object v2, v0

    move/from16 v3, p6

    move-object v4, p4

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;-><init>(I[IIIIZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x804c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method c(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 1
    iget-object v0, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    if-eqz v0, :cond_18

    if-nez p3, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getDefaultParameters()Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    .line 3
    :goto_0
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_SAMPLE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;Z)[S

    move-result-object v2

    if-eqz v2, :cond_17

    .line 4
    array-length v4, v2

    if-lt v4, v3, :cond_17

    .line 5
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_SAMPLES_PER_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v1, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v4

    move v12, v4

    goto :goto_1

    :cond_1
    const/4 v12, 0x1

    :goto_1
    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    .line 7
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v4

    .line 9
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v6

    move-object v13, v4

    move v4, v6

    goto :goto_2

    :cond_2
    move-object v13, v4

    move v4, v12

    .line 10
    :goto_2
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COMPRESSION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 11
    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)S

    move-result v6

    goto :goto_3

    :cond_3
    const/4 v6, 0x1

    :goto_3
    const v7, 0xffff

    and-int v14, v6, v7

    .line 12
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 13
    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;)I

    move-result v15

    .line 14
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 15
    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;)I

    move-result v11

    move-object/from16 v10, p0

    .line 16
    invoke-direct {v10, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->a(Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Ljava/awt/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 17
    iget v6, v0, Ljava/awt/Rectangle;->width:I

    if-lez v6, :cond_9

    .line 18
    iget v6, v0, Ljava/awt/Rectangle;->height:I

    if-lez v6, :cond_8

    .line 19
    iget v6, v0, Ljava/awt/Rectangle;->x:I

    if-ltz v6, :cond_7

    iget v6, v0, Ljava/awt/Rectangle;->x:I

    if-ge v6, v15, :cond_7

    .line 20
    iget v6, v0, Ljava/awt/Rectangle;->x:I

    iget v7, v0, Ljava/awt/Rectangle;->width:I

    add-int/2addr v6, v7

    if-gt v6, v15, :cond_6

    .line 21
    iget v6, v0, Ljava/awt/Rectangle;->y:I

    if-ltz v6, :cond_5

    iget v6, v0, Ljava/awt/Rectangle;->y:I

    if-ge v6, v11, :cond_5

    .line 22
    iget v6, v0, Ljava/awt/Rectangle;->y:I

    iget v7, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v6, v7

    if-gt v6, v11, :cond_4

    .line 23
    iget v6, v0, Ljava/awt/Rectangle;->x:I

    if-nez v6, :cond_a

    iget v6, v0, Ljava/awt/Rectangle;->y:I

    if-nez v6, :cond_a

    iget v6, v0, Ljava/awt/Rectangle;->width:I

    if-ne v6, v15, :cond_a

    iget v6, v0, Ljava/awt/Rectangle;->height:I

    if-ne v6, v11, :cond_a

    const/4 v0, 0x0

    goto :goto_4

    .line 24
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "subimage (y+height) is outside raster"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_5
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "subimage y is outside raster"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_6
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "subimage (x+width) is outside raster"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_7
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "subimage x is outside raster"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_8
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "negative or zero subimage height"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_9
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "negative or zero subimage width"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_a
    :goto_4
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PREDICTOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v6

    const/4 v7, -0x1

    if-eqz v6, :cond_b

    .line 31
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v6

    move v9, v6

    goto :goto_5

    :cond_b
    const/4 v9, -0x1

    .line 32
    :goto_5
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PLANAR_CONFIGURATION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v6

    if-nez v6, :cond_c

    .line 33
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->CHUNKY:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    goto :goto_6

    .line 34
    :cond_c
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v6

    invoke-static {v6}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->lenientValueOf(I)Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    move-result-object v6

    :goto_6
    move-object/from16 v16, v6

    .line 35
    aget-short v6, v2, v5

    const/16 v8, 0x20

    const/4 v3, 0x3

    if-ne v6, v3, :cond_10

    .line 36
    aget v2, v13, v5

    if-eq v2, v8, :cond_e

    aget v2, v13, v5

    const/16 v6, 0x40

    if-ne v2, v6, :cond_d

    goto :goto_7

    .line 37
    :cond_d
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIFF floating-point data uses unsupported bits-per-sample: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v13, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_7
    if-eq v9, v7, :cond_14

    const/4 v2, 0x1

    if-eq v9, v2, :cond_14

    if-ne v9, v3, :cond_f

    goto :goto_9

    .line 38
    :cond_f
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "TIFF floating-point data uses unsupported horizontal-differencing predictor"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_10
    aget-short v2, v2, v5

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    const/4 v2, 0x1

    if-ne v12, v2, :cond_15

    const/16 v2, 0x10

    if-eq v4, v2, :cond_12

    if-ne v4, v8, :cond_11

    goto :goto_8

    .line 40
    :cond_11
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIFF integer data uses unsupported bits-per-pixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_8
    if-eq v9, v7, :cond_14

    const/4 v2, 0x1

    if-eq v9, v2, :cond_14

    if-ne v9, v3, :cond_13

    goto :goto_9

    .line 41
    :cond_13
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "TIFF integer data uses unsupported horizontal-differencing predictor"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_14
    :goto_9
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;

    const/4 v3, 0x0

    move-object v5, v2

    move v6, v12

    move-object v7, v13

    move v8, v9

    move/from16 v17, v9

    move v9, v15

    move v10, v11

    move/from16 v18, v11

    move v11, v3

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;-><init>(I[IIIIZ)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v3

    move-object v11, v0

    move-object v0, v3

    move-object/from16 v1, p1

    move v3, v4

    move-object v4, v13

    move/from16 v5, v17

    move v7, v15

    move/from16 v8, v18

    move v9, v14

    move-object/from16 v10, v16

    move-object v12, v11

    move-object/from16 v11, p2

    .line 44
    invoke-virtual/range {v0 .. v11}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->getDataReader(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIILorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v12}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->readRasterData(Ljava/awt/Rectangle;)Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;

    move-result-object v0

    return-object v0

    .line 46
    :cond_15
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIFF integer data uses unsupported samples per pixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_16
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "TIFF does not provide a supported raster-data format"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_17
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Directory does not specify numeric raster data"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_18
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "TIFF missing entries"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collectRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/commons/imaging/ImagingParameters;->isStrict()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {v1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v1, p1, v3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_1
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 5
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 6
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffRawImageDataElements()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    .line 8
    iget-wide v4, v3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget v3, v3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    invoke-virtual {p1, v4, v5, v3}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v3

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    const-string v1, "tiff.dumpImageFile"

    .line 1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/ImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1, v0}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v1

    .line 7
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-direct {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;-><init>()V

    .line 8
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v4, p2, v3, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p2

    .line 9
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v1, 0x0

    .line 11
    :goto_0
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 12
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 13
    iget-object v3, v3, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 15
    :cond_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    throw p2
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->e:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    .line 1
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    .line 3
    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 7
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImage(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-direct {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;-><init>()V

    .line 3
    :cond_0
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    .line 4
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/ImagingParameters;->isStrict()Z

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p1

    .line 6
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 7
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 8
    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImage(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "TIFF does not contain an image."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getBufferedImage(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p1

    .line 10
    iget-object v0, v9, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    if-eqz v0, :cond_15

    .line 11
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COMPRESSION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const v1, 0xffff

    and-int v10, v0, v1

    .line 13
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;)I

    move-result v11

    .line 14
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;)I

    move-result v12

    move-object/from16 v13, p0

    move-object/from16 v0, p3

    .line 15
    invoke-direct {v13, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->a(Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Ljava/awt/Rectangle;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 16
    iget v3, v14, Ljava/awt/Rectangle;->width:I

    if-lez v3, :cond_6

    .line 17
    iget v3, v14, Ljava/awt/Rectangle;->height:I

    if-lez v3, :cond_5

    .line 18
    iget v3, v14, Ljava/awt/Rectangle;->x:I

    if-ltz v3, :cond_4

    iget v3, v14, Ljava/awt/Rectangle;->x:I

    if-ge v3, v11, :cond_4

    .line 19
    iget v3, v14, Ljava/awt/Rectangle;->x:I

    iget v4, v14, Ljava/awt/Rectangle;->width:I

    add-int/2addr v3, v4

    if-gt v3, v11, :cond_3

    .line 20
    iget v3, v14, Ljava/awt/Rectangle;->y:I

    if-ltz v3, :cond_2

    iget v3, v14, Ljava/awt/Rectangle;->y:I

    if-ge v3, v12, :cond_2

    .line 21
    iget v3, v14, Ljava/awt/Rectangle;->y:I

    iget v4, v14, Ljava/awt/Rectangle;->height:I

    add-int/2addr v3, v4

    if-gt v3, v12, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "subimage (y+height) is outside raster"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_2
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "subimage y is outside raster"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_3
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "subimage (x+width) is outside raster"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "subimage x is outside raster"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_5
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "negative or zero subimage height"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_6
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "negative or zero subimage width"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_7
    :goto_1
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_SAMPLES_PER_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v9, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 29
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v3

    move v15, v3

    goto :goto_2

    :cond_8
    const/4 v15, 0x1

    :goto_2
    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 30
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    invoke-virtual {v9, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 31
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v3

    .line 32
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v5

    move-object v7, v3

    move v8, v5

    goto :goto_3

    :cond_9
    move-object v7, v3

    move v8, v15

    :goto_3
    const/4 v3, -0x1

    .line 33
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PREDICTOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v9, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 34
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v3

    move/from16 v16, v3

    goto :goto_4

    :cond_a
    const/16 v16, -0x1

    .line 35
    :goto_4
    array-length v3, v7

    if-ne v15, v3, :cond_14

    .line 36
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PHOTOMETRIC_INTERPRETATION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v9, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)S

    move-result v3

    and-int v6, v3, v1

    const/4 v5, 0x2

    if-ne v6, v5, :cond_e

    const/4 v1, 0x4

    if-ne v15, v1, :cond_e

    .line 37
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_EXTRA_SAMPLES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    .line 38
    invoke-virtual {v9, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    if-nez v1, :cond_c

    :cond_b
    const/4 v3, 0x0

    :goto_5
    const/4 v4, 0x1

    goto :goto_7

    .line 39
    :cond_c
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v1

    if-eq v1, v2, :cond_d

    if-eq v1, v5, :cond_b

    goto :goto_6

    :cond_d
    const/4 v3, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    const/4 v3, 0x0

    .line 40
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->getCustomPhotometricInterpreter()Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    move-result-object v0

    if-nez v0, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move v13, v3

    move v3, v8

    move/from16 p3, v13

    move v13, v4

    move-object v4, v7

    move/from16 v17, v13

    const/4 v13, 0x2

    move/from16 v5, v16

    move v13, v6

    move v6, v15

    move-object/from16 v18, v7

    move v7, v11

    move-object/from16 v19, v14

    move v14, v8

    move v8, v12

    .line 41
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->b(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;II[IIIII)Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    move-result-object v0

    goto :goto_8

    :cond_f
    move/from16 p3, v3

    move/from16 v17, v4

    move v13, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v14

    move v14, v8

    :goto_8
    move-object v2, v0

    .line 42
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PLANAR_CONFIGURATION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    if-nez v0, :cond_10

    .line 43
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->CHUNKY:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    goto :goto_9

    .line 44
    :cond_10
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->lenientValueOf(I)Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    move-result-object v0

    :goto_9
    move-object v8, v0

    .line 45
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->PLANAR:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    if-ne v8, v0, :cond_13

    const/4 v0, 0x2

    if-ne v13, v0, :cond_12

    const/16 v0, 0x18

    if-ne v14, v0, :cond_12

    .line 46
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_a

    .line 47
    :cond_11
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "For planar configuration 2, only strips-organization is supported"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_12
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "For planar configuration 2, only 24 bit RGB is currently supported"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_13
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v0

    move-object/from16 v1, p1

    move v3, v14

    move-object/from16 v4, v18

    move/from16 v5, v16

    move v6, v15

    move v7, v11

    move-object v11, v8

    move v8, v12

    move v9, v10

    move-object v10, v11

    move-object/from16 v11, p2

    .line 50
    invoke-virtual/range {v0 .. v11}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->getDataReader(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIILorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;

    move-result-object v0

    move/from16 v4, p3

    move/from16 v2, v17

    move-object/from16 v1, v19

    .line 51
    invoke-virtual {v0, v1, v2, v4}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->readImageData(Ljava/awt/Rectangle;ZZ)Lorg/apache/commons/imaging/common/ImageBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0

    :cond_14
    move-object/from16 v18, v7

    .line 53
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tiff: samplesPerPixel ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")!=fBitsPerSample.length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_15
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "TIFF missing entries"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->d:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultParameters()Lorg/apache/commons/imaging/ImagingParameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getDefaultParameters()Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultParameters()Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;-><init>()V

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;-><init>()V

    .line 3
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/ImagingParameters;->isStrict()Z

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v2, p1, v1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    return-object v0
.end method

.method public bridge synthetic getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)[B

    move-result-object p1

    return-object p1
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/commons/imaging/ImagingParameters;->isStrict()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {v1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 5
    sget-object p2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_INTER_COLOR_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefineds;

    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/ImagingParameters;->isStrict()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v1, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 5
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {v1, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v4

    .line 6
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {v1, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v5

    if-eqz v4, :cond_d

    if-eqz v5, :cond_d

    .line 7
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v12

    .line 8
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v4

    .line 9
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v1, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 11
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    if-eq v5, v6, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const-wide v7, 0x400451eb851eb852L    # 2.54

    goto :goto_2

    :cond_3
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    :goto_2
    const-wide/16 v5, 0x0

    cmpl-double v11, v7, v5

    if-lez v11, :cond_6

    .line 12
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v1, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v5

    .line 13
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v6

    if-eqz v5, :cond_4

    .line 14
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 15
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDoubleValue()D

    move-result-wide v13

    mul-double v13, v13, v7

    .line 16
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-double v9, v4

    div-double/2addr v9, v13

    double-to-float v2, v9

    goto :goto_3

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, -0x1

    :goto_3
    if-eqz v6, :cond_5

    .line 17
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 18
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDoubleValue()D

    move-result-wide v9

    mul-double v9, v9, v7

    .line 19
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v7, v6

    int-to-double v13, v12

    div-double/2addr v13, v9

    double-to-float v6, v13

    move/from16 v18, v2

    move/from16 v17, v3

    move/from16 v16, v6

    move v15, v7

    goto :goto_4

    :cond_5
    move/from16 v18, v2

    move/from16 v17, v3

    const/4 v15, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    goto :goto_4

    :cond_6
    const/4 v15, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    .line 20
    :goto_4
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 21
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 22
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v2

    move v8, v2

    goto :goto_5

    :cond_7
    const/4 v8, 0x1

    .line 23
    :goto_5
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    .line 24
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 26
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 28
    :cond_8
    sget-object v10, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;

    .line 29
    iget-object v2, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tiff v."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->header:Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;->tiffVersion:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 31
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COLOR_MAP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v22, 0x1

    goto :goto_7

    :cond_9
    const/16 v22, 0x0

    .line 32
    :goto_7
    sget-object v23, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 33
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COMPRESSION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 34
    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)S

    move-result v3

    goto :goto_8

    :cond_a
    const/4 v3, 0x1

    :goto_8
    const v0, 0xffff

    and-int/2addr v0, v3

    const v1, 0x8003

    if-eq v0, v1, :cond_c

    const v1, 0x8005

    if-eq v0, v1, :cond_b

    packed-switch v0, :pswitch_data_0

    .line 35
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_9

    .line 36
    :pswitch_0
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_9

    .line 37
    :pswitch_1
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_9

    .line 38
    :pswitch_2
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_4:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_9

    .line 39
    :pswitch_3
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_3:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_9

    .line 40
    :pswitch_4
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_1D:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_9

    .line 41
    :pswitch_5
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    :goto_9
    move-object/from16 v24, v0

    goto :goto_a

    .line 42
    :cond_b
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PACKBITS:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_9

    .line 43
    :cond_c
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_9

    .line 44
    :goto_a
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo;

    move-object v6, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v11, "TIFF Tag-based Image File Format"

    const-string v13, "image/tiff"

    move/from16 v19, v4

    invoke-direct/range {v6 .. v24}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v0

    .line 45
    :cond_d
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "TIFF image missing size info."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Ljava/awt/Dimension;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Ljava/awt/Dimension;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/commons/imaging/ImagingParameters;->isStrict()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {v1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    .line 4
    invoke-virtual {v1, p1, v3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 6
    sget-object p2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p2

    .line 7
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p1, v0, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p1

    .line 9
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p2

    .line 10
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p2, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0

    .line 11
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "TIFF image missing size info."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getDefaultParameters()Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    move-result-object p2

    .line 3
    :cond_0
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    .line 4
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/ImagingParameters;->isStrict()Z

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    .line 5
    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p1

    .line 6
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    .line 7
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffContents;)V

    .line 8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 9
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 10
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;-><init>(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)V

    .line 11
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getDirectoryEntries()Ljava/util/List;

    move-result-object p2

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 13
    invoke-virtual {v2, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->add(Lorg/apache/commons/imaging/formats/tiff/TiffField;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Tiff-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/common/XmpImagingParameters;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lorg/apache/commons/imaging/common/XmpImagingParameters;

    invoke-direct {p2}, Lorg/apache/commons/imaging/common/XmpImagingParameters;-><init>()V

    .line 2
    :cond_0
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/ImagingParameters;->isStrict()Z

    move-result p2

    invoke-direct {v1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 5
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XMP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;Z)[B

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2
.end method

.method public bridge synthetic writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/ImagingParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)V

    return-void
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-direct {p3}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;-><init>()V

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)V

    return-void
.end method
