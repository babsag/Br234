.class Lorg/tensorflow/lite/support/model/a;
.super Ljava/lang/Object;
.source "GpuDelegateProxy.java"

# interfaces
.implements Lorg/tensorflow/lite/Delegate;
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lorg/tensorflow/lite/Delegate;

.field private final b:Ljava/io/Closeable;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    iput-object v0, p0, Lorg/tensorflow/lite/support/model/a;->b:Ljava/io/Closeable;

    .line 3
    check-cast p1, Lorg/tensorflow/lite/Delegate;

    iput-object p1, p0, Lorg/tensorflow/lite/support/model/a;->a:Lorg/tensorflow/lite/Delegate;

    return-void
.end method

.method public static a()Lorg/tensorflow/lite/support/model/a;
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "org.tensorflow.lite.gpu.GpuDelegate"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/tensorflow/lite/support/model/a;

    invoke-direct {v1, v0}, Lorg/tensorflow/lite/support/model/a;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "GpuDelegateProxy"

    const-string v2, "Failed to create the GpuDelegate dynamically."

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/a;->b:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GpuDelegateProxy"

    const-string v2, "Failed to close the GpuDelegate."

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getNativeHandle()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tensorflow/lite/support/model/a;->a:Lorg/tensorflow/lite/Delegate;

    invoke-interface {v0}, Lorg/tensorflow/lite/Delegate;->getNativeHandle()J

    move-result-wide v0

    return-wide v0
.end method
