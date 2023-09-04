.class Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;
.super Ljava/io/OutputStream;
.source "TiffImageWriterLossless.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:[B

.field private b:I


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;->a:[B

    .line 3
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;->b:I

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;->b:I

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;->a:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 2
    iput v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;->b:I

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Buffer overflow."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;->b:I

    add-int v1, v0, p3

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;->a:[B

    array-length v3, v2

    if-gt v1, v3, :cond_0

    .line 5
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;->b:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Buffer overflow."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
