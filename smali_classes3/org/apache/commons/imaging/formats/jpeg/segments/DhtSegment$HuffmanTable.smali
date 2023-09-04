.class public Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;
.super Ljava/lang/Object;
.source "DhtSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HuffmanTable"
.end annotation


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field public final destinationIdentifier:I

.field private final e:[I

.field private final f:[I

.field public final tableClass:I


# direct methods
.method constructor <init>(II[I[I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->b:[I

    const/16 v0, 0x11

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->d:[I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->e:[I

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->f:[I

    .line 6
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    .line 7
    iput p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    .line 8
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->a:[I

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p4, 0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    :goto_0
    aget v2, p3, v0

    if-le p4, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    const/16 p4, 0x10

    if-le v0, p4, :cond_5

    .line 10
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->b:[I

    aput p1, v0, v1

    .line 11
    aget v0, v0, p1

    .line 12
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->c:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-lt v2, v1, :cond_0

    goto :goto_2

    .line 13
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->c:[I

    aput v3, v4, v2

    add-int/2addr v3, p2

    add-int/lit8 v2, v2, 0x1

    .line 14
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->b:[I

    aget v5, v4, v2

    if-ne v5, v0, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    aget v4, v4, v2

    if-nez v4, :cond_4

    :goto_2
    const/4 v0, 0x0

    :goto_3
    add-int/2addr p1, p2

    if-le p1, p4, :cond_2

    return-void

    .line 16
    :cond_2
    aget v1, p3, p1

    if-nez v1, :cond_3

    .line 17
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->e:[I

    const/4 v2, -0x1

    aput v2, v1, p1

    goto :goto_3

    .line 18
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->f:[I

    aput v0, v1, p1

    .line 19
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->d:[I

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->c:[I

    aget v3, v2, v0

    aput v3, v1, p1

    .line 20
    aget v1, p3, p1

    sub-int/2addr v1, p2

    add-int/2addr v0, v1

    .line 21
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->e:[I

    aget v2, v2, v0

    aput v2, v1, p1

    add-int/2addr v0, p2

    goto :goto_3

    :cond_4
    shl-int/2addr v3, p2

    add-int/2addr v0, p2

    .line 22
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->b:[I

    aget v4, v4, v2

    if-ne v4, v0, :cond_4

    goto :goto_1

    :cond_5
    const/4 p4, 0x1

    goto :goto_0

    .line 23
    :cond_6
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->b:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getHuffVal(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public getMaxCode(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->e:[I

    aget p1, v0, p1

    return p1
.end method

.method public getMinCode(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method public getValPtr(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->f:[I

    aget p1, v0, p1

    return p1
.end method
