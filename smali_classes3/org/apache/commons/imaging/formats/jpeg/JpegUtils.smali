.class public Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 1

    const v0, 0xffdd

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "JPEG_APP15_MARKER"

    return-object p0

    :pswitch_1
    const-string p0, "JPEG_APP14_MARKER"

    return-object p0

    :pswitch_2
    const-string p0, "JPEG_APP13_MARKER"

    return-object p0

    :pswitch_3
    const-string p0, "JPEG_APP2_MARKER"

    return-object p0

    :pswitch_4
    const-string p0, "JPEG_APP1_MARKER"

    return-object p0

    :pswitch_5
    const-string p0, "JFIF_MARKER"

    return-object p0

    :pswitch_6
    const-string p0, "DQT_MARKER"

    return-object p0

    :pswitch_7
    const-string p0, "SOS_MARKER"

    return-object p0

    :pswitch_8
    const-string p0, "RST7_MARKER"

    return-object p0

    :pswitch_9
    const-string p0, "RST6_MARKER"

    return-object p0

    :pswitch_a
    const-string p0, "RST5_MARKER"

    return-object p0

    :pswitch_b
    const-string p0, "RST4_MARKER"

    return-object p0

    :pswitch_c
    const-string p0, "RST3_MARKER"

    return-object p0

    :pswitch_d
    const-string p0, "RST2_MARKER"

    return-object p0

    :pswitch_e
    const-string p0, "RST1_MARKER"

    return-object p0

    :pswitch_f
    const-string p0, "RST0_MARKER"

    return-object p0

    :pswitch_10
    const-string p0, "SOF15_MARKER"

    return-object p0

    :pswitch_11
    const-string p0, "SOF14_MARKER"

    return-object p0

    :pswitch_12
    const-string p0, "SOF13_MARKER"

    return-object p0

    :pswitch_13
    const-string p0, "DAC_MARKER"

    return-object p0

    :pswitch_14
    const-string p0, "SOF11_MARKER"

    return-object p0

    :pswitch_15
    const-string p0, "SOF10_MARKER"

    return-object p0

    :pswitch_16
    const-string p0, "SOF9_MARKER"

    return-object p0

    :pswitch_17
    const-string p0, "SOF8_MARKER"

    return-object p0

    :pswitch_18
    const-string p0, "SOF7_MARKER"

    return-object p0

    :pswitch_19
    const-string p0, "SOF6_MARKER"

    return-object p0

    :pswitch_1a
    const-string p0, "SOF5_MARKER"

    return-object p0

    :pswitch_1b
    const-string p0, "SOF4_MARKER"

    return-object p0

    :pswitch_1c
    const-string p0, "SOF3_MARKER"

    return-object p0

    :pswitch_1d
    const-string p0, "SOF2_MARKER"

    return-object p0

    :pswitch_1e
    const-string p0, "SOF1_MARKER"

    return-object p0

    :pswitch_1f
    const-string p0, "SOF0_MARKER"

    return-object p0

    :cond_0
    const-string p0, "DRI_MARKER"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xffc0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xffda
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xffe0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xffed
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dumpJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$a;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;)V

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    return-void
.end method

.method public traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "segmentLengthBytes"

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 2
    :try_start_0
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->SOI:Lorg/apache/commons/imaging/common/BinaryConstant;

    const-string v2, "Not a Valid JPEG File: doesn\'t begin with 0xffd8"

    invoke-static {p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;Lorg/apache/commons/imaging/common/BinaryConstant;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v6, v3, [B

    :cond_0
    const/4 v4, 0x1

    .line 3
    aget-byte v5, v6, v4

    aput-byte v5, v6, v1

    const-string v5, "marker"

    const-string v7, "Could not read marker"

    .line 4
    invoke-static {v5, p1, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    aput-byte v5, v6, v4

    .line 5
    aget-byte v5, v6, v1

    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_0

    aget-byte v5, v6, v4

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_0

    .line 6
    aget-byte v5, v6, v1

    and-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0x8

    aget-byte v4, v6, v4

    and-int/2addr v4, v7

    or-int/2addr v5, v4

    const v4, 0xffd9

    if-eq v5, v4, :cond_5

    const v4, 0xffda

    if-ne v5, v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v0, p1, v3, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v8

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v8, v4}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BLjava/nio/ByteOrder;)I

    move-result v7

    if-lt v7, v3, :cond_4

    const-string v3, "Segment Data"

    add-int/lit8 v4, v7, -0x2

    const-string v9, "Invalid Segment: insufficient data"

    .line 9
    invoke-static {v3, p1, v4, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v9

    move-object v4, p2

    .line 10
    invoke-interface/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;->visitSegment(I[BI[B[B)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_4
    :try_start_1
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Invalid segment size"

    invoke-direct {p2, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_5
    :goto_1
    invoke-interface {p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;->beginSOS()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_6
    return-void

    .line 15
    :cond_7
    :try_start_2
    invoke-static {p1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->getStreamBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 16
    invoke-interface {p2, v5, v6, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;->visitSOS(I[B[B)V

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " markers"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_8

    .line 18
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_8
    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_9

    .line 19
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    throw p2
.end method
