.class public Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;
.super Ljava/lang/Object;
.source "ImageClassifier.java"


# instance fields
.field private a:Ljava/nio/MappedByteBuffer;

.field private b:I

.field private c:I

.field private d:Lorg/tensorflow/lite/Interpreter;

.field private e:Lorg/tensorflow/lite/support/image/TensorImage;

.field private final f:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

.field private final g:Lorg/tensorflow/lite/support/common/TensorProcessor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "model_lite.tflite"

    .line 2
    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/FileUtil;->loadMappedFile(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->a:Ljava/nio/MappedByteBuffer;

    .line 3
    new-instance v0, Lorg/tensorflow/lite/Interpreter;

    new-instance v1, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {v1}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/tensorflow/lite/Interpreter$Options;->setNumThreads(I)Lorg/tensorflow/lite/Interpreter$Options;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->d:Lorg/tensorflow/lite/Interpreter;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->getInputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tensorflow/lite/Tensor;->shape()[I

    move-result-object v0

    .line 5
    aget v1, v0, v2

    iput v1, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->c:I

    const/4 v1, 0x2

    .line 6
    aget v0, v0, v1

    iput v0, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->b:I

    .line 7
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->d:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->getInputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tensorflow/lite/Tensor;->dataType()Lorg/tensorflow/lite/DataType;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->d:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v1, p1}, Lorg/tensorflow/lite/Interpreter;->getOutputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/tensorflow/lite/Tensor;->shape()[I

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->d:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v2, p1}, Lorg/tensorflow/lite/Interpreter;->getOutputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object p1

    invoke-virtual {p1}, Lorg/tensorflow/lite/Tensor;->dataType()Lorg/tensorflow/lite/DataType;

    move-result-object p1

    .line 10
    new-instance v2, Lorg/tensorflow/lite/support/image/TensorImage;

    invoke-direct {v2, v0}, Lorg/tensorflow/lite/support/image/TensorImage;-><init>(Lorg/tensorflow/lite/DataType;)V

    iput-object v2, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->e:Lorg/tensorflow/lite/support/image/TensorImage;

    .line 11
    invoke-static {v1, p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createFixedSize([ILorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->f:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    .line 12
    new-instance p1, Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;

    invoke-direct {p1}, Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;-><init>()V

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->b()Lorg/tensorflow/lite/support/common/TensorOperator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;->add(Lorg/tensorflow/lite/support/common/TensorOperator;)Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;->build()Lorg/tensorflow/lite/support/common/TensorProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->g:Lorg/tensorflow/lite/support/common/TensorProcessor;

    return-void
.end method

.method private static synthetic a(Lcom/combateafraude/documentdetector/controller/detection/Recognition;Lcom/combateafraude/documentdetector/controller/detection/Recognition;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->getConfidence()F

    move-result p1

    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->getConfidence()F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method private b()Lorg/tensorflow/lite/support/common/TensorOperator;
    .locals 3

    .line 1
    new-instance v0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;-><init>(FF)V

    return-object v0
.end method

.method public static synthetic c(Lcom/combateafraude/documentdetector/controller/detection/Recognition;Lcom/combateafraude/documentdetector/controller/detection/Recognition;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->a(Lcom/combateafraude/documentdetector/controller/detection/Recognition;Lcom/combateafraude/documentdetector/controller/detection/Recognition;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->d:Lorg/tensorflow/lite/Interpreter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/tensorflow/lite/Interpreter;->close()V

    .line 3
    iput-object v1, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->d:Lorg/tensorflow/lite/Interpreter;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->a:Ljava/nio/MappedByteBuffer;

    return-void
.end method

.method public recognizeImage(Landroid/graphics/Bitmap;)Lcom/combateafraude/documentdetector/controller/detection/Recognition;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->e:Lorg/tensorflow/lite/support/image/TensorImage;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Landroid/graphics/Bitmap;)V

    .line 2
    new-instance p1, Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;

    invoke-direct {p1}, Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;-><init>()V

    new-instance v0, Lorg/tensorflow/lite/support/image/ops/ResizeOp;

    iget v1, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->c:I

    iget v2, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->b:I

    sget-object v3, Lorg/tensorflow/lite/support/image/ops/ResizeOp$ResizeMethod;->BILINEAR:Lorg/tensorflow/lite/support/image/ops/ResizeOp$ResizeMethod;

    invoke-direct {v0, v1, v2, v3}, Lorg/tensorflow/lite/support/image/ops/ResizeOp;-><init>(IILorg/tensorflow/lite/support/image/ops/ResizeOp$ResizeMethod;)V

    .line 3
    invoke-virtual {p1, v0}, Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;->add(Lorg/tensorflow/lite/support/image/ImageOperator;)Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;

    move-result-object p1

    .line 4
    new-instance v0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;

    const/high16 v1, 0x42ff0000    # 127.5f

    invoke-direct {v0, v1, v1}, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;-><init>(FF)V

    .line 5
    invoke-virtual {p1, v0}, Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;->add(Lorg/tensorflow/lite/support/common/TensorOperator;)Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;->build()Lorg/tensorflow/lite/support/image/ImageProcessor;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->e:Lorg/tensorflow/lite/support/image/TensorImage;

    invoke-virtual {p1, v0}, Lorg/tensorflow/lite/support/common/SequentialProcessor;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/tensorflow/lite/support/image/TensorImage;

    .line 8
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->e:Lorg/tensorflow/lite/support/image/TensorImage;

    .line 9
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->d:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {p1}, Lorg/tensorflow/lite/support/image/TensorImage;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->f:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/tensorflow/lite/Interpreter;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    new-instance p1, Lorg/tensorflow/lite/support/label/TensorLabel;

    invoke-static {}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getAll()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->g:Lorg/tensorflow/lite/support/common/TensorProcessor;

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->f:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v1, v2}, Lorg/tensorflow/lite/support/common/SequentialProcessor;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-direct {p1, v0, v1}, Lorg/tensorflow/lite/support/label/TensorLabel;-><init>(Ljava/util/List;Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V

    invoke-virtual {p1}, Lorg/tensorflow/lite/support/label/TensorLabel;->getMapWithFloatValue()Ljava/util/Map;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/combateafraude/documentdetector/controller/detection/a;->a:Lcom/combateafraude/documentdetector/controller/detection/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 13
    new-instance v2, Lcom/combateafraude/documentdetector/controller/detection/Recognition;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-direct {v2, v3, v1}, Lcom/combateafraude/documentdetector/controller/detection/Recognition;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/documentdetector/controller/detection/Recognition;

    return-object p1
.end method
