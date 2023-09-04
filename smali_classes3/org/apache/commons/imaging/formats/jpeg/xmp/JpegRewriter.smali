.class public Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegRewriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JpegSegmentOverflowException;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$b;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    }
.end annotation


# static fields
.field private static final c:Ljava/nio/ByteOrder;

.field private static final d:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;

.field private static final e:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;

.field private static final f:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->c:Ljava/nio/ByteOrder;

    .line 2
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/b;->a:Lorg/apache/commons/imaging/formats/jpeg/xmp/b;

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->d:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;

    .line 3
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/c;->a:Lorg/apache/commons/imaging/formats/jpeg/xmp/c;

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->e:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;

    .line 4
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/a;->a:Lorg/apache/commons/imaging/formats/jpeg/xmp/a;

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->f:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->c:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method static synthetic a()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->c:Ljava/nio/ByteOrder;

    return-object v0
.end method


# virtual methods
.method protected analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$a;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$a;-><init>(Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;Ljava/util/List;Ljava/util/List;)V

    .line 4
    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {v3}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v3, p1, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    .line 5
    new-instance p1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method protected filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 4
    instance-of v2, v1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-eqz v2, :cond_1

    .line 5
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    invoke-interface {p2, v2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;->a(Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;)Z

    move-result v2

    if-ne v2, p3, :cond_0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p3, :cond_0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->f:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            "U:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TU;>;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 3
    instance-of v4, v3, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-nez v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    check-cast v3, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    .line 5
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isAppSegment()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x1

    if-ne v2, v0, :cond_4

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    invoke-interface {v1, v3, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    .line 9
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "JPEG file has no APP segments."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/2addr v2, v3

    .line 10
    invoke-interface {v1, v2, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_2
    return-object v1
.end method

.method protected insertBeforeFirstAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            "U:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TU;>;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 3
    instance-of v4, v3, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-nez v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    check-cast v3, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    .line 5
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isAppSegment()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v2, v0, :cond_1

    move v2, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eq v2, v0, :cond_3

    .line 7
    invoke-interface {v1, v2, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-object v1

    .line 8
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "JPEG file has no APP segments."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected removeExifSegments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->d:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->f:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected removeXmpSegments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->e:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$c;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    :try_start_0
    sget-object p1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->SOI:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 4
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method
