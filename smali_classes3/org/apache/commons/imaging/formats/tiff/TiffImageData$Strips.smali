.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;
.super Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
.source "TiffImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strips"
.end annotation


# instance fields
.field private final a:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

.field public final rowsPerStrip:I


# direct methods
.method public constructor <init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->a:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    .line 3
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->rowsPerStrip:I

    return-void
.end method


# virtual methods
.method public getDataReader(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIILorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->a(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)I

    move-result v7

    .line 2
    new-instance v15, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;

    move-object/from16 v14, p0

    iget v13, v14, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->rowsPerStrip:I

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIIILorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;Ljava/nio/ByteOrder;ILorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;)V

    return-object v15
.end method

.method public getImageData(I)Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->a:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getImageData()[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->a:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    return-object v0
.end method

.method public getImageDataLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->a:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    array-length v0, v0

    return v0
.end method

.method public stripsNotTiles()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
