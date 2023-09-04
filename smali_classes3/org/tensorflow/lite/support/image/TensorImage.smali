.class public Lorg/tensorflow/lite/support/image/TensorImage;
.super Ljava/lang/Object;
.source "TensorImage.java"


# instance fields
.field private final a:Lorg/tensorflow/lite/DataType;

.field private b:Lorg/tensorflow/lite/support/image/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    invoke-direct {p0, v0}, Lorg/tensorflow/lite/support/image/TensorImage;-><init>(Lorg/tensorflow/lite/DataType;)V

    return-void
.end method

.method public constructor <init>(Lorg/tensorflow/lite/DataType;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->b:Lorg/tensorflow/lite/support/image/b;

    .line 4
    sget-object v0, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Illegal data type for TensorImage: Only FLOAT32 and UINT8 are accepted"

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lorg/tensorflow/lite/support/image/TensorImage;->a:Lorg/tensorflow/lite/DataType;

    return-void
.end method

.method public static createFrom(Lorg/tensorflow/lite/support/image/TensorImage;Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/image/TensorImage;
    .locals 1

    .line 1
    new-instance v0, Lorg/tensorflow/lite/support/image/TensorImage;

    invoke-direct {v0, p1}, Lorg/tensorflow/lite/support/image/TensorImage;-><init>(Lorg/tensorflow/lite/DataType;)V

    .line 2
    iget-object p0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->b:Lorg/tensorflow/lite/support/image/b;

    invoke-interface {p0}, Lorg/tensorflow/lite/support/image/b;->clone()Lorg/tensorflow/lite/support/image/b;

    move-result-object p0

    iput-object p0, v0, Lorg/tensorflow/lite/support/image/TensorImage;->b:Lorg/tensorflow/lite/support/image/b;

    return-object v0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lorg/tensorflow/lite/support/image/TensorImage;
    .locals 1

    .line 1
    new-instance v0, Lorg/tensorflow/lite/support/image/TensorImage;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/image/TensorImage;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->b:Lorg/tensorflow/lite/support/image/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/tensorflow/lite/support/image/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No image has been loaded yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/TensorImage;->getTensorBuffer()Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getColorSpaceType()Lorg/tensorflow/lite/support/image/ColorSpaceType;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->b:Lorg/tensorflow/lite/support/image/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/tensorflow/lite/support/image/b;->c()Lorg/tensorflow/lite/support/image/ColorSpaceType;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No image has been loaded yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataType()Lorg/tensorflow/lite/DataType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->a:Lorg/tensorflow/lite/DataType;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->b:Lorg/tensorflow/lite/support/image/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/tensorflow/lite/support/image/b;->getHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No image has been loaded yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTensorBuffer()Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->b:Lorg/tensorflow/lite/support/image/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/tensorflow/lite/support/image/TensorImage;->a:Lorg/tensorflow/lite/DataType;

    invoke-interface {v0, v1}, Lorg/tensorflow/lite/support/image/b;->a(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No image has been loaded yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/TensorImage;->b:Lorg/tensorflow/lite/support/image/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/tensorflow/lite/support/image/b;->getWidth()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No image has been loaded yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public load(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/tensorflow/lite/support/image/a;->e(Landroid/graphics/Bitmap;)Lorg/tensorflow/lite/support/image/a;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/support/image/TensorImage;->b:Lorg/tensorflow/lite/support/image/b;

    return-void
.end method

.method public load(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V
    .locals 1

    .line 8
    sget-object v0, Lorg/tensorflow/lite/support/image/ColorSpaceType;->RGB:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    invoke-virtual {p0, p1, v0}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)V

    return-void
.end method

.method public load(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)V
    .locals 0

    .line 9
    invoke-static {p1, p2}, Lorg/tensorflow/lite/support/image/d;->e(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)Lorg/tensorflow/lite/support/image/d;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/support/image/TensorImage;->b:Lorg/tensorflow/lite/support/image/b;

    return-void
.end method

.method public load([F[I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/TensorImage;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v0

    invoke-static {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createDynamic(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadArray([F[I)V

    .line 4
    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V

    return-void
.end method

.method public load([I[I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/TensorImage;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v0

    invoke-static {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createDynamic(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadArray([I[I)V

    .line 7
    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V

    return-void
.end method
