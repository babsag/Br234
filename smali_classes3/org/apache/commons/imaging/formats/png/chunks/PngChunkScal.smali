.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.source "PngChunkScal.java"


# instance fields
.field public final unitSpecifier:I

.field public final unitsPerPixelXAxis:D

.field public final unitsPerPixelYAxis:D


# direct methods
.method public constructor <init>(III[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;-><init>(III[B)V

    const/4 p2, 0x0

    .line 2
    aget-byte p2, p4, p2

    iput p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;->unitSpecifier:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PNG sCAL invalid unit specifier: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([B)I

    move-result p2

    if-ltz p2, :cond_3

    .line 5
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p4, p3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;->a(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;->unitsPerPixelXAxis:D

    add-int/2addr p2, p3

    if-ge p2, p1, :cond_2

    .line 7
    new-instance p3, Ljava/lang/String;

    sub-int/2addr p1, p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p3, p4, p2, p1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 8
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;->a(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;->unitsPerPixelYAxis:D

    return-void

    .line 9
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "PNG sCAL chunk missing the y axis value."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "PNG sCAL x and y axis value separator not found."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2
    :catch_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PNG sCAL error reading axis value - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
