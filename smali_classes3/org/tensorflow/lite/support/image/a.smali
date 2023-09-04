.class final Lorg/tensorflow/lite/support/image/a;
.super Ljava/lang/Object;
.source "BitmapContainer.java"

# interfaces
.implements Lorg/tensorflow/lite/support/image/b;


# instance fields
.field private final a:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot load null bitmap."

    .line 2
    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Only supports loading ARGB_8888 bitmaps."

    .line 4
    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lorg/tensorflow/lite/support/image/a;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method static e(Landroid/graphics/Bitmap;)Lorg/tensorflow/lite/support/image/a;
    .locals 1

    .line 1
    new-instance v0, Lorg/tensorflow/lite/support/image/a;

    invoke-direct {v0, p0}, Lorg/tensorflow/lite/support/image/a;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createDynamic(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/a;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lorg/tensorflow/lite/support/image/c;->a(Landroid/graphics/Bitmap;Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V

    return-object p1
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Lorg/tensorflow/lite/support/image/ColorSpaceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->d(Landroid/graphics/Bitmap$Config;)Lorg/tensorflow/lite/support/image/ColorSpaceType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/a;->d()Lorg/tensorflow/lite/support/image/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/tensorflow/lite/support/image/b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/a;->d()Lorg/tensorflow/lite/support/image/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/tensorflow/lite/support/image/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iget-object v2, p0, Lorg/tensorflow/lite/support/image/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lorg/tensorflow/lite/support/image/a;->e(Landroid/graphics/Bitmap;)Lorg/tensorflow/lite/support/image/a;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method
