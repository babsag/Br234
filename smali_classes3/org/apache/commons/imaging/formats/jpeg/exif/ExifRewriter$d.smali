.class Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$d;
.super Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$b;
.source "ExifRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:[B

.field public final d:[B


# direct methods
.method constructor <init>(I[B[B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$b;-><init>(Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$a;)V

    .line 2
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$d;->a:I

    .line 3
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$d;->b:[B

    .line 4
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$d;->c:[B

    .line 5
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$d;->d:[B

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$d;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$d;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 3
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$d;->d:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
