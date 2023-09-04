.class public abstract Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "TransparencyFilter.java"


# instance fields
.field private final c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 2
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->c:[B

    return-void
.end method


# virtual methods
.method public abstract filter(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getByte(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->c:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public getLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->c:[B

    array-length v0, v0

    return v0
.end method
