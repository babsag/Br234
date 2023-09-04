.class Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$a;
.super Ljava/lang/Object;
.source "ExifRewriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->a(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$a;->c:Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$a;->a:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public visitSOS(I[B[B)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$a;->a:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$c;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$c;-><init>([B[B)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const p3, 0xffe1

    if-eq p1, p3, :cond_0

    .line 1
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$a;->a:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$d;

    invoke-direct {v0, p1, p2, p4, p5}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$d;-><init>(I[B[B[B)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    sget-object p3, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {p5, p3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 3
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$a;->a:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$d;

    invoke-direct {v0, p1, p2, p4, p5}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$d;-><init>(I[B[B[B)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    new-instance p3, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$e;

    invoke-direct {p3, p1, p2, p4, p5}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$e;-><init>(I[B[B[B)V

    .line 5
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$a;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$a;->b:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
