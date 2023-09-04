.class Lorg/tensorflow/lite/support/image/c;
.super Ljava/lang/Object;
.source "ImageConversions.java"


# direct methods
.method static a(Landroid/graphics/Bitmap;Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v8, v9

    .line 3
    new-array v11, v10, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 4
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 p0, v10, 0x3

    const/4 v0, 0x3

    new-array v1, v0, [I

    aput v9, v1, v2

    const/4 v3, 0x1

    aput v8, v1, v3

    const/4 v4, 0x2

    aput v0, v1, v4

    .line 5
    sget-object v0, Lorg/tensorflow/lite/support/image/c$a;->a:[I

    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_1

    .line 6
    new-array p0, p0, [F

    const/4 v0, 0x0

    :goto_0
    if-ge v2, v10, :cond_0

    add-int/lit8 v3, v0, 0x1

    .line 7
    aget v4, v11, v2

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    aput v4, p0, v0

    add-int/lit8 v0, v3, 0x1

    .line 8
    aget v4, v11, v2

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    aput v4, p0, v3

    add-int/lit8 v3, v0, 0x1

    .line 9
    aget v4, v11, v2

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    aput v4, p0, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, p0, v1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadArray([F[I)V

    goto :goto_2

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The type of TensorBuffer, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", is unsupported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    new-array v0, p0, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v10, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 14
    aget v5, v11, v2

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v4, 0x1

    .line 15
    aget v5, v11, v2

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x1

    .line 16
    aget v5, v11, v2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 18
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {p1, p0, v1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadBuffer(Ljava/nio/ByteBuffer;[I)V

    :goto_2
    return-void
.end method

.method static b(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v0

    sget-object v1, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, v1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createFrom(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object p0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v0

    .line 4
    sget-object v1, Lorg/tensorflow/lite/support/image/ColorSpaceType;->GRAYSCALE:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    .line 5
    invoke-virtual {v1, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->b([I)V

    .line 6
    invoke-virtual {v1, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->i([I)I

    move-result v2

    invoke-virtual {v1, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->f([I)I

    move-result v0

    invoke-virtual {v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->k()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 7
    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v0
.end method

.method static c(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v0

    .line 2
    sget-object v1, Lorg/tensorflow/lite/support/image/ColorSpaceType;->RGB:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    .line 3
    invoke-virtual {v1, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->b([I)V

    .line 4
    invoke-virtual {v1, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->f([I)I

    move-result v9

    .line 5
    invoke-virtual {v1, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->i([I)I

    move-result v8

    .line 6
    invoke-virtual {v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->k()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-int v1, v8, v9

    .line 7
    new-array v3, v1, [I

    .line 8
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getIntArray()[I

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 9
    aget v4, p0, v4

    add-int/lit8 v6, v5, 0x1

    .line 10
    aget v5, p0, v5

    add-int/lit8 v7, v6, 0x1

    .line 11
    aget v6, p0, v6

    .line 12
    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move v5, v8

    .line 13
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method
