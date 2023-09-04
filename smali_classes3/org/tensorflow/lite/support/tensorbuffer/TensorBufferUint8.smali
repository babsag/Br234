.class public final Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;
.super Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
.source "TensorBufferUint8.java"


# static fields
.field private static final a:Lorg/tensorflow/lite/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    sput-object v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->a:Lorg/tensorflow/lite/DataType;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;-><init>()V

    return-void
.end method

.method constructor <init>([I)V
    .locals 0
    .param p1    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;-><init>([I)V

    return-void
.end method


# virtual methods
.method public getDataType()Lorg/tensorflow/lite/DataType;
    .locals 1

    .line 1
    sget-object v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->a:Lorg/tensorflow/lite/DataType;

    return-object v0
.end method

.method public getFloatArray()[F
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2
    iget v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->flatSize:I

    new-array v0, v0, [B

    .line 3
    iget-object v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    iget v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->flatSize:I

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->flatSize:I

    if-ge v2, v3, :cond_0

    .line 6
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getFloatValue(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    return p1
.end method

.method public getIntArray()[I
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2
    iget v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->flatSize:I

    new-array v0, v0, [B

    .line 3
    iget-object v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    iget v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->flatSize:I

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->flatSize:I

    if-ge v2, v3, :cond_0

    .line 6
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getIntValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public getTypeSize()I
    .locals 1

    .line 1
    sget-object v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->a:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v0}, Lorg/tensorflow/lite/DataType;->byteSize()I

    move-result v0

    return v0
.end method

.method public loadArray([F[I)V
    .locals 9
    .param p1    # [F
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    const-string v0, "The array to be loaded cannot be null."

    .line 1
    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p1

    .line 3
    invoke-static {p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->computeFlatSize([I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The size of the array to be loaded does not match the specified shape."

    .line 4
    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->resize([I)V

    .line 6
    iget-object p2, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 7
    array-length p2, p1

    new-array p2, p2, [B

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    add-int/lit8 v4, v1, 0x1

    float-to-double v5, v3

    const-wide v7, 0x406fe00000000000L    # 255.0

    .line 9
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public loadArray([I[I)V
    .locals 6
    .param p1    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    const-string v0, "The array to be loaded cannot be null."

    .line 11
    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    array-length v0, p1

    .line 13
    invoke-static {p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->computeFlatSize([I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The size of the array to be loaded does not match the specified shape."

    .line 14
    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 15
    invoke-virtual {p0, p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->resize([I)V

    .line 16
    iget-object p2, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    array-length p2, p1

    new-array p2, p2, [B

    .line 18
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    int-to-float v3, v3

    add-int/lit8 v4, v1, 0x1

    const/high16 v5, 0x437f0000    # 255.0f

    .line 19
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_1

    .line 20
    :cond_1
    iget-object p1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
