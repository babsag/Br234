.class abstract Lorg/apache/commons/imaging/formats/bmp/f;
.super Ljava/lang/Object;
.source "PixelParser.java"


# instance fields
.field final a:Lorg/apache/commons/imaging/formats/bmp/a;

.field final b:[B

.field final c:[B

.field final d:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/bmp/f;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/bmp/f;->b:[B

    .line 4
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/bmp/f;->c:[B

    .line 5
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/bmp/f;->d:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 3

    mul-int/lit8 p1, p1, 0x4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->b:[B

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    .line 2
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x2

    .line 3
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v1, 0x0

    or-int/2addr p1, v0

    return p1
.end method

.method public abstract b(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
