.class public Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;
.super Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;
.source "TiffImageWriterLossless.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/write/a;->a:Lorg/apache/commons/imaging/formats/tiff/write/a;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->a:Ljava/util/Comparator;

    .line 2
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/write/d;->a:Lorg/apache/commons/imaging/formats/tiff/write/d;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;-><init>(Ljava/nio/ByteOrder;)V

    .line 4
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->c:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->c:[B

    return-void
.end method

.method private e(Ljava/util/Map;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->c:[B

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    .line 2
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v1

    .line 3
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-direct {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;-><init>()V

    invoke-virtual {v2, v0, v3, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getDirectoryEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 9
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getOversizeValueElement()Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytesEqual([B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 13
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getOffset()I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->setOffset(J)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 16
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->getImageData()[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_5
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v1, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    .line 23
    iget-wide v5, v4, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget v7, v4, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    int-to-long v7, v7

    add-long/2addr v7, v5

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    sub-long/2addr v5, v2

    const-wide/16 v9, 0x3

    cmp-long v11, v5, v9

    if-lez v11, :cond_7

    .line 24
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;

    iget-wide v9, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    sub-long/2addr v2, v9

    long-to-int v0, v2

    invoke-direct {v5, v9, v10, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;-><init>(JI)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v0, v4

    :cond_7
    move-wide v2, v7

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    .line 25
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;

    iget-wide v4, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    invoke-direct {v1, v4, v5, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;-><init>(JI)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-object p1

    :catch_0
    move-exception p1

    .line 26
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic f(Lorg/apache/commons/imaging/formats/tiff/TiffElement;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    return p0
.end method

.method private g(Ljava/util/List;Ljava/util/List;)J
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->c:[B

    array-length v1, v1

    int-to-long v1, v1

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 4
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 5
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 6
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    .line 7
    iget-wide v6, v4, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget v4, v4, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    int-to-long v8, v4

    add-long/2addr v6, v8

    cmp-long v8, v6, v1

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    int-to-long v6, v4

    sub-long/2addr v1, v6

    .line 8
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->a:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 10
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v6, p2

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->b:Ljava/util/Comparator;

    invoke-interface {v4, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 13
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 14
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 15
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    .line 16
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getItemLength()I

    move-result v7

    const/4 v8, 0x0

    .line 17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    .line 18
    iget v11, v10, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    if-ge v11, v7, :cond_3

    goto :goto_4

    :cond_3
    move-object v8, v10

    goto :goto_3

    :cond_4
    :goto_4
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x1

    if-nez v8, :cond_6

    and-long v13, v1, v11

    cmp-long v8, v13, v9

    if-eqz v8, :cond_5

    add-long/2addr v1, v11

    .line 19
    :cond_5
    invoke-virtual {v6, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->setOffset(J)V

    int-to-long v6, v7

    add-long/2addr v1, v6

    goto :goto_2

    .line 20
    :cond_6
    iget-wide v13, v8, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    and-long v15, v13, v11

    cmp-long v17, v15, v9

    if-eqz v17, :cond_7

    add-long/2addr v13, v11

    .line 21
    :cond_7
    invoke-virtual {v6, v13, v14}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->setOffset(J)V

    .line 22
    invoke-interface {v3, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    iget v6, v8, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    if-le v6, v7, :cond_2

    .line 24
    iget-wide v8, v8, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    int-to-long v10, v7

    add-long/2addr v8, v10

    sub-int/2addr v6, v7

    .line 25
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;

    invoke-direct {v7, v8, v9, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;-><init>(JI)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->a:Ljava/util/Comparator;

    invoke-interface {v3, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 27
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_2

    :cond_8
    return-wide v1
.end method

.method private h(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Ljava/util/List;Ljava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p2

    long-to-int p6, p5

    .line 2
    new-array p5, p6, [B

    .line 3
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->c:[B

    array-length v1, v0

    invoke-static {v1, p6}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;

    invoke-direct {v0, p5, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;-><init>([BI)V

    .line 5
    new-instance v1, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v1, v0, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v3

    invoke-virtual {p0, v1, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;J)V

    .line 7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    .line 8
    iget-wide v0, p3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    long-to-int v3, v0

    iget p3, p3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    int-to-long v4, p3

    add-long/2addr v0, v4

    int-to-long v4, p6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-static {p5, v3, p3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    .line 10
    new-instance p4, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    new-instance p6, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;

    .line 11
    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-direct {p6, p5, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$a;-><init>([BI)V

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {p4, p6, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 12
    :try_start_0
    invoke-virtual {p3, p4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->writeItem(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    invoke-virtual {p4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    .line 15
    :cond_1
    invoke-virtual {p1, p5}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_MAKER_NOTE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefineds;

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    iget v1, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->e(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    .line 6
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->c:[B

    array-length v1, v1

    .line 7
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 9
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    .line 10
    iget-wide v3, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    const-wide/16 v7, 0x8

    cmp-long v5, v3, v7

    if-nez v5, :cond_1

    iget v2, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    int-to-long v9, v2

    add-long/2addr v3, v9

    add-long/2addr v3, v7

    int-to-long v1, v1

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    .line 11
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void

    .line 12
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 15
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v5, v3, v7

    if-eqz v5, :cond_2

    .line 16
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->validateDirectories(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)Lorg/apache/commons/imaging/formats/tiff/write/f;

    move-result-object v0

    .line 18
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getOutputItems(Lorg/apache/commons/imaging/formats/tiff/write/f;)Ljava/util/List;

    move-result-object v2

    .line 19
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    .line 21
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 22
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_5
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->g(Ljava/util/List;Ljava/util/List;)J

    move-result-wide v8

    .line 24
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/f;->c(Ljava/nio/ByteOrder;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 25
    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->h(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Ljava/util/List;Ljava/util/List;J)V

    return-void

    .line 26
    :cond_6
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "Couldn\'t analyze old tiff data."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
