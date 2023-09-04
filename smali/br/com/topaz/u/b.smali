.class public abstract Lbr/com/topaz/u/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/google/mlkit/vision/common/InputImage;

.field private c:Lbr/com/topaz/heartbeat/face/FaceStructure;

.field private d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field protected i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbr/com/topaz/u/b;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/topaz/u/b;->i:Z

    return-void
.end method

.method private a(Lcom/google/mlkit/vision/face/Face;)F
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lbr/com/topaz/u/b;->e:F

    iget v2, p0, Lbr/com/topaz/u/b;->f:F

    iget v3, p0, Lbr/com/topaz/u/b;->g:F

    iget v4, p0, Lbr/com/topaz/u/b;->h:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object p1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    mul-float v2, v2, p1

    iget p1, v1, Landroid/graphics/RectF;->right:F

    iget v0, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    mul-float v0, v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v0, v0, p1

    div-float/2addr v0, v2

    return v0
.end method

.method private a(Ljava/util/List;)Lcom/google/mlkit/vision/face/Face;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;)",
            "Lcom/google/mlkit/vision/face/Face;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/face/Face;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/face/Face;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b(Lcom/google/mlkit/vision/face/Face;)Z
    .locals 1

    invoke-direct {p0, p1}, Lbr/com/topaz/u/b;->a(Lcom/google/mlkit/vision/face/Face;)F

    move-result p1

    iget-object v0, p0, Lbr/com/topaz/u/b;->c:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->n()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/vision/face/Face;

    invoke-direct {p0, v2}, Lbr/com/topaz/u/b;->d(Lcom/google/mlkit/vision/face/Face;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-le v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private c(Lcom/google/mlkit/vision/face/Face;)Z
    .locals 1

    invoke-direct {p0, p1}, Lbr/com/topaz/u/b;->a(Lcom/google/mlkit/vision/face/Face;)F

    move-result p1

    iget-object v0, p0, Lbr/com/topaz/u/b;->c:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->p()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d()Z
    .locals 2

    iget v0, p0, Lbr/com/topaz/u/b;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lbr/com/topaz/u/b;->f:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lbr/com/topaz/u/b;->g:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lbr/com/topaz/u/b;->h:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d(Lcom/google/mlkit/vision/face/Face;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    iget v1, p0, Lbr/com/topaz/u/b;->e:F

    iget v2, p0, Lbr/com/topaz/u/b;->f:F

    iget v3, p0, Lbr/com/topaz/u/b;->g:F

    iget v4, p0, Lbr/com/topaz/u/b;->h:F

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method

.method private f(Lcom/google/mlkit/vision/face/Face;)Z
    .locals 3

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/mlkit/vision/face/Face;->getLandmark(I)Lcom/google/mlkit/vision/face/FaceLandmark;

    move-result-object p1

    if-nez v0, :cond_0

    const/4 p1, -0x4

    :goto_0
    invoke-virtual {p0, p1}, Lbr/com/topaz/u/b;->a(I)V

    return v2

    :cond_0
    if-nez v1, :cond_1

    const/4 p1, -0x5

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, -0x6

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(FFFF)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/u/b;->e:F

    iput p2, p0, Lbr/com/topaz/u/b;->f:F

    iput p3, p0, Lbr/com/topaz/u/b;->g:F

    iput p4, p0, Lbr/com/topaz/u/b;->h:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/u/b;->a:I

    return-void
.end method

.method public a(Lbr/com/topaz/heartbeat/face/FaceStructure;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/u/b;->c:Lbr/com/topaz/heartbeat/face/FaceStructure;

    return-void
.end method

.method public a(Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/u/b;->b:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lbr/com/topaz/u/b;->d:Z

    return-void
.end method

.method public b()Lcom/google/mlkit/vision/common/InputImage;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/u/b;->b:Lcom/google/mlkit/vision/common/InputImage;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/u/b;->a:I

    return v0
.end method

.method public c(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, p1}, Lbr/com/topaz/u/b;->a(I)V

    return v1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/face/Face;

    iget-boolean v2, p0, Lbr/com/topaz/u/b;->d:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lbr/com/topaz/u/b;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    invoke-direct {p0, p1}, Lbr/com/topaz/u/b;->a(Ljava/util/List;)Lcom/google/mlkit/vision/face/Face;

    move-result-object v0

    invoke-direct {p0, p1}, Lbr/com/topaz/u/b;->b(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x69

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_2

    const/16 p1, 0x6b

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lbr/com/topaz/u/b;->c:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/face/FaceStructure;->G()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lbr/com/topaz/u/b;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v0}, Lbr/com/topaz/u/b;->b(Lcom/google/mlkit/vision/face/Face;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x6e

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lbr/com/topaz/u/b;->i:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lbr/com/topaz/u/b;->c:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/face/FaceStructure;->F()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lbr/com/topaz/u/b;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lbr/com/topaz/u/b;->d(Lcom/google/mlkit/vision/face/Face;)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x6f

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lbr/com/topaz/u/b;->c:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/face/FaceStructure;->E()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v0}, Lbr/com/topaz/u/b;->f(Lcom/google/mlkit/vision/face/Face;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, -0x2

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lbr/com/topaz/u/b;->c:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {p1}, Lbr/com/topaz/heartbeat/face/FaceStructure;->H()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lbr/com/topaz/u/b;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v0}, Lbr/com/topaz/u/b;->c(Lcom/google/mlkit/vision/face/Face;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x6d

    goto/16 :goto_0

    :cond_6
    const/16 p1, 0x6a

    invoke-virtual {p0, p1}, Lbr/com/topaz/u/b;->a(I)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/u/b;->e(Lcom/google/mlkit/vision/face/Face;)Z

    move-result p1

    return p1
.end method

.method public abstract e(Lcom/google/mlkit/vision/face/Face;)Z
.end method
