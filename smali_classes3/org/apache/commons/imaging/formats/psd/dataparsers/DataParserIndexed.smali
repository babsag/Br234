.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserIndexed.java"


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>([B)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->a:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x0

    .line 3
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v4, v2, 0x100

    .line 4
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v5, v2, 0x200

    .line 5
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    const/high16 v6, -0x1000000

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v4, v5, 0xff

    shl-int/2addr v4, v1

    or-int/2addr v3, v4

    .line 6
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->a:[I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/commons/imaging/formats/psd/PsdImageContents;)I
    .locals 0

    const/4 p4, 0x0

    .line 1
    aget-object p1, p1, p4

    aget-object p1, p1, p3

    aget p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 2
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->a:[I

    aget p1, p2, p1

    return p1
.end method
