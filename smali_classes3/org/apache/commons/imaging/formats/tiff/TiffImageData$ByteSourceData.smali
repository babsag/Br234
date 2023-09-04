.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;
.super Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;
.source "TiffImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteSourceData"
.end annotation


# instance fields
.field final b:Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;


# direct methods
.method public constructor <init>(JILorg/apache/commons/imaging/common/bytesource/ByteSourceFile;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImagingConstants;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;-><init>(JI[B)V

    .line 2
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;->b:Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;->b:Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    iget-wide v1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;->getBlock(JI)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    sget-object v0, Lorg/apache/commons/imaging/ImagingConstants;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public getElementDescription()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tiff image data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getDataLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
