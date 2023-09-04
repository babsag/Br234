.class Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$a;
.super Ljava/lang/Object;
.source "JpegRewriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$a;->c:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$a;->a:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$a;->b:Ljava/util/List;

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
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$a;->a:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$b;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$b;-><init>([B[B)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p3, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    invoke-direct {p3, p1, p2, p4, p5}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    .line 2
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$a;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$a;->b:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
