.class public Lorg/tensorflow/lite/support/model/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/model/Model$Builder;,
        Lorg/tensorflow/lite/support/model/Model$Options;,
        Lorg/tensorflow/lite/support/model/Model$Device;
    }
.end annotation


# instance fields
.field private final a:Lorg/tensorflow/lite/Interpreter;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/nio/MappedByteBuffer;

.field private final d:Lorg/tensorflow/lite/support/model/a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/nio/MappedByteBuffer;Lorg/tensorflow/lite/Interpreter;Lorg/tensorflow/lite/support/model/a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/MappedByteBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/tensorflow/lite/Interpreter;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/tensorflow/lite/support/model/a;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/tensorflow/lite/support/model/Model;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/tensorflow/lite/support/model/Model;->c:Ljava/nio/MappedByteBuffer;

    .line 4
    iput-object p3, p0, Lorg/tensorflow/lite/support/model/Model;->a:Lorg/tensorflow/lite/Interpreter;

    .line 5
    iput-object p4, p0, Lorg/tensorflow/lite/support/model/Model;->d:Lorg/tensorflow/lite/support/model/a;

    return-void
.end method

.method public static createModel(Landroid/content/Context;Ljava/lang/String;)Lorg/tensorflow/lite/support/model/Model;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/tensorflow/lite/support/model/Model$Options$Builder;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/model/Model$Options$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/model/Model$Options$Builder;->build()Lorg/tensorflow/lite/support/model/Model$Options;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/tensorflow/lite/support/model/Model;->createModel(Landroid/content/Context;Ljava/lang/String;Lorg/tensorflow/lite/support/model/Model$Options;)Lorg/tensorflow/lite/support/model/Model;

    move-result-object p0

    return-object p0
.end method

.method public static createModel(Landroid/content/Context;Ljava/lang/String;Lorg/tensorflow/lite/support/model/Model$Options;)Lorg/tensorflow/lite/support/model/Model;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/tensorflow/lite/support/model/Model$Options;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Model path in the asset folder cannot be empty."

    .line 2
    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    invoke-static {p0, p1}, Lorg/tensorflow/lite/support/common/FileUtil;->loadMappedFile(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 4
    invoke-static {p0, p1, p2}, Lorg/tensorflow/lite/support/model/Model;->createModel(Ljava/nio/MappedByteBuffer;Ljava/lang/String;Lorg/tensorflow/lite/support/model/Model$Options;)Lorg/tensorflow/lite/support/model/Model;

    move-result-object p0

    return-object p0
.end method

.method public static createModel(Ljava/nio/MappedByteBuffer;Ljava/lang/String;Lorg/tensorflow/lite/support/model/Model$Options;)Lorg/tensorflow/lite/support/model/Model;
    .locals 4
    .param p0    # Ljava/nio/MappedByteBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/tensorflow/lite/support/model/Model$Options;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 5
    new-instance v0, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {v0}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    .line 6
    sget-object v1, Lorg/tensorflow/lite/support/model/Model$a;->a:[I

    invoke-static {p2}, Lorg/tensorflow/lite/support/model/Model$Options;->a(Lorg/tensorflow/lite/support/model/Model$Options;)Lorg/tensorflow/lite/support/model/Model$Device;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Lorg/tensorflow/lite/support/model/a;->a()Lorg/tensorflow/lite/support/model/a;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Cannot inference with GPU. Did you add \"tensorflow-lite-gpu\" as dependency?"

    .line 8
    invoke-static {v2, v3}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/Interpreter$Options;->addDelegate(Lorg/tensorflow/lite/Delegate;)Lorg/tensorflow/lite/Interpreter$Options;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v0, v2}, Lorg/tensorflow/lite/Interpreter$Options;->setUseNNAPI(Z)Lorg/tensorflow/lite/Interpreter$Options;

    :goto_1
    const/4 v1, 0x0

    .line 11
    :goto_2
    invoke-static {p2}, Lorg/tensorflow/lite/support/model/Model$Options;->b(Lorg/tensorflow/lite/support/model/Model$Options;)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/tensorflow/lite/Interpreter$Options;->setNumThreads(I)Lorg/tensorflow/lite/Interpreter$Options;

    .line 12
    new-instance p2, Lorg/tensorflow/lite/Interpreter;

    invoke-direct {p2, p0, v0}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    .line 13
    new-instance v0, Lorg/tensorflow/lite/support/model/Model;

    invoke-direct {v0, p1, p0, p2, v1}, Lorg/tensorflow/lite/support/model/Model;-><init>(Ljava/lang/String;Ljava/nio/MappedByteBuffer;Lorg/tensorflow/lite/Interpreter;Lorg/tensorflow/lite/support/model/a;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->a:Lorg/tensorflow/lite/Interpreter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/tensorflow/lite/Interpreter;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->d:Lorg/tensorflow/lite/support/model/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/tensorflow/lite/support/model/a;->close()V

    :cond_1
    return-void
.end method

.method public getData()Ljava/nio/MappedByteBuffer;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->c:Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method public getInputTensor(I)Lorg/tensorflow/lite/Tensor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->a:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->getInputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object p1

    return-object p1
.end method

.method public getOutputTensor(I)Lorg/tensorflow/lite/Tensor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->a:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->getOutputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object p1

    return-object p1
.end method

.method public getOutputTensorShape(I)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->a:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->getOutputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object p1

    invoke-virtual {p1}, Lorg/tensorflow/lite/Tensor;->shape()[I

    move-result-object p1

    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->b:Ljava/lang/String;

    return-object v0
.end method

.method public run([Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/Model;->a:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1, p2}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
