.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "PngChunk.java"


# instance fields
.field public final ancillary:Z

.field private final c:[B

.field public final chunkType:I

.field public final crc:I

.field private final d:[Z

.field public final isPrivate:Z

.field public final length:I

.field public final reserved:Z

.field public final safeToCopy:Z


# direct methods
.method public constructor <init>(III[B)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->length:I

    .line 3
    iput p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->chunkType:I

    .line 4
    iput p3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->crc:I

    .line 5
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->c:[B

    const/4 p1, 0x4

    new-array p3, p1, [Z

    .line 6
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->d:[Z

    const/4 p3, 0x0

    const/16 p4, 0x18

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_1

    shr-int v2, p2, p4

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p4, p4, -0x8

    .line 7
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->d:[Z

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    aput-boolean v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->d:[Z

    aget-boolean p2, p1, p3

    iput-boolean p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->ancillary:Z

    .line 9
    aget-boolean p2, p1, v1

    iput-boolean p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->isPrivate:Z

    const/4 p2, 0x2

    .line 10
    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->reserved:Z

    const/4 p2, 0x3

    .line 11
    aget-boolean p1, p1, p2

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->safeToCopy:Z

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected getDataStream()Ljava/io/ByteArrayInputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getPropertyBits()[Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->d:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method
