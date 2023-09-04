.class Landroidx/camera/core/ImageCapture$h;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field final a:I

.field final b:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
        to = 0x64L
    .end annotation
.end field

.field private final c:Landroid/util/Rational;

.field private final d:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(IILandroid/util/Rational;Landroid/graphics/Rect;Landroid/graphics/Matrix;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x64L
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput p1, p0, Landroidx/camera/core/ImageCapture$h;->a:I

    .line 4
    iput p2, p0, Landroidx/camera/core/ImageCapture$h;->b:I

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p3}, Landroid/util/Rational;->isZero()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const-string v0, "Target ratio cannot be zero"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 6
    invoke-virtual {p3}, Landroid/util/Rational;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "Target ratio must be positive"

    invoke-static {v1, p1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 7
    :cond_1
    iput-object p3, p0, Landroidx/camera/core/ImageCapture$h;->c:Landroid/util/Rational;

    .line 8
    iput-object p4, p0, Landroidx/camera/core/ImageCapture$h;->g:Landroid/graphics/Rect;

    .line 9
    iput-object p5, p0, Landroidx/camera/core/ImageCapture$h;->h:Landroid/graphics/Matrix;

    .line 10
    iput-object p6, p0, Landroidx/camera/core/ImageCapture$h;->d:Ljava/util/concurrent/Executor;

    .line 11
    iput-object p7, p0, Landroidx/camera/core/ImageCapture$h;->e:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    return-void
.end method

.method private synthetic b(Landroidx/camera/core/ImageProxy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$h;->e:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onCaptureSuccess(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method private synthetic d(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$h;->e:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    invoke-direct {v1, p1, p2, p3}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method


# virtual methods
.method a(Landroidx/camera/core/ImageProxy;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void

    .line 3
    :cond_0
    sget-object v0, Landroidx/camera/core/ImageCapture;->m:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-virtual {v0, p1}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->shouldUseExifOrientation(Landroidx/camera/core/ImageProxy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    .line 5
    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    .line 8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 11
    new-instance v0, Landroid/util/Size;

    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 12
    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getRotation()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to parse JPEG exif"

    .line 13
    invoke-virtual {p0, v2, v1, v0}, Landroidx/camera/core/ImageCapture$h;->f(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void

    .line 15
    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 16
    iget v1, p0, Landroidx/camera/core/ImageCapture$h;->a:I

    .line 17
    :goto_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v2

    .line 18
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v3

    iget-object v5, p0, Landroidx/camera/core/ImageCapture$h;->h:Landroid/graphics/Matrix;

    .line 19
    invoke-static {v2, v3, v4, v1, v5}, Landroidx/camera/core/ImmutableImageInfo;->create(Landroidx/camera/core/impl/TagBundle;JILandroid/graphics/Matrix;)Landroidx/camera/core/ImageInfo;

    move-result-object v2

    .line 20
    new-instance v3, Landroidx/camera/core/SettableImageProxy;

    invoke-direct {v3, p1, v0, v2}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroid/util/Size;Landroidx/camera/core/ImageInfo;)V

    .line 21
    iget-object v2, p0, Landroidx/camera/core/ImageCapture$h;->g:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/camera/core/ImageCapture$h;->c:Landroid/util/Rational;

    iget v5, p0, Landroidx/camera/core/ImageCapture$h;->a:I

    invoke-static {v2, v4, v5, v0, v1}, Landroidx/camera/core/ImageCapture;->f(Landroid/graphics/Rect;Landroid/util/Rational;ILandroid/util/Size;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 22
    invoke-interface {v3, v0}, Landroidx/camera/core/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

    .line 23
    :try_start_1
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$h;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/c0;

    invoke-direct {v1, p0, v3}, Landroidx/camera/core/c0;-><init>(Landroidx/camera/core/ImageCapture$h;Landroidx/camera/core/ImageProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "ImageCapture"

    const-string v1, "Unable to post to the supplied executor."

    .line 24
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    :goto_1
    return-void
.end method

.method public synthetic c(Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/ImageCapture$h;->b(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method public synthetic e(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture$h;->d(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method f(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$h;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/b0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/b0;-><init>(Landroidx/camera/core/ImageCapture$h;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ImageCapture"

    const-string p2, "Unable to post to the supplied executor."

    .line 3
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
