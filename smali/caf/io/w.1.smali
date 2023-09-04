.class public Lcaf/io/w;
.super Ljava/lang/Object;
.source "FaceValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcaf/io/w$b;,
        Lcaf/io/w$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcaf/io/w;->a:J

    .line 3
    iput-wide v0, p0, Lcaf/io/w;->c:J

    return-void
.end method

.method public static a(II)Landroid/graphics/Rect;
    .locals 7

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    int-to-double v1, p0

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double v5, v1, v3

    double-to-int p0, v5

    int-to-double v5, p1

    mul-double v3, v3, v5

    double-to-int p1, v3

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double v1, v1, v3

    double-to-int v1, v1

    mul-double v5, v5, v3

    double-to-int v2, v5

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static a(F)Z
    .locals 1

    .line 13
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x41700000    # 15.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Lcom/google/mlkit/vision/face/Face;I)Z
    .locals 3

    .line 14
    invoke-virtual {p0}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    const-wide v0, 0x3fd999999999999aL    # 0.4

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Lcom/google/mlkit/vision/common/InputImage;Lcaf/io/w$a;Ljava/util/List;)V
    .locals 4

    .line 2
    iput-object p3, p0, Lcaf/io/w;->b:Ljava/util/List;

    .line 3
    iget-wide v0, p0, Lcaf/io/w;->c:J

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcaf/io/w;->c:J

    .line 5
    :cond_0
    invoke-interface {p2, p1}, Lcaf/io/w$a;->a(Lcom/google/mlkit/vision/common/InputImage;)V

    return-void
.end method

.method public static synthetic f(Lcaf/io/w;Lcom/google/mlkit/vision/common/InputImage;Lcaf/io/w$a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcaf/io/w;->b(Lcom/google/mlkit/vision/common/InputImage;Lcaf/io/w$a;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcaf/io/w;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcaf/io/w;->a:J

    return-void
.end method

.method public a(Lcaf/io/w$b;Lcom/google/mlkit/vision/common/InputImage;Lcaf/io/w$a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeOptInUsageError"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {p3, p1}, Lcaf/io/w$a;->a(Ljava/lang/Exception;)V

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;-><init>()V

    iget p1, p1, Lcaf/io/w$b;->a:I

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setPerformanceMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object p1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setClassificationMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->enableTracking()Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->build()Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/google/mlkit/vision/face/FaceDetection;->getClient(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/mlkit/vision/face/FaceDetector;

    move-result-object p1

    .line 8
    invoke-interface {p1, p2}, Lcom/google/mlkit/vision/face/FaceDetector;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcaf/io/i1;

    invoke-direct {v0, p0, p2, p3}, Lcaf/io/i1;-><init>(Lcaf/io/w;Lcom/google/mlkit/vision/common/InputImage;Lcaf/io/w$a;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 10
    new-instance p2, Lcaf/io/h0;

    invoke-direct {p2, p3}, Lcaf/io/h0;-><init>(Lcaf/io/w$a;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-interface {p3, p1}, Lcaf/io/w$a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcaf/io/w;->a:J

    return-wide v0
.end method

.method public d()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lcaf/io/w;->c:J

    return-void
.end method

.method public e()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lcaf/io/w;->a:J

    return-void
.end method
