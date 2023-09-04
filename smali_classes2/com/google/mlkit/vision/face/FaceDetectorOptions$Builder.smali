.class public Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/face/FaceDetectorOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:I
    .annotation build Lcom/google/mlkit/vision/face/FaceDetectorOptions$LandmarkMode;
    .end annotation
.end field

.field private b:I
    .annotation build Lcom/google/mlkit/vision/face/FaceDetectorOptions$ContourMode;
    .end annotation
.end field

.field private c:I
    .annotation build Lcom/google/mlkit/vision/face/FaceDetectorOptions$ClassificationMode;
    .end annotation
.end field

.field private d:I
    .annotation build Lcom/google/mlkit/vision/face/FaceDetectorOptions$PerformanceMode;
    .end annotation
.end field

.field private e:Z

.field private f:F

.field private g:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->a:I

    iput v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->b:I

    iput v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->c:I

    iput v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->e:Z

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->f:F

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mlkit/vision/face/FaceDetectorOptions;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v9, Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    iget v1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->a:I

    iget v2, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->b:I

    iget v3, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->c:I

    iget v4, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->d:I

    iget-boolean v5, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->e:Z

    iget v6, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->f:F

    iget-object v7, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->g:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/mlkit/vision/face/FaceDetectorOptions;-><init>(IIIIZFLjava/util/concurrent/Executor;Lcom/google/mlkit/vision/face/zza;)V

    return-object v9
.end method

.method public enableTracking()Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->e:Z

    return-object p0
.end method

.method public setClassificationMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/mlkit/vision/face/FaceDetectorOptions$ClassificationMode;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->c:I

    return-object p0
.end method

.method public setContourMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/mlkit/vision/face/FaceDetectorOptions$ContourMode;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->b:I

    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setLandmarkMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/mlkit/vision/face/FaceDetectorOptions$LandmarkMode;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->a:I

    return-object p0
.end method

.method public setMinFaceSize(F)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->f:F

    return-object p0
.end method

.method public setPerformanceMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/mlkit/vision/face/FaceDetectorOptions$PerformanceMode;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->d:I

    return-object p0
.end method
