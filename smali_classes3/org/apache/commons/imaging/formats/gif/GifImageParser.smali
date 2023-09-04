.class public Lorg/apache/commons/imaging/formats/gif/GifImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "GifImageParser.java"

# interfaces
.implements Lorg/apache/commons/imaging/common/XmpEmbeddable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/ImageParser<",
        "Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;",
        ">;",
        "Lorg/apache/commons/imaging/common/XmpEmbeddable;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/logging/Logger;

.field private static final e:Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[B

.field private static final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->d:Ljava/util/logging/Logger;

    .line 2
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getExtensions()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->f:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->g:[B

    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->h:[B

    return-void

    :array_0
    .array-data 1
        0x47t
        0x49t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0x4dt
        0x50t
        0x20t
        0x44t
        0x61t
        0x74t
        0x61t
        0x58t
        0x4dt
        0x50t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->t(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    return p1
.end method

.method static b(I)Lorg/apache/commons/imaging/formats/gif/DisposalMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "GIF: Invalid parsing of disposal method"

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    sget-object p0, Lorg/apache/commons/imaging/formats/gif/DisposalMethod;->TO_BE_DEFINED_4:Lorg/apache/commons/imaging/formats/gif/DisposalMethod;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lorg/apache/commons/imaging/formats/gif/DisposalMethod;->TO_BE_DEFINED_3:Lorg/apache/commons/imaging/formats/gif/DisposalMethod;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lorg/apache/commons/imaging/formats/gif/DisposalMethod;->TO_BE_DEFINED_2:Lorg/apache/commons/imaging/formats/gif/DisposalMethod;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lorg/apache/commons/imaging/formats/gif/DisposalMethod;->TO_BE_DEFINED_1:Lorg/apache/commons/imaging/formats/gif/DisposalMethod;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lorg/apache/commons/imaging/formats/gif/DisposalMethod;->RESTORE_TO_PREVIOUS:Lorg/apache/commons/imaging/formats/gif/DisposalMethod;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lorg/apache/commons/imaging/formats/gif/DisposalMethod;->RESTORE_TO_BACKGROUND:Lorg/apache/commons/imaging/formats/gif/DisposalMethod;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lorg/apache/commons/imaging/formats/gif/DisposalMethod;->DO_NOT_DISPOSE:Lorg/apache/commons/imaging/formats/gif/DisposalMethod;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lorg/apache/commons/imaging/formats/gif/DisposalMethod;->UNSPECIFIED:Lorg/apache/commons/imaging/formats/gif/DisposalMethod;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/gif/b;",
            ">(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/b;",
            ">;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/gif/b;

    .line 3
    iget v2, v1, Lorg/apache/commons/imaging/formats/gif/b;->a:I

    if-ne v2, p2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private d(Lorg/apache/commons/imaging/formats/gif/d;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/gif/d;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/apache/commons/imaging/formats/gif/d;->b:Ljava/util/List;

    const/16 v1, 0x2c

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/gif/d;->b:Ljava/util/List;

    const/16 v1, 0x21f9

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "GIF: Invalid amount of Graphic Control Extensions"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/gif/g;

    if-eqz v4, :cond_3

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/gif/f;

    .line 10
    :goto_2
    new-instance v6, Lorg/apache/commons/imaging/formats/gif/e;

    invoke-direct {v6, v4, v5}, Lorg/apache/commons/imaging/formats/gif/e;-><init>(Lorg/apache/commons/imaging/formats/gif/g;Lorg/apache/commons/imaging/formats/gif/f;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "GIF: Couldn\'t read Image Descriptor of image number %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v1

    .line 12
    :cond_5
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "GIF: Couldn\'t read Image Descriptor"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/b;",
            ">;I)",
            "Lorg/apache/commons/imaging/formats/gif/b;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/gif/b;

    .line 2
    iget v1, v0, Lorg/apache/commons/imaging/formats/gif/b;->a:I

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private f(Lorg/apache/commons/imaging/formats/gif/d;)Lorg/apache/commons/imaging/formats/gif/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/apache/commons/imaging/formats/gif/d;->b:Ljava/util/List;

    const/16 v1, 0x2c

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->e(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/b;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/gif/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/gif/d;->b:Ljava/util/List;

    const/16 v1, 0x21f9

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->e(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/b;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/gif/f;

    .line 3
    new-instance v1, Lorg/apache/commons/imaging/formats/gif/e;

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/imaging/formats/gif/e;-><init>(Lorg/apache/commons/imaging/formats/gif/g;Lorg/apache/commons/imaging/formats/gif/f;)V

    return-object v1

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "GIF: Couldn\'t read Image Descriptor"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(Lorg/apache/commons/imaging/formats/gif/c;Lorg/apache/commons/imaging/formats/gif/e;[B)Ljava/awt/image/BufferedImage;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/gif/e;->a:Lorg/apache/commons/imaging/formats/gif/g;

    .line 2
    iget-object v1, v1, Lorg/apache/commons/imaging/formats/gif/e;->b:Lorg/apache/commons/imaging/formats/gif/f;

    .line 3
    iget v4, v3, Lorg/apache/commons/imaging/formats/gif/g;->d:I

    .line 4
    iget v5, v3, Lorg/apache/commons/imaging/formats/gif/g;->e:I

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-boolean v8, v1, Lorg/apache/commons/imaging/formats/gif/f;->d:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 6
    :goto_0
    new-instance v9, Lorg/apache/commons/imaging/common/ImageBuilder;

    invoke-direct {v9, v4, v5, v8}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    .line 7
    iget-object v10, v3, Lorg/apache/commons/imaging/formats/gif/g;->k:[B

    if-eqz v10, :cond_1

    .line 8
    invoke-direct {v0, v10}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->h([B)[I

    move-result-object v2

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_d

    .line 9
    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->h([B)[I

    move-result-object v2

    :goto_1
    const/4 v10, -0x1

    if-eqz v1, :cond_2

    if-eqz v8, :cond_2

    .line 10
    iget v10, v1, Lorg/apache/commons/imaging/formats/gif/f;->f:I

    :cond_2
    add-int/lit8 v1, v5, 0x7

    .line 11
    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v8, v5, 0x3

    .line 12
    div-int/lit8 v8, v8, 0x8

    add-int/lit8 v11, v5, 0x1

    .line 13
    div-int/lit8 v11, v11, 0x4

    .line 14
    div-int/lit8 v12, v5, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v13, v5, :cond_c

    .line 15
    iget-boolean v15, v3, Lorg/apache/commons/imaging/formats/gif/g;->h:Z

    const/4 v6, 0x2

    if-eqz v15, :cond_7

    if-ge v13, v1, :cond_3

    mul-int/lit8 v15, v13, 0x8

    goto :goto_3

    :cond_3
    sub-int v15, v13, v1

    if-ge v15, v8, :cond_4

    mul-int/lit8 v15, v15, 0x8

    add-int/lit8 v15, v15, 0x4

    goto :goto_3

    :cond_4
    sub-int/2addr v15, v8

    if-ge v15, v11, :cond_5

    mul-int/lit8 v15, v15, 0x4

    add-int/2addr v15, v6

    goto :goto_3

    :cond_5
    sub-int/2addr v15, v11

    if-ge v15, v12, :cond_6

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v7

    goto :goto_3

    .line 16
    :cond_6
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Gif: Strange Row"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move v15, v13

    :goto_3
    move v7, v14

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v4, :cond_b

    .line 17
    iget-object v6, v3, Lorg/apache/commons/imaging/formats/gif/g;->l:[B

    array-length v0, v6

    if-ge v7, v0, :cond_a

    add-int/lit8 v0, v7, 0x1

    .line 18
    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    .line 19
    array-length v7, v2

    if-ge v6, v7, :cond_9

    .line 20
    aget v7, v2, v6

    if-ne v10, v6, :cond_8

    const/4 v7, 0x0

    .line 21
    :cond_8
    invoke-virtual {v9, v14, v15, v7}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v14, v14, 0x1

    move v7, v0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    goto :goto_4

    .line 22
    :cond_9
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Invalid GIF color table index [%d], greater than the color table length [%d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v1, 0x2

    .line 23
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v3, Lorg/apache/commons/imaging/formats/gif/g;->l:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v14, 0x1

    aput-object v2, v1, v14

    const-string v2, "Invalid GIF image data length [%d], greater than the image data length [%d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v6, 0x0

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move v14, v7

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 24
    :cond_c
    invoke-virtual {v9}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0

    .line 25
    :cond_d
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Gif: No Color Table"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h([B)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    .line 2
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 3
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x0

    .line 4
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    .line 5
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v4, v4, 0x2

    .line 6
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/high16 v7, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v7

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    shl-int/2addr v4, v2

    or-int/2addr v4, v5

    .line 7
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 8
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Color Table Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/b;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/gif/b;

    .line 3
    iget v2, v1, Lorg/apache/commons/imaging/formats/gif/b;->a:I

    const/16 v3, 0x21fe

    if-ne v2, v3, :cond_0

    .line 4
    check-cast v1, Lorg/apache/commons/imaging/formats/gif/a;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/gif/a;->a()[B

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private j(Lorg/apache/commons/imaging/formats/gif/c;Ljava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/gif/c;",
            "Ljava/io/InputStream;",
            "Z",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/b;",
            ">;"
        }
    .end annotation

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
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v1, -0x1

    if-eq v3, v1, :cond_9

    if-eqz v3, :cond_0

    const/16 v1, 0x21

    if-eq v3, v1, :cond_3

    const/16 v1, 0x2c

    if-eq v3, v1, :cond_2

    const/16 p1, 0x3b

    if-ne v3, p1, :cond_1

    return-object v0

    .line 3
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GIF: unknown code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 4
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->r(Lorg/apache/commons/imaging/formats/gif/c;ILjava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/g;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v1, 0xff

    or-int/2addr v2, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/16 v3, 0xf9

    if-eq v1, v3, :cond_7

    const/16 v3, 0xfe

    if-eq v1, v3, :cond_8

    const/16 v3, 0xff

    if-eq v1, v3, :cond_5

    if-eqz p4, :cond_4

    const-string v1, "Unknown block"

    .line 7
    invoke-virtual {p4, v1, v2}, Lorg/apache/commons/imaging/FormatCompliance;->addComment(Ljava/lang/String;I)V

    .line 8
    :cond_4
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->n(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/a;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_5
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->s(Ljava/io/InputStream;)[B

    move-result-object v1

    if-eqz p4, :cond_6

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Application Extension ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3, v2}, Lorg/apache/commons/imaging/FormatCompliance;->addComment(Ljava/lang/String;I)V

    .line 12
    :cond_6
    array-length v3, v1

    if-lez v3, :cond_0

    .line 13
    invoke-direct {p0, p2, v2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->o(Ljava/io/InputStream;I[B)Lorg/apache/commons/imaging/formats/gif/a;

    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 15
    :cond_7
    invoke-direct {p0, v2, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->p(ILjava/io/InputStream;)Lorg/apache/commons/imaging/formats/gif/f;

    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17
    :cond_8
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->n(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/a;

    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :cond_9
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "GIF: unexpected end of data"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private k(Ljava/io/InputStream;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->a(I)I

    move-result p2

    const-string v0, "block"

    const-string v1, "GIF: corrupt Color Table"

    .line 2
    invoke-static {v0, p1, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private l(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->m(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/d;

    move-result-object p1

    return-object p1
.end method

.method private m(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->q(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iget-boolean v2, v0, Lorg/apache/commons/imaging/formats/gif/c;->l:Z

    if-eqz v2, :cond_0

    .line 4
    iget-byte v1, v0, Lorg/apache/commons/imaging/formats/gif/c;->o:B

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->k(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 5
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->j(Lorg/apache/commons/imaging/formats/gif/c;Ljava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Ljava/util/List;

    move-result-object p2

    .line 6
    new-instance p3, Lorg/apache/commons/imaging/formats/gif/d;

    invoke-direct {p3, v0, v1, p2}, Lorg/apache/commons/imaging/formats/gif/d;-><init>(Lorg/apache/commons/imaging/formats/gif/c;[BLjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p3

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    .line 8
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2
.end method

.method private n(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->o(Ljava/io/InputStream;I[B)Lorg/apache/commons/imaging/formats/gif/a;

    move-result-object p1

    return-object p1
.end method

.method private o(Ljava/io/InputStream;I[B)Lorg/apache/commons/imaging/formats/gif/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->s(Ljava/io/InputStream;)[B

    move-result-object p3

    .line 4
    array-length v1, p3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 5
    new-instance p1, Lorg/apache/commons/imaging/formats/gif/a;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/imaging/formats/gif/a;-><init>(ILjava/util/List;)V

    return-object p1

    .line 6
    :cond_1
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private p(ILjava/io/InputStream;)Lorg/apache/commons/imaging/formats/gif/f;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "block_size"

    const-string v1, "GIF: corrupt GraphicControlExt"

    .line 1
    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    const-string v0, "packed fields"

    .line 2
    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    and-int/lit8 v0, v4, 0x1c

    shr-int/lit8 v5, v0, 0x2

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v2, "delay in milliseconds"

    invoke-static {v2, p2, v1, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    const-string v0, "transparent color index"

    .line 4
    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v8, v0, 0xff

    const-string v0, "block terminator"

    .line 5
    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 6
    new-instance p2, Lorg/apache/commons/imaging/formats/gif/f;

    move-object v2, p2

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/formats/gif/f;-><init>(IIIZII)V

    return-object p2
.end method

.method private q(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/c;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "identifier1"

    const-string v3, "Not a Valid GIF File"

    .line 1
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    const-string v2, "identifier2"

    .line 2
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    const-string v2, "identifier3"

    .line 3
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    const-string v2, "version1"

    .line 4
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    const-string v2, "version2"

    .line 5
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v9

    const-string v2, "version3"

    .line 6
    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v10

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 7
    sget-object v11, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->g:[B

    const/4 v12, 0x3

    new-array v12, v12, [B

    aput-byte v5, v12, v4

    aput-byte v6, v12, v2

    const/4 v13, 0x2

    aput-byte v7, v12, v13

    const-string v14, "Signature"

    invoke-virtual {v1, v14, v11, v12}, Lorg/apache/commons/imaging/FormatCompliance;->compareBytes(Ljava/lang/String;[B[B)Z

    const/16 v11, 0x38

    const-string v12, "version"

    .line 8
    invoke-virtual {v1, v12, v11, v8}, Lorg/apache/commons/imaging/FormatCompliance;->compare(Ljava/lang/String;II)Z

    new-array v11, v13, [I

    .line 9
    fill-array-data v11, :array_0

    invoke-virtual {v1, v12, v11, v9}, Lorg/apache/commons/imaging/FormatCompliance;->compare(Ljava/lang/String;[II)Z

    const/16 v11, 0x61

    .line 10
    invoke-virtual {v1, v12, v11, v10}, Lorg/apache/commons/imaging/FormatCompliance;->compare(Ljava/lang/String;II)Z

    .line 11
    :cond_0
    sget-object v11, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->d:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_1

    shl-int/lit8 v13, v5, 0x10

    shl-int/lit8 v14, v6, 0x8

    or-int/2addr v13, v14

    shl-int/lit8 v14, v7, 0x0

    or-int/2addr v13, v14

    const-string v14, "identifier: "

    .line 12
    invoke-static {v14, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    shl-int/lit8 v13, v8, 0x10

    shl-int/lit8 v14, v9, 0x8

    or-int/2addr v13, v14

    shl-int/lit8 v14, v10, 0x0

    or-int/2addr v13, v14

    const-string v14, "version: "

    .line 13
    invoke-static {v14, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    .line 14
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    const-string v14, "Logical Screen Width"

    invoke-static {v14, v0, v3, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    .line 15
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    const-string v15, "Logical Screen Height"

    invoke-static {v15, v0, v3, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    if-eqz v1, :cond_2

    const-string v15, "Width"

    const v4, 0x7fffffff

    .line 16
    invoke-virtual {v1, v15, v2, v4, v13}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    const-string v15, "Height"

    .line 17
    invoke-virtual {v1, v15, v2, v4, v14}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    :cond_2
    const-string v4, "Packed Fields"

    .line 18
    invoke-static {v4, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v15

    const-string v4, "Background Color Index"

    .line 19
    invoke-static {v4, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    move/from16 v18, v14

    const-string v14, "Pixel Aspect Ratio"

    .line 20
    invoke-static {v14, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    .line 21
    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PackedFields bits"

    .line 22
    invoke-static {v3, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printByteBits(Ljava/lang/String;B)V

    :cond_3
    and-int/lit16 v3, v15, 0x80

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 24
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p1, v0

    const-string v0, "GlobalColorTableFlag: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move/from16 p1, v0

    :goto_1
    shr-int/lit8 v0, v15, 0x4

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    .line 25
    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 26
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v13

    const-string v13, "ColorResolution: "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move/from16 v19, v13

    :goto_2
    and-int/lit8 v13, v15, 0x8

    if-lez v13, :cond_7

    const/4 v14, 0x1

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    .line 27
    :goto_3
    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 28
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    const-string v0, "SortFlag: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move/from16 v17, v0

    :goto_4
    and-int/lit8 v0, v15, 0x7

    int-to-byte v0, v0

    .line 29
    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 30
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SizeofGlobalColorTable: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_9
    if-eqz v1, :cond_a

    if-eqz v3, :cond_a

    const/4 v11, -0x1

    if-eq v2, v11, :cond_a

    move-object/from16 v13, p0

    .line 31
    invoke-direct {v13, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->a(I)I

    move-result v11

    const/4 v12, 0x0

    .line 32
    invoke-virtual {v1, v4, v12, v11, v2}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    goto :goto_5

    :cond_a
    move-object/from16 v13, p0

    .line 33
    :goto_5
    new-instance v1, Lorg/apache/commons/imaging/formats/gif/c;

    move-object v4, v1

    move/from16 v11, v19

    move/from16 v12, v18

    move v13, v15

    move/from16 v18, v14

    move v14, v2

    move/from16 v15, p1

    move/from16 v16, v3

    move/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lorg/apache/commons/imaging/formats/gif/c;-><init>(BBBBBBIIBBBZBZB)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x37
        0x39
    .end array-data
.end method

.method private r(Lorg/apache/commons/imaging/formats/gif/c;ILjava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/g;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v5, "Image Left Position"

    const-string v6, "Not a Valid GIF File"

    invoke-static {v5, v2, v6, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v5, "Image Top Position"

    invoke-static {v5, v2, v6, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v5, "Image Width"

    invoke-static {v5, v2, v6, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v5, "Image Height"

    invoke-static {v5, v2, v6, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    const-string v4, "Packed Fields"

    .line 5
    invoke-static {v4, v2, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v13

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 6
    iget v6, v1, Lorg/apache/commons/imaging/formats/gif/c;->g:I

    const-string v7, "Width"

    invoke-virtual {v3, v7, v5, v6, v11}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 7
    iget v6, v1, Lorg/apache/commons/imaging/formats/gif/c;->h:I

    const-string v7, "Height"

    invoke-virtual {v3, v7, v5, v6, v12}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 8
    iget v6, v1, Lorg/apache/commons/imaging/formats/gif/c;->g:I

    sub-int/2addr v6, v11

    const-string v7, "Left Position"

    invoke-virtual {v3, v7, v4, v6, v9}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 9
    iget v1, v1, Lorg/apache/commons/imaging/formats/gif/c;->h:I

    sub-int/2addr v1, v12

    const-string v6, "Top Position"

    invoke-virtual {v3, v6, v4, v1, v10}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 10
    :cond_0
    sget-object v1, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->d:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "PackedFields bits"

    .line 11
    invoke-static {v6, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printByteBits(Ljava/lang/String;B)V

    :cond_1
    shr-int/lit8 v6, v13, 0x7

    and-int/2addr v6, v5

    if-lez v6, :cond_2

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    .line 12
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalColorTableFlag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_3
    shr-int/lit8 v6, v13, 0x6

    and-int/2addr v6, v5

    if-lez v6, :cond_4

    const/4 v15, 0x1

    goto :goto_1

    :cond_4
    const/4 v15, 0x0

    .line 14
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Interlace Flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_5
    shr-int/lit8 v6, v13, 0x5

    and-int/2addr v6, v5

    if-lez v6, :cond_6

    const/4 v4, 0x1

    .line 16
    :cond_6
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sort Flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_7
    and-int/lit8 v5, v13, 0x7

    int-to-byte v5, v5

    .line 18
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SizeofLocalColorTable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_8
    if-eqz v14, :cond_9

    .line 20
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->k(Ljava/io/InputStream;I)[B

    move-result-object v7

    move-object/from16 v18, v7

    goto :goto_2

    :cond_9
    const/16 v18, 0x0

    :goto_2
    const/4 v7, -0x1

    if-nez p4, :cond_a

    .line 21
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 22
    invoke-direct {v0, v2, v7}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->n(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/a;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/gif/a;->a()[B

    move-result-object v2

    .line 24
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    mul-int v2, v11, v12

    .line 25
    new-instance v6, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v6, v1, v7}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;-><init>(ILjava/nio/ByteOrder;)V

    .line 26
    invoke-virtual {v6, v3, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_3

    .line 27
    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 28
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LZWMinimumCodeSize: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 30
    :cond_b
    invoke-direct {v0, v2, v7}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->n(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/a;

    const/16 v19, 0x0

    .line 31
    :goto_3
    new-instance v1, Lorg/apache/commons/imaging/formats/gif/g;

    move-object v7, v1

    move/from16 v8, p2

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-direct/range {v7 .. v19}, Lorg/apache/commons/imaging/formats/gif/g;-><init>(IIIIIBZZZB[B[B)V

    return-object v1
.end method

.method private s(Ljava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "block_size"

    const-string v1, "GIF: corrupt block"

    .line 1
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-string v2, "block"

    .line 2
    invoke-static {v2, p1, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private t(II)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int v0, v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private u(Ljava/io/OutputStream;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 2
    array-length v2, p2

    sub-int/2addr v2, v1

    const/16 v3, 0xff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 4
    invoke-virtual {p1, p2, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "gif.dumpImageFile"

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/ImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, ""

    .line 3
    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->l(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/d;

    move-result-object p2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gif.blocks: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lorg/apache/commons/imaging/formats/gif/d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/gif/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 7
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/gif/d;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/gif/b;

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lorg/apache/commons/imaging/formats/gif/b;->a:I

    const/4 v4, 0x4

    .line 10
    invoke-virtual {p0, p1, v3, v0, v4}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->f:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    .line 1
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->l(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/d;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lorg/apache/commons/imaging/formats/gif/d;->a:Lorg/apache/commons/imaging/formats/gif/c;

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->d(Lorg/apache/commons/imaging/formats/gif/d;)Ljava/util/List;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/gif/e;

    .line 6
    iget-object v4, p1, Lorg/apache/commons/imaging/formats/gif/d;->c:[B

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->g(Lorg/apache/commons/imaging/formats/gif/c;Lorg/apache/commons/imaging/formats/gif/e;[B)Ljava/awt/image/BufferedImage;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2

    .line 7
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "GIF: Couldn\'t read Header"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->l(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/d;

    move-result-object p1

    .line 3
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/gif/d;->a:Lorg/apache/commons/imaging/formats/gif/c;

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->f(Lorg/apache/commons/imaging/formats/gif/d;)Lorg/apache/commons/imaging/formats/gif/e;

    move-result-object v0

    .line 5
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/gif/d;->c:[B

    invoke-direct {p0, p2, v0, p1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->g(Lorg/apache/commons/imaging/formats/gif/c;Lorg/apache/commons/imaging/formats/gif/e;[B)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "GIF: Couldn\'t read Header"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->e:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultParameters()Lorg/apache/commons/imaging/ImagingParameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDefaultParameters()Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultParameters()Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;-><init>()V

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/FormatCompliance;

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/FormatCompliance;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->m(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/d;

    return-object v0
.end method

.method public bridge synthetic getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;)[B

    move-result-object p1

    return-object p1
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 2
    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->l(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/d;

    move-result-object v2

    .line 3
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/gif/d;->a:Lorg/apache/commons/imaging/formats/gif/c;

    if-eqz v3, :cond_2

    .line 4
    iget-object v4, v2, Lorg/apache/commons/imaging/formats/gif/d;->b:Ljava/util/List;

    const/16 v5, 0x2c

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->e(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/b;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/gif/g;

    if-eqz v4, :cond_1

    .line 5
    iget-object v6, v2, Lorg/apache/commons/imaging/formats/gif/d;->b:Ljava/util/List;

    const/16 v7, 0x21f9

    invoke-direct {v0, v6, v7}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->e(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/b;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/gif/f;

    .line 6
    iget v13, v3, Lorg/apache/commons/imaging/formats/gif/c;->h:I

    .line 7
    iget v15, v3, Lorg/apache/commons/imaging/formats/gif/c;->g:I

    .line 8
    iget-object v7, v2, Lorg/apache/commons/imaging/formats/gif/d;->b:Ljava/util/List;

    invoke-direct {v0, v7}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 9
    iget-byte v3, v3, Lorg/apache/commons/imaging/formats/gif/c;->m:B

    const/4 v7, 0x1

    add-int/lit8 v9, v3, 0x1

    .line 10
    sget-object v11, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    .line 11
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/gif/d;->b:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 12
    iget-boolean v4, v4, Lorg/apache/commons/imaging/formats/gif/g;->h:Z

    int-to-double v7, v15

    const-wide/high16 v16, 0x4052000000000000L    # 72.0

    div-double v7, v7, v16

    double-to-float v5, v7

    int-to-double v7, v13

    div-double v7, v7, v16

    double-to-float v8, v7

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Gif "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lorg/apache/commons/imaging/formats/gif/d;->a:Lorg/apache/commons/imaging/formats/gif/c;

    iget-byte v12, v12, Lorg/apache/commons/imaging/formats/gif/c;->d:B

    int-to-char v12, v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lorg/apache/commons/imaging/formats/gif/d;->a:Lorg/apache/commons/imaging/formats/gif/c;

    iget-byte v12, v12, Lorg/apache/commons/imaging/formats/gif/c;->e:B

    int-to-char v12, v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/apache/commons/imaging/formats/gif/d;->a:Lorg/apache/commons/imaging/formats/gif/c;

    iget-byte v2, v2, Lorg/apache/commons/imaging/formats/gif/c;->f:B

    int-to-char v2, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v6, :cond_0

    .line 14
    iget-boolean v6, v6, Lorg/apache/commons/imaging/formats/gif/f;->d:Z

    if-eqz v6, :cond_0

    const/16 v22, 0x1

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    .line 15
    :goto_0
    sget-object v24, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 16
    sget-object v25, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 17
    new-instance v1, Lorg/apache/commons/imaging/ImageInfo;

    move-object v7, v1

    const/16 v16, 0x48

    const/16 v18, 0x48

    const/16 v23, 0x1

    const-string v12, "GIF Graphics Interchange Format"

    const-string v14, "image/gif"

    move v6, v8

    move-object v8, v2

    move v2, v15

    move v15, v3

    move/from16 v17, v6

    move/from16 v19, v5

    move/from16 v20, v2

    move/from16 v21, v4

    invoke-direct/range {v7 .. v25}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v1

    .line 18
    :cond_1
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "GIF: Couldn\'t read ImageDescriptor"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_2
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "GIF: Couldn\'t read Header"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Ljava/awt/Dimension;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->l(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/d;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/gif/d;->a:Lorg/apache/commons/imaging/formats/gif/c;

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/commons/imaging/formats/gif/c;->g:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/gif/c;->h:I

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "GIF: Couldn\'t read Header"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->l(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/d;

    move-result-object p1

    .line 3
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/gif/d;->a:Lorg/apache/commons/imaging/formats/gif/c;

    if-eqz p2, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->d(Lorg/apache/commons/imaging/formats/gif/d;)Ljava/util/List;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/gif/e;

    .line 7
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/gif/e;->b:Lorg/apache/commons/imaging/formats/gif/f;

    iget v2, v2, Lorg/apache/commons/imaging/formats/gif/f;->c:I

    invoke-static {v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->b(I)Lorg/apache/commons/imaging/formats/gif/DisposalMethod;

    move-result-object v2

    .line 8
    new-instance v3, Lorg/apache/commons/imaging/formats/gif/GifImageMetadataItem;

    iget-object v4, v1, Lorg/apache/commons/imaging/formats/gif/e;->b:Lorg/apache/commons/imaging/formats/gif/f;

    iget v4, v4, Lorg/apache/commons/imaging/formats/gif/f;->e:I

    iget-object v1, v1, Lorg/apache/commons/imaging/formats/gif/e;->a:Lorg/apache/commons/imaging/formats/gif/g;

    iget v5, v1, Lorg/apache/commons/imaging/formats/gif/g;->b:I

    iget v1, v1, Lorg/apache/commons/imaging/formats/gif/g;->c:I

    invoke-direct {v3, v4, v5, v1, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageMetadataItem;-><init>(IIILorg/apache/commons/imaging/formats/gif/DisposalMethod;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/formats/gif/GifImageMetadata;

    iget v1, p2, Lorg/apache/commons/imaging/formats/gif/c;->g:I

    iget p2, p2, Lorg/apache/commons/imaging/formats/gif/c;->h:I

    invoke-direct {p1, v1, p2, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageMetadata;-><init>(IILjava/util/List;)V

    return-object p1

    .line 10
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "GIF: Couldn\'t read Header"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Graphics Interchange Format"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/common/XmpImagingParameters;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->q(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/c;

    move-result-object v0

    .line 3
    iget-boolean v1, v0, Lorg/apache/commons/imaging/formats/gif/c;->l:Z

    if-eqz v1, :cond_0

    .line 4
    iget-byte v1, v0, Lorg/apache/commons/imaging/formats/gif/c;->o:B

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->k(Ljava/io/InputStream;I)[B

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, v0, p1, v1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->j(Lorg/apache/commons/imaging/formats/gif/c;Ljava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/gif/b;

    .line 8
    iget v5, v3, Lorg/apache/commons/imaging/formats/gif/b;->a:I

    const/16 v6, 0x21ff

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    check-cast v3, Lorg/apache/commons/imaging/formats/gif/a;

    .line 10
    invoke-virtual {v3, v1}, Lorg/apache/commons/imaging/formats/gif/a;->b(Z)[B

    move-result-object v3

    .line 11
    array-length v5, v3

    sget-object v6, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->h:[B

    array-length v7, v6

    if-ge v5, v7, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    array-length v5, v6

    invoke-static {v3, v4, v6, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/16 v5, 0x100

    new-array v6, v5, [B

    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0xff

    if-gt v7, v8, :cond_4

    rsub-int v8, v7, 0xff

    int-to-byte v8, v8

    .line 13
    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 14
    :cond_4
    array-length v7, v3

    sget-object v8, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->h:[B

    array-length v9, v8

    add-int/2addr v9, v5

    if-ge v7, v9, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    array-length v7, v3

    sub-int/2addr v7, v5

    invoke-static {v3, v7, v6, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 16
    new-instance v4, Ljava/lang/String;

    array-length v6, v8

    array-length v7, v3

    array-length v8, v8

    add-int/2addr v8, v5

    sub-int/2addr v7, v8

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v6, v7, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 17
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_6
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "XMP block in GIF missing magic trailer."

    invoke-direct {p2, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    .line 20
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_8
    return-object p2

    .line 21
    :cond_9
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, v1, :cond_b

    .line 22
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_a

    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_a
    return-object p2

    .line 24
    :cond_b
    :try_start_2
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "More than one XMP Block in GIF."

    invoke-direct {p2, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_c

    .line 25
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_2
    throw p2
.end method

.method public bridge synthetic writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/ImagingParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;)V

    return-void
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-nez p3, :cond_0

    .line 2
    new-instance v2, Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;

    invoke-direct {v2}, Lorg/apache/commons/imaging/formats/gif/GifImagingParameters;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    .line 3
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/XmpImagingParameters;->getXmpXml()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    .line 6
    new-instance v5, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v5}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v5, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v7, 0xff

    goto :goto_1

    :cond_1
    const/16 v7, 0x100

    .line 7
    :goto_1
    new-instance v8, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v8}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v8, v0, v7}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v8

    if-nez v8, :cond_2

    .line 8
    new-instance v8, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v8}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v8, v0, v7}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeQuantizedRgbPalette(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/Palette;

    move-result-object v8

    .line 9
    sget-object v7, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->d:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "quantizing"

    .line 10
    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_2
    sget-object v7, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->d:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "exact palette"

    .line 12
    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-eqz v8, :cond_15

    .line 13
    invoke-interface {v8}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v7

    add-int/2addr v7, v5

    .line 14
    new-instance v9, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v9, v1, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const/16 v10, 0x47

    .line 15
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x49

    .line 16
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x46

    .line 17
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x38

    .line 18
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x39

    .line 19
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x61

    .line 20
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 21
    invoke-virtual {v9, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 22
    invoke-virtual {v9, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v10, 0x80

    const/4 v11, 0x4

    const/16 v12, 0x10

    const/4 v13, 0x7

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v6, 0x0

    if-le v7, v10, :cond_4

    const/4 v7, 0x7

    goto :goto_3

    :cond_4
    const/16 v10, 0x40

    if-le v7, v10, :cond_5

    const/4 v7, 0x6

    goto :goto_3

    :cond_5
    const/16 v10, 0x20

    if-le v7, v10, :cond_6

    const/4 v7, 0x5

    goto :goto_3

    :cond_6
    if-le v7, v12, :cond_7

    const/4 v7, 0x4

    goto :goto_3

    :cond_7
    const/16 v10, 0x8

    if-le v7, v10, :cond_8

    const/4 v7, 0x3

    goto :goto_3

    :cond_8
    if-le v7, v11, :cond_9

    const/4 v7, 0x2

    goto :goto_3

    :cond_9
    if-le v7, v14, :cond_a

    const/4 v7, 0x1

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v10, v7, 0x1

    shl-int/2addr v15, v10

    int-to-byte v14, v7

    and-int/2addr v14, v13

    mul-int/lit8 v14, v14, 0x10

    .line 23
    invoke-virtual {v9, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 24
    invoke-virtual {v9, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 25
    invoke-virtual {v9, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v12, 0x21

    .line 26
    invoke-virtual {v9, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v14, -0x7

    .line 27
    invoke-virtual {v9, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 28
    invoke-virtual {v9, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    int-to-byte v11, v5

    .line 29
    invoke-virtual {v9, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 30
    invoke-virtual {v9, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 31
    invoke-virtual {v9, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-eqz v5, :cond_b

    .line 32
    invoke-interface {v8}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v11

    goto :goto_4

    :cond_b
    const/4 v11, 0x0

    :goto_4
    int-to-byte v11, v11

    invoke-virtual {v9, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 33
    invoke-virtual {v9, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-eqz v2, :cond_d

    .line 34
    invoke-virtual {v9, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v11, 0xff

    .line 35
    invoke-virtual {v9, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 36
    sget-object v12, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->h:[B

    array-length v14, v12

    invoke-virtual {v9, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 37
    invoke-virtual {v9, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 38
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 39
    invoke-virtual {v9, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    const/4 v2, 0x0

    :goto_5
    if-gt v2, v11, :cond_c

    rsub-int v11, v2, 0xff

    .line 40
    invoke-virtual {v9, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    const/16 v11, 0xff

    goto :goto_5

    .line 41
    :cond_c
    invoke-virtual {v9, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :cond_d
    const/16 v2, 0x2c

    .line 42
    invoke-virtual {v9, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 43
    invoke-virtual {v9, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 44
    invoke-virtual {v9, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 45
    invoke-virtual {v9, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 46
    invoke-virtual {v9, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    and-int/lit8 v2, v7, 0x7

    const/16 v7, 0x80

    or-int/2addr v2, v7

    .line 47
    invoke-virtual {v9, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v15, :cond_f

    .line 48
    invoke-interface {v8}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v7

    if-ge v2, v7, :cond_e

    .line 49
    invoke-interface {v8, v2}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v7

    shr-int/lit8 v11, v7, 0x10

    const/16 v12, 0xff

    and-int/2addr v11, v12

    shr-int/lit8 v13, v7, 0x8

    and-int/2addr v13, v12

    shr-int/2addr v7, v6

    and-int/2addr v7, v12

    .line 50
    invoke-virtual {v9, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 51
    invoke-virtual {v9, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 52
    invoke-virtual {v9, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_7

    .line 53
    :cond_e
    invoke-virtual {v9, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 54
    invoke-virtual {v9, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 55
    invoke-virtual {v9, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x2

    if-ge v10, v2, :cond_10

    const/4 v14, 0x2

    goto :goto_8

    :cond_10
    move v14, v10

    .line 56
    :goto_8
    invoke-virtual {v9, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 57
    new-instance v2, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, v14, v7, v6}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;-><init>(ILjava/nio/ByteOrder;Z)V

    mul-int v7, v3, v4

    .line 58
    new-array v7, v7, [B

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v4, :cond_14

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v3, :cond_13

    .line 59
    invoke-virtual {v0, v11, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v12

    const v13, 0xffffff

    and-int/2addr v13, v12

    if-eqz v5, :cond_12

    shr-int/lit8 v12, v12, 0x18

    const/16 v14, 0xff

    and-int/2addr v12, v14

    if-ge v12, v14, :cond_11

    .line 60
    invoke-interface {v8}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v12

    goto :goto_b

    .line 61
    :cond_11
    invoke-interface {v8, v13}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v12

    goto :goto_b

    :cond_12
    const/16 v14, 0xff

    .line 62
    invoke-interface {v8, v13}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v12

    :goto_b
    mul-int v13, v10, v3

    add-int/2addr v13, v11

    int-to-byte v12, v12

    .line 63
    aput-byte v12, v7, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_13
    const/16 v14, 0xff

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 64
    :cond_14
    invoke-virtual {v2, v7}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->compress([B)[B

    move-result-object v0

    move-object/from16 v2, p0

    .line 65
    invoke-direct {v2, v9, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->u(Ljava/io/OutputStream;[B)V

    const/16 v0, 0x3b

    .line 66
    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 67
    invoke-virtual {v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    .line 68
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_15
    move-object/from16 v2, p0

    .line 69
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "Gif: can\'t write images with more than 256 colors"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
