.class public final Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;
.super Ljava/lang/Object;
.source "YuvToRgbConverter.kt"


# instance fields
.field private final a:Landroid/renderscript/RenderScript;

.field private final b:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

.field private c:I

.field private d:[B

.field private e:Landroid/renderscript/Allocation;

.field private f:Landroid/renderscript/Allocation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->a:Landroid/renderscript/RenderScript;

    .line 3
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->b:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->c:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized yuvToRgb(Landroid/media/Image;Landroid/graphics/Bitmap;)V
    .locals 22
    .param p1    # Landroid/media/Image;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    const-string v2, "image"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "output"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->d:[B

    const/16 v4, 0x23

    if-nez v2, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int v2, v2, v5

    iput v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->c:I

    .line 3
    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    .line 4
    iget v5, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->c:I

    mul-int v5, v5, v2

    div-int/lit8 v5, v5, 0x8

    new-array v2, v5, [B

    iput-object v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->d:[B

    .line 5
    :cond_0
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->d:[B

    if-nez v2, :cond_1

    const-string v2, "yuvBuffer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 6
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v6

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const-string v6, "imagePlanes"

    .line 9
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    array-length v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v6, :cond_a

    aget-object v10, v3, v8

    add-int/lit8 v11, v9, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v9, :cond_4

    if-eq v9, v13, :cond_3

    if-eq v9, v12, :cond_2

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move/from16 v19, v6

    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 11
    :cond_2
    iget v14, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->c:I

    goto :goto_2

    .line 12
    :cond_3
    iget v14, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->c:I

    add-int/2addr v14, v13

    :goto_2
    const/4 v15, 0x2

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 13
    :goto_3
    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 14
    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    .line 15
    invoke-virtual {v10}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    if-nez v9, :cond_5

    move-object/from16 v18, v3

    move-object v9, v4

    move/from16 v19, v6

    goto :goto_4

    .line 16
    :cond_5
    new-instance v9, Landroid/graphics/Rect;

    .line 17
    iget v13, v4, Landroid/graphics/Rect;->left:I

    div-int/2addr v13, v12

    .line 18
    iget v12, v4, Landroid/graphics/Rect;->top:I

    const/16 v17, 0x2

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v18, v3

    .line 19
    iget v3, v4, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x2

    move/from16 v19, v6

    .line 20
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v6, v6, 0x2

    .line 21
    invoke-direct {v9, v13, v12, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 22
    :goto_4
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 23
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 24
    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    new-array v10, v10, [B

    const/4 v12, 0x1

    if-ne v7, v12, :cond_6

    if-ne v15, v12, :cond_6

    move v13, v3

    goto :goto_5

    :cond_6
    add-int/lit8 v13, v3, -0x1

    mul-int v13, v13, v7

    add-int/2addr v13, v12

    :goto_5
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v6, :cond_9

    move-object/from16 v17, v4

    .line 25
    iget v4, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v12

    mul-int v4, v4, v16

    move/from16 v20, v6

    iget v6, v9, Landroid/graphics/Rect;->left:I

    mul-int v6, v6, v7

    add-int/2addr v4, v6

    .line 26
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, 0x1

    if-ne v7, v4, :cond_7

    if-ne v15, v4, :cond_7

    .line 27
    invoke-virtual {v5, v2, v14, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v14, v13

    const/4 v6, 0x0

    goto :goto_8

    :cond_7
    const/4 v6, 0x0

    .line 28
    invoke-virtual {v5, v10, v6, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_8

    mul-int v21, v4, v7

    .line 29
    aget-byte v21, v10, v21

    aput-byte v21, v2, v14

    add-int/2addr v14, v15

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v17

    move/from16 v6, v20

    goto :goto_6

    :cond_9
    move-object/from16 v17, v4

    goto/16 :goto_1

    :goto_9
    add-int/lit8 v8, v8, 0x1

    move v9, v11

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    move/from16 v6, v19

    goto/16 :goto_0

    .line 30
    :cond_a
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->e:Landroid/renderscript/Allocation;

    if-nez v2, :cond_c

    .line 31
    new-instance v2, Landroid/renderscript/Type$Builder;

    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->a:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 32
    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->a:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->d:[B

    if-nez v4, :cond_b

    const-string v4, "yuvBuffer"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_b
    array-length v4, v4

    invoke-static {v3, v2, v4}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v2

    const-string v3, "createSized(rs, elemType.element, yuvBuffer.size)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->e:Landroid/renderscript/Allocation;

    .line 33
    :cond_c
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->f:Landroid/renderscript/Allocation;

    if-nez v2, :cond_d

    .line 34
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->a:Landroid/renderscript/RenderScript;

    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    const-string v3, "createFromBitmap(rs, output)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->f:Landroid/renderscript/Allocation;

    .line 35
    :cond_d
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->e:Landroid/renderscript/Allocation;

    if-nez v2, :cond_e

    const-string v2, "inputAllocation"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_e
    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->d:[B

    if-nez v3, :cond_f

    const-string v3, "yuvBuffer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_f
    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 36
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->b:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->e:Landroid/renderscript/Allocation;

    if-nez v3, :cond_10

    const-string v3, "inputAllocation"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_10
    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 37
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->b:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->f:Landroid/renderscript/Allocation;

    if-nez v3, :cond_11

    const-string v3, "outputAllocation"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_11
    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 38
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->f:Landroid/renderscript/Allocation;

    if-nez v2, :cond_12

    const-string v2, "outputAllocation"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_a

    :cond_12
    move-object v5, v2

    :goto_a
    invoke-virtual {v5, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
