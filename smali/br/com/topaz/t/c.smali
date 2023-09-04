.class public Lbr/com/topaz/t/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/face/Face;",
        ">;>;",
        "Lcom/google/android/gms/tasks/OnFailureListener;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/mlkit/vision/face/FaceDetector;

.field private b:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

.field private final c:Lbr/com/topaz/u/c;

.field private final d:Lbr/com/topaz/heartbeat/face/FaceStructure;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

.field private g:F

.field private h:F

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;Lbr/com/topaz/u/c;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbr/com/topaz/t/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lbr/com/topaz/t/c;->d:Lbr/com/topaz/heartbeat/face/FaceStructure;

    iput-object p4, p0, Lbr/com/topaz/t/c;->f:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    new-instance p4, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    invoke-direct {p4}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;-><init>()V

    invoke-virtual {p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->f()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p4, v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setMinFaceSize(F)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object p4

    invoke-virtual {p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->g()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setPerformanceMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object p4

    invoke-virtual {p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->c()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setClassificationMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object p4

    invoke-virtual {p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->e()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setLandmarkMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object p4

    invoke-virtual {p3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->z()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p4}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->enableTracking()Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    :cond_0
    invoke-virtual {p4}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->build()Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    move-result-object p3

    iput-object p1, p0, Lbr/com/topaz/t/c;->b:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    iput-object p2, p0, Lbr/com/topaz/t/c;->c:Lbr/com/topaz/u/c;

    invoke-static {p3}, Lcom/google/mlkit/vision/face/FaceDetection;->getClient(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/mlkit/vision/face/FaceDetector;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/t/c;->a:Lcom/google/mlkit/vision/face/FaceDetector;

    return-void
.end method

.method private a(Lcom/google/mlkit/vision/common/InputImage;)Z
    .locals 6

    iget-object v0, p0, Lbr/com/topaz/t/c;->d:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->i()I

    move-result v0

    iget-object v1, p0, Lbr/com/topaz/t/c;->d:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/FaceStructure;->h()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getRotationDegrees()I

    move-result p1

    invoke-static {p1, v5, v5, v2}, Lbr/com/topaz/u0/m;->a(IIILandroid/graphics/Rect;)V

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 p1, 0x1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-lt v3, v0, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5

    :cond_2
    :goto_0
    return p1
.end method

.method private b(Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 2

    invoke-direct {p0, p1}, Lbr/com/topaz/t/c;->a(Lcom/google/mlkit/vision/common/InputImage;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lbr/com/topaz/t/c;->b:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    const/16 v0, 0x6c

    invoke-interface {p1, v0}, Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;->onFailure(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/t/c;->c:Lbr/com/topaz/u/c;

    invoke-virtual {v0}, Lbr/com/topaz/u/c;->b()Lbr/com/topaz/u/b;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbr/com/topaz/t/c;->c:Lbr/com/topaz/u/c;

    invoke-virtual {v0}, Lbr/com/topaz/u/c;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lbr/com/topaz/t/c;->c:Lbr/com/topaz/u/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbr/com/topaz/u/c;->b(Lbr/com/topaz/u/b;)V

    iget-object p1, p0, Lbr/com/topaz/t/c;->b:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    if-eqz p1, :cond_1

    const/16 v1, 0x65

    invoke-interface {p1, v1}, Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;->onFinish(I)V

    iput-object v0, p0, Lbr/com/topaz/t/c;->b:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lbr/com/topaz/t/c;->c:Lbr/com/topaz/u/c;

    invoke-virtual {v0}, Lbr/com/topaz/u/c;->e()Lbr/com/topaz/u/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbr/com/topaz/t/c;->c:Lbr/com/topaz/u/c;

    invoke-virtual {v0}, Lbr/com/topaz/u/c;->b()Lbr/com/topaz/u/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/t/c;->f:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lbr/com/topaz/t/c;->b:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    invoke-interface {v1, v0}, Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;->onNewInstruction(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, p1}, Lbr/com/topaz/t/c;->b(Lcom/google/mlkit/vision/common/InputImage;)V

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lbr/com/topaz/u/b;->a(Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object v0, p0, Lbr/com/topaz/t/c;->a:Lcom/google/mlkit/vision/face/FaceDetector;

    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/face/FaceDetector;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public a(FFFF)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/t/c;->g:F

    iput p2, p0, Lbr/com/topaz/t/c;->h:F

    iput p3, p0, Lbr/com/topaz/t/c;->i:F

    iput p4, p0, Lbr/com/topaz/t/c;->j:F

    return-void
.end method

.method public a(Landroid/media/Image;I)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/t/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/google/mlkit/vision/common/InputImage;->fromMediaImage(Landroid/media/Image;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p1

    invoke-direct {p0, p1}, Lbr/com/topaz/t/c;->b(Lcom/google/mlkit/vision/common/InputImage;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/t/c;->c:Lbr/com/topaz/u/c;

    invoke-virtual {v1}, Lbr/com/topaz/u/c;->b()Lbr/com/topaz/u/b;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/t/c;->d:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v1, v2}, Lbr/com/topaz/u/b;->a(Lbr/com/topaz/heartbeat/face/FaceStructure;)V

    iget-object v2, p0, Lbr/com/topaz/t/c;->d:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v2}, Lbr/com/topaz/heartbeat/face/FaceStructure;->C()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbr/com/topaz/u/b;->a(Z)V

    :cond_0
    iget v2, p0, Lbr/com/topaz/t/c;->g:F

    iget v3, p0, Lbr/com/topaz/t/c;->h:F

    iget v4, p0, Lbr/com/topaz/t/c;->i:F

    iget v5, p0, Lbr/com/topaz/t/c;->j:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lbr/com/topaz/u/b;->a(FFFF)V

    invoke-virtual {v1, p1}, Lbr/com/topaz/u/b;->c(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lbr/com/topaz/u/d;

    iget-object v3, p0, Lbr/com/topaz/t/c;->b:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    const/16 v4, 0x64

    invoke-interface {v3, v4}, Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;->onFinishInstruction(I)V

    iget-object v3, p0, Lbr/com/topaz/t/c;->c:Lbr/com/topaz/u/c;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lbr/com/topaz/u/c;->b(Lbr/com/topaz/u/b;)V

    iget-object v3, p0, Lbr/com/topaz/t/c;->f:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->d()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lbr/com/topaz/u/b;->c()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbr/com/topaz/t/c;->b:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    invoke-virtual {v1}, Lbr/com/topaz/u/b;->c()I

    move-result v3

    invoke-interface {v2, v3}, Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;->onFinishInstruction(I)V

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    iget-object v3, p0, Lbr/com/topaz/t/c;->d:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v3}, Lbr/com/topaz/heartbeat/face/FaceStructure;->D()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lbr/com/topaz/t/c;->c:Lbr/com/topaz/u/c;

    invoke-virtual {v1}, Lbr/com/topaz/u/b;->a()I

    move-result v1

    invoke-virtual {v3, p1, v1, v2}, Lbr/com/topaz/u/c;->a(Ljava/util/List;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object p1, p0, Lbr/com/topaz/t/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lbr/com/topaz/t/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p1
.end method

.method public a([BIII)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/t/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/t/c;->d:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->d()I

    move-result v0

    invoke-static {p1, p3, p4, p2, v0}, Lcom/google/mlkit/vision/common/InputImage;->fromByteArray([BIIII)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p1

    invoke-direct {p0, p1}, Lbr/com/topaz/t/c;->b(Lcom/google/mlkit/vision/common/InputImage;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lbr/com/topaz/t/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lbr/com/topaz/t/c;->a(Ljava/util/List;)V

    return-void
.end method
