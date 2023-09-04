.class final Lorg/tensorflow/lite/support/image/d;
.super Ljava/lang/Object;
.source "TensorBufferContainer.java"

# interfaces
.implements Lorg/tensorflow/lite/support/image/b;


# static fields
.field private static final a:Ljava/lang/String; = "d"


# instance fields
.field private final b:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

.field private final c:Lorg/tensorflow/lite/support/image/ColorSpaceType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->b([I)V

    .line 3
    iput-object p1, p0, Lorg/tensorflow/lite/support/image/d;->b:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    .line 4
    iput-object p2, p0, Lorg/tensorflow/lite/support/image/d;->c:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    return-void
.end method

.method static e(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)Lorg/tensorflow/lite/support/image/d;
    .locals 1

    .line 1
    new-instance v0, Lorg/tensorflow/lite/support/image/d;

    invoke-direct {v0, p0, p1}, Lorg/tensorflow/lite/support/image/d;-><init>(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/d;->b:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/tensorflow/lite/support/image/d;->b:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/d;->b:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-static {v0, p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createFrom(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/d;->b:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v0

    sget-object v1, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lorg/tensorflow/lite/support/image/d;->a:Ljava/lang/String;

    const-string v1, "<Warning> TensorBufferContainer is holding a non-uint8 image. The conversion to Bitmap will cause numeric casting and clamping on the data value."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/d;->c:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    iget-object v1, p0, Lorg/tensorflow/lite/support/image/d;->b:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->c(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/tensorflow/lite/support/image/ColorSpaceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/d;->c:Lorg/tensorflow/lite/support/image/ColorSpaceType;

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
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/d;->d()Lorg/tensorflow/lite/support/image/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/tensorflow/lite/support/image/b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/d;->d()Lorg/tensorflow/lite/support/image/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/tensorflow/lite/support/image/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/d;->b:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createFrom(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/tensorflow/lite/support/image/d;->c:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/image/d;->e(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/support/image/ColorSpaceType;)Lorg/tensorflow/lite/support/image/d;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/d;->c:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    iget-object v1, p0, Lorg/tensorflow/lite/support/image/d;->b:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->f([I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/d;->c:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    iget-object v1, p0, Lorg/tensorflow/lite/support/image/d;->b:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->i([I)I

    move-result v0

    return v0
.end method
