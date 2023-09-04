.class public abstract Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;
.super Ljava/lang/Object;
.source "TiffImageWriterBase.java"


# instance fields
.field protected final byteOrder:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffConstants;->DEFAULT_TIFF_BYTE_ORDER:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private a(II[B)V
    .locals 7

    mul-int p1, p1, p2

    .line 1
    array-length v0, p3

    div-int/2addr v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    mul-int v2, v1, p1

    add-int/lit8 v3, p1, -0x1

    :goto_1
    if-lt v3, p2, :cond_0

    add-int v4, v2, v3

    .line 2
    aget-byte v5, p3, v4

    sub-int v6, v4, p2

    aget-byte v6, p3, v6

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Ljava/awt/image/BufferedImage;)Z
    .locals 17

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    const/high16 v0, 0x100000

    .line 3
    div-int/2addr v0, v8

    const/4 v10, 0x1

    if-ge v0, v10, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v0

    :goto_0
    add-int v0, v9, v11

    sub-int/2addr v0, v10

    .line 4
    div-int v12, v0, v11

    mul-int v0, v11, v8

    .line 5
    new-array v13, v0, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v12, :cond_4

    mul-int v2, v15, v11

    add-int v0, v2, v11

    if-le v0, v9, :cond_1

    move v0, v9

    :cond_1
    const/4 v1, 0x0

    sub-int v16, v0, v2

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v3, v8

    move/from16 v4, v16

    move-object v5, v13

    move v7, v8

    .line 6
    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    mul-int v0, v16, v8

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 7
    aget v2, v13, v1

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_2

    return v10

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_4
    return v14
.end method

.method private c(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 4
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    if-gez v2, :cond_1

    .line 5
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 7
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 8
    iget-object v4, v3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    invoke-virtual {v2, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v4

    if-nez v4, :cond_2

    .line 9
    invoke-virtual {v2, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private d(Ljava/awt/image/BufferedImage;III)[[B
    .locals 22

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    add-int v5, v4, v2

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 3
    div-int/2addr v5, v2

    .line 4
    new-array v7, v5, [[B

    move v10, v4

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_7

    .line 5
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int/2addr v10, v11

    mul-int v12, v1, v0

    mul-int v12, v12, v3

    add-int/lit8 v12, v12, 0x7

    const/16 v13, 0x8

    .line 6
    div-int/2addr v12, v13

    mul-int v11, v11, v12

    .line 7
    new-array v11, v11, [B

    mul-int v12, v9, v2

    add-int v14, v12, v2

    const/4 v15, 0x0

    :goto_1
    if-ge v12, v4, :cond_6

    if-ge v12, v14, :cond_6

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_2
    if-ge v8, v3, :cond_4

    move-object/from16 v13, p1

    .line 8
    invoke-virtual {v13, v8, v12}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v19

    shr-int/lit8 v6, v19, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v2, v19, 0x8

    and-int/lit16 v2, v2, 0xff

    move/from16 v20, v3

    shr-int/lit8 v3, v19, 0x0

    and-int/lit16 v3, v3, 0xff

    move/from16 v21, v4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    add-int/2addr v6, v2

    add-int/2addr v6, v3

    .line 9
    div-int/lit8 v6, v6, 0x3

    const/16 v2, 0x7f

    if-le v6, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_3

    :cond_0
    const/4 v2, 0x1

    :goto_3
    shl-int/lit8 v3, v17, 0x1

    or-int/2addr v2, v3

    add-int/lit8 v3, v16, 0x1

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1

    add-int/lit8 v3, v15, 0x1

    int-to-byte v2, v2

    .line 10
    aput-byte v2, v11, v15

    move v15, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_4

    :cond_1
    move/from16 v17, v2

    move/from16 v16, v3

    :goto_4
    const/16 v18, 0x8

    goto :goto_5

    :cond_2
    const/16 v18, 0x8

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    add-int/lit8 v4, v15, 0x1

    int-to-byte v6, v6

    .line 11
    aput-byte v6, v11, v15

    add-int/lit8 v6, v4, 0x1

    int-to-byte v2, v2

    .line 12
    aput-byte v2, v11, v4

    add-int/lit8 v2, v6, 0x1

    int-to-byte v3, v3

    .line 13
    aput-byte v3, v11, v6

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v19, 0x18

    int-to-byte v4, v4

    .line 14
    aput-byte v4, v11, v2

    move v15, v3

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v15, 0x1

    int-to-byte v6, v6

    .line 15
    aput-byte v6, v11, v15

    add-int/lit8 v6, v4, 0x1

    int-to-byte v2, v2

    .line 16
    aput-byte v2, v11, v4

    add-int/lit8 v2, v6, 0x1

    int-to-byte v3, v3

    .line 17
    aput-byte v3, v11, v6

    move v15, v2

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p4

    move/from16 v3, v20

    move/from16 v4, v21

    const/4 v6, 0x1

    const/16 v13, 0x8

    goto :goto_2

    :cond_4
    move-object/from16 v13, p1

    move/from16 v20, v3

    move/from16 v21, v4

    const/16 v18, 0x8

    if-lez v16, :cond_5

    rsub-int/lit8 v2, v16, 0x8

    shl-int v2, v17, v2

    add-int/lit8 v3, v15, 0x1

    int-to-byte v2, v2

    .line 18
    aput-byte v2, v11, v15

    move v15, v3

    :cond_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, p4

    move/from16 v3, v20

    move/from16 v4, v21

    const/4 v6, 0x1

    const/16 v13, 0x8

    goto/16 :goto_1

    :cond_6
    move-object/from16 v13, p1

    move/from16 v20, v3

    move/from16 v21, v4

    .line 19
    aput-object v11, v7, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p4

    move/from16 v3, v20

    move/from16 v4, v21

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v7
.end method

.method protected static imageDataPaddingLength(I)I
    .locals 0

    .line 1
    rem-int/lit8 p0, p0, 0x4

    rsub-int/lit8 p0, p0, 0x4

    rem-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method protected validateDirectories(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)Lorg/apache/commons/imaging/formats/tiff/write/f;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "."

    if-eqz v11, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 6
    iget v13, v11, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    .line 7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gez v13, :cond_7

    const/4 v12, -0x4

    if-eq v13, v12, :cond_5

    const/4 v12, -0x3

    if-eq v13, v12, :cond_3

    const/4 v12, -0x2

    if-ne v13, v12, :cond_2

    if-nez v7, :cond_1

    move-object v7, v11

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "More than one EXIF directory."

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-nez v6, :cond_4

    move-object v6, v11

    goto :goto_0

    .line 10
    :cond_4
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "More than one GPS directory."

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-nez v5, :cond_6

    move-object v5, v11

    goto :goto_0

    .line 11
    :cond_6
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "More than one Interoperability directory."

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 13
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :goto_0
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 15
    invoke-virtual {v11}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getFields()Ljava/util/List;

    move-result-object v11

    .line 16
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 17
    iget v14, v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 18
    iget v14, v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    iget v14, v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    iget v15, v15, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    if-ne v14, v15, :cond_a

    if-nez v9, :cond_9

    move-object v9, v13

    goto :goto_1

    .line 20
    :cond_9
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "More than one Exif directory offset field."

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_a
    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    iget v15, v15, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    if-ne v14, v15, :cond_c

    if-nez v8, :cond_b

    move-object v8, v13

    goto :goto_1

    .line 22
    :cond_b
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "More than one Interoperability directory offset field."

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_c
    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_GPSINFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    iget v15, v15, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    if-ne v14, v15, :cond_8

    if-nez v10, :cond_d

    move-object v10, v13

    goto :goto_1

    .line 24
    :cond_d
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "More than one GPS directory offset field."

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_e
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    .line 26
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") appears twice in directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_f
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "More than one directory with index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_10
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 29
    invoke-interface {v2, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 30
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_13

    .line 31
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v11, :cond_12

    .line 33
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    if-eqz v4, :cond_11

    .line 34
    invoke-virtual {v4, v13}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->setNextDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    :cond_11
    add-int/lit8 v11, v11, 0x1

    move-object v4, v13

    goto :goto_2

    .line 35
    :cond_12
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 37
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 38
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/write/f;

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v2, v4, v1, v3}, Lorg/apache/commons/imaging/formats/tiff/write/f;-><init>(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;Ljava/util/Map;)V

    if-nez v5, :cond_15

    if-nez v8, :cond_14

    goto :goto_3

    .line 39
    :cond_14
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "Output set has Interoperability Directory Offset field, but no Interoperability Directory"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    :goto_3
    if-eqz v5, :cond_18

    if-nez v7, :cond_16

    .line 40
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v3

    move-object v7, v3

    :cond_16
    if-nez v8, :cond_17

    .line 41
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    .line 42
    invoke-static {v3, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v8

    .line 43
    invoke-virtual {v7, v8}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 44
    :cond_17
    invoke-virtual {v2, v5, v8}, Lorg/apache/commons/imaging/formats/tiff/write/f;->a(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_18
    if-nez v7, :cond_1a

    if-nez v9, :cond_19

    goto :goto_4

    .line 45
    :cond_19
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "Output set has Exif Directory Offset field, but no Exif Directory"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    :goto_4
    if-eqz v7, :cond_1c

    if-nez v9, :cond_1b

    .line 46
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v9

    .line 47
    invoke-virtual {v1, v9}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 48
    :cond_1b
    invoke-virtual {v2, v7, v9}, Lorg/apache/commons/imaging/formats/tiff/write/f;->a(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_1c
    if-nez v6, :cond_1e

    if-nez v10, :cond_1d

    goto :goto_5

    .line 49
    :cond_1d
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "Output set has GPS Directory Offset field, but no GPS Directory"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    :goto_5
    if-eqz v6, :cond_20

    if-nez v10, :cond_1f

    .line 50
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_GPSINFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v10

    .line 51
    invoke-virtual {v1, v10}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    .line 52
    :cond_1f
    invoke-virtual {v2, v6, v10}, Lorg/apache/commons/imaging/formats/tiff/write/f;->a(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_20
    return-object v2

    .line 53
    :cond_21
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "Missing root directory."

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_22
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "No directories."

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    move-result-object v1

    .line 2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/imaging/common/XmpImagingParameters;->getXmpXml()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/imaging/ImagingParameters;->getPixelDensity()Lorg/apache/commons/imaging/PixelDensity;

    move-result-object v3

    if-nez v3, :cond_0

    const-wide/high16 v3, 0x4052000000000000L    # 72.0

    .line 4
    invoke-static {v3, v4, v3, v4}, Lorg/apache/commons/imaging/PixelDensity;->createFromPixelsPerInch(DD)Lorg/apache/commons/imaging/PixelDensity;

    move-result-object v3

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->b(Ljava/awt/image/BufferedImage;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const v9, 0xfa00

    .line 9
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->getCompression()Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x5

    const/16 v12, 0x8

    if-eqz v10, :cond_3

    .line 10
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 11
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->getLzwCompressionBlockSize()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 12
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v14, 0x1f40

    if-lt v9, v14, :cond_2

    .line 13
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit8 v9, v9, 0x8

    goto :goto_1

    .line 14
    :cond_2
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block size parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is less than 8000 minimum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v10, 0x5

    :cond_4
    :goto_1
    const/4 v13, 0x3

    const/4 v14, 0x4

    const/4 v15, 0x2

    if-eq v10, v15, :cond_7

    if-eq v10, v13, :cond_7

    if-ne v10, v14, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    const/4 v6, 0x4

    goto :goto_2

    :cond_6
    const/4 v6, 0x3

    :goto_2
    const/16 v7, 0x8

    const/16 v16, 0x2

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v16, 0x0

    :goto_4
    mul-int v17, v4, v7

    mul-int v17, v17, v6

    .line 15
    div-int v9, v9, v17

    .line 16
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v8, p1

    .line 17
    invoke-direct {v0, v8, v6, v7, v9}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->d(Ljava/awt/image/BufferedImage;III)[[B

    move-result-object v8

    if-ne v10, v15, :cond_9

    const/4 v11, 0x0

    .line 18
    :goto_5
    array-length v15, v8

    if-ge v11, v15, :cond_8

    .line 19
    aget-object v15, v8, v11

    aget-object v14, v8, v11

    array-length v14, v14

    add-int/lit8 v18, v4, 0x7

    div-int/lit8 v18, v18, 0x8

    div-int v14, v14, v18

    invoke-static {v15, v4, v14}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compressModifiedHuffman([BII)[B

    move-result-object v14

    aput-object v14, v8, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v14, 0x4

    goto :goto_5

    :cond_8
    move-object/from16 v19, v1

    goto/16 :goto_12

    :cond_9
    if-ne v10, v13, :cond_11

    .line 20
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->getT4Options()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 21
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    :goto_6
    and-int/lit8 v11, v11, 0x7

    and-int/lit8 v14, v11, 0x1

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    goto :goto_7

    :cond_b
    const/4 v14, 0x0

    :goto_7
    and-int/lit8 v15, v11, 0x2

    if-eqz v15, :cond_c

    const/4 v15, 0x1

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    :goto_8
    if-nez v15, :cond_10

    and-int/lit8 v15, v11, 0x4

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    goto :goto_9

    :cond_d
    const/4 v15, 0x0

    :goto_9
    const/4 v13, 0x0

    .line 22
    :goto_a
    array-length v12, v8

    if-ge v13, v12, :cond_f

    if-eqz v14, :cond_e

    .line 23
    aget-object v12, v8, v13

    move/from16 p1, v11

    aget-object v11, v8, v13

    array-length v11, v11

    add-int/lit8 v20, v4, 0x7

    const/16 v19, 0x8

    div-int/lit8 v20, v20, 0x8

    div-int v11, v11, v20

    invoke-static {v12, v4, v11, v15, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compressT4_2D([BIIZI)[B

    move-result-object v11

    aput-object v11, v8, v13

    goto :goto_b

    :cond_e
    move/from16 p1, v11

    const/16 v19, 0x8

    .line 24
    aget-object v11, v8, v13

    aget-object v12, v8, v13

    array-length v12, v12

    add-int/lit8 v20, v4, 0x7

    div-int/lit8 v20, v20, 0x8

    div-int v12, v12, v20

    invoke-static {v11, v4, v12, v15}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compressT4_1D([BIIZ)[B

    move-result-object v11

    aput-object v11, v8, v13

    :goto_b
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, p1

    goto :goto_a

    :cond_f
    move/from16 p1, v11

    move-object/from16 v19, v1

    const/4 v1, 0x1

    goto/16 :goto_14

    .line 25
    :cond_10
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "T.4 compression with the uncompressed mode extension is not yet supported"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    const/4 v12, 0x4

    if-ne v10, v12, :cond_16

    .line 26
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->getT6Options()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 27
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    :goto_c
    and-int/2addr v11, v12

    and-int/lit8 v12, v11, 0x2

    if-eqz v12, :cond_13

    const/4 v12, 0x1

    goto :goto_d

    :cond_13
    const/4 v12, 0x0

    :goto_d
    if-nez v12, :cond_15

    const/4 v12, 0x0

    .line 28
    :goto_e
    array-length v13, v8

    if-ge v12, v13, :cond_14

    .line 29
    aget-object v13, v8, v12

    aget-object v14, v8, v12

    array-length v14, v14

    add-int/lit8 v15, v4, 0x7

    const/16 v19, 0x8

    div-int/lit8 v15, v15, 0x8

    div-int/2addr v14, v15

    invoke-static {v13, v4, v14}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compressT6([BII)[B

    move-result-object v13

    aput-object v13, v8, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_14
    move-object/from16 v19, v1

    move v12, v11

    const/4 v1, 0x1

    const/4 v11, 0x0

    goto :goto_15

    .line 30
    :cond_15
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "T.6 compression with the uncompressed mode extension is not yet supported"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    const v12, 0x8005

    if-ne v10, v12, :cond_17

    const/4 v11, 0x0

    .line 31
    :goto_f
    array-length v12, v8

    if-ge v11, v12, :cond_8

    .line 32
    new-instance v12, Lorg/apache/commons/imaging/common/PackBits;

    invoke-direct {v12}, Lorg/apache/commons/imaging/common/PackBits;-><init>()V

    aget-object v13, v8, v11

    invoke-virtual {v12, v13}, Lorg/apache/commons/imaging/common/PackBits;->compress([B)[B

    move-result-object v12

    aput-object v12, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_17
    if-ne v10, v11, :cond_1a

    const/4 v11, 0x0

    .line 33
    :goto_10
    array-length v12, v8

    if-ge v11, v12, :cond_18

    .line 34
    aget-object v12, v8, v11

    .line 35
    aget-object v13, v8, v11

    invoke-direct {v0, v4, v6, v13}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->a(II[B)V

    .line 36
    new-instance v13, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;

    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v19, v1

    const/4 v1, 0x1

    const/16 v15, 0x8

    invoke-direct {v13, v15, v14, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;-><init>(ILjava/nio/ByteOrder;Z)V

    .line 37
    invoke-virtual {v13, v12}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->compress([B)[B

    move-result-object v1

    .line 38
    aput-object v1, v8, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v19

    goto :goto_10

    :cond_18
    move-object/from16 v19, v1

    :cond_19
    const/4 v1, 0x2

    goto :goto_13

    :cond_1a
    move-object/from16 v19, v1

    const/16 v15, 0x8

    if-ne v10, v15, :cond_1b

    const/4 v1, 0x0

    .line 39
    :goto_11
    array-length v11, v8

    if-ge v1, v11, :cond_19

    .line 40
    aget-object v11, v8, v1

    invoke-direct {v0, v4, v6, v11}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->a(II[B)V

    .line 41
    aget-object v11, v8, v1

    invoke-static {v11}, Lorg/apache/commons/imaging/common/ZlibDeflate;->compress([B)[B

    move-result-object v11

    aput-object v11, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1b
    const/4 v1, 0x1

    if-ne v10, v1, :cond_27

    :goto_12
    const/4 v1, 0x1

    :goto_13
    const/4 v11, 0x0

    :goto_14
    const/4 v12, 0x0

    .line 42
    :goto_15
    array-length v13, v8

    new-array v13, v13, [Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    const/4 v14, 0x0

    .line 43
    :goto_16
    array-length v15, v8

    if-ge v14, v15, :cond_1c

    .line 44
    new-instance v15, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;

    move/from16 p1, v1

    move-object/from16 v20, v2

    aget-object v1, v8, v14

    array-length v1, v1

    aget-object v2, v8, v14

    move/from16 p3, v11

    move/from16 v21, v12

    const-wide/16 v11, 0x0

    invoke-direct {v15, v11, v12, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;-><init>(JI[B)V

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    move/from16 v11, p3

    move-object/from16 v2, v20

    move/from16 v12, v21

    goto :goto_16

    :cond_1c
    move/from16 p1, v1

    move-object/from16 v20, v2

    move/from16 p3, v11

    move/from16 v21, v12

    .line 45
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;-><init>(Ljava/nio/ByteOrder;)V

    .line 46
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v2

    .line 47
    sget-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/4 v11, 0x1

    new-array v12, v11, [I

    const/4 v14, 0x0

    aput v4, v12, v14

    invoke-virtual {v2, v8, v12}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V

    .line 48
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    new-array v8, v11, [I

    aput v5, v8, v14

    invoke-virtual {v2, v4, v8}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V

    .line 49
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PHOTOMETRIC_INTERPRETATION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move/from16 v15, v16

    int-to-short v5, v15

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;S)V

    .line 50
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COMPRESSION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    int-to-short v5, v10

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;S)V

    .line 51
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_SAMPLES_PER_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    int-to-short v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;S)V

    const/4 v4, 0x1

    if-eq v6, v4, :cond_1f

    const/4 v5, 0x3

    if-eq v6, v5, :cond_1e

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1d

    const/4 v10, 0x0

    goto :goto_17

    .line 52
    :cond_1d
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    new-array v8, v8, [S

    int-to-short v7, v7

    const/4 v10, 0x0

    aput-short v7, v8, v10

    aput-short v7, v8, v4

    const/4 v11, 0x2

    aput-short v7, v8, v11

    aput-short v7, v8, v5

    invoke-virtual {v2, v6, v8}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;[S)V

    .line 53
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_EXTRA_SAMPLES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    new-array v6, v4, [S

    aput-short v11, v6, v10

    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;[S)V

    goto :goto_17

    :cond_1e
    const/4 v10, 0x0

    const/4 v11, 0x2

    .line 54
    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    new-array v5, v5, [S

    int-to-short v7, v7

    aput-short v7, v5, v10

    aput-short v7, v5, v4

    aput-short v7, v5, v11

    invoke-virtual {v2, v6, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;[S)V

    goto :goto_17

    :cond_1f
    const/4 v10, 0x0

    .line 55
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    new-array v6, v4, [S

    int-to-short v7, v7

    aput-short v7, v6, v10

    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;[S)V

    .line 56
    :goto_17
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_ROWS_PER_STRIP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    new-array v6, v4, [I

    aput v9, v6, v10

    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V

    .line 57
    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->isUnitless()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 58
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v2, v4, v10}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;S)V

    .line 59
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 60
    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->getRawHorizontalDensity()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v5

    .line 61
    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;Lorg/apache/commons/imaging/common/RationalNumber;)V

    .line 62
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 63
    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->getRawVerticalDensity()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v3

    .line 64
    invoke-virtual {v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;Lorg/apache/commons/imaging/common/RationalNumber;)V

    goto :goto_18

    .line 65
    :cond_20
    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->isInInches()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 66
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;S)V

    .line 67
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 68
    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v5

    .line 69
    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;Lorg/apache/commons/imaging/common/RationalNumber;)V

    .line 70
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 71
    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v3

    .line 72
    invoke-virtual {v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;Lorg/apache/commons/imaging/common/RationalNumber;)V

    goto :goto_18

    .line 73
    :cond_21
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;S)V

    .line 74
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 75
    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityCentimetres()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v5

    .line 76
    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;Lorg/apache/commons/imaging/common/RationalNumber;)V

    .line 77
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 78
    invoke-virtual {v3}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityCentimetres()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v3

    .line 79
    invoke-virtual {v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;Lorg/apache/commons/imaging/common/RationalNumber;)V

    :goto_18
    if-eqz p3, :cond_22

    .line 80
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T4_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    move/from16 v4, p3

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;I)V

    :cond_22
    if-eqz v21, :cond_23

    .line 81
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T6_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    move/from16 v11, v21

    invoke-virtual {v2, v3, v11}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;I)V

    :cond_23
    if-eqz v20, :cond_24

    .line 82
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v4, v20

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 83
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XMP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;

    invoke-virtual {v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;[B)V

    :cond_24
    move/from16 v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    .line 84
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PREDICTOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;S)V

    .line 85
    :cond_25
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-direct {v3, v13, v9}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;I)V

    .line 86
    invoke-virtual {v2, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V

    if-eqz v19, :cond_26

    move-object/from16 v2, v19

    .line 87
    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->c(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    :cond_26
    move-object/from16 v2, p2

    .line 88
    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void

    .line 89
    :cond_27
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "Invalid compression parameter (Only CCITT 1D/Group 3/Group 4, LZW, Packbits, Zlib Deflate and uncompressed supported)."

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;J)V

    return-void
.end method

.method protected writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x49

    .line 3
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 4
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d

    .line 5
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_0
    const/16 v0, 0x2a

    .line 7
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    long-to-int p3, p2

    .line 8
    invoke-virtual {p1, p3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    return-void
.end method
