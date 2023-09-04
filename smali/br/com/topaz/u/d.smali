.class public Lbr/com/topaz/u/d;
.super Lbr/com/topaz/u/b;
.source "SourceFile"


# instance fields
.field j:Lbr/com/topaz/u/c;

.field private k:Z

.field private final l:J

.field private m:J


# direct methods
.method public constructor <init>(Lbr/com/topaz/u/c;J)V
    .locals 0

    invoke-direct {p0}, Lbr/com/topaz/u/b;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/u/d;->j:Lbr/com/topaz/u/c;

    iput-wide p2, p0, Lbr/com/topaz/u/d;->l:J

    return-void
.end method

.method private e()Z
    .locals 8

    iget-wide v0, p0, Lbr/com/topaz/u/d;->l:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    return v2

    :cond_0
    iget-wide v0, p0, Lbr/com/topaz/u/d;->m:J

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez v6, :cond_1

    iput-wide v0, p0, Lbr/com/topaz/u/d;->m:J

    return v5

    :cond_1
    iget-wide v3, p0, Lbr/com/topaz/u/d;->l:J

    iget-wide v6, p0, Lbr/com/topaz/u/d;->m:J

    add-long/2addr v3, v6

    cmp-long v6, v0, v3

    if-ltz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lcom/google/mlkit/vision/face/Face;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getRightEyeOpenProbability()Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getLeftEyeOpenProbability()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getSmilingProbability()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getRightEyeOpenProbability()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v2, 0x3eb33333    # 0.35f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getLeftEyeOpenProbability()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getSmilingProbability()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v2, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getHeadEulerAngleY()F

    move-result v0

    const v2, 0x41826666    # 16.3f

    cmpl-float v3, v0, v2

    if-gez v3, :cond_7

    const v3, -0x3e7d999a    # -16.3f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getHeadEulerAngleX()F

    move-result p1

    cmpl-float v0, p1, v2

    if-gez v0, :cond_7

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lbr/com/topaz/u/d;->e()Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x1

    :try_start_0
    iget-boolean v0, p0, Lbr/com/topaz/u/d;->k:Z

    if-nez v0, :cond_6

    iput-boolean p1, p0, Lbr/com/topaz/u/d;->k:Z

    iget-object v0, p0, Lbr/com/topaz/u/d;->j:Lbr/com/topaz/u/c;

    invoke-virtual {v0}, Lbr/com/topaz/u/c;->a()Lbr/com/topaz/u/c$a;

    move-result-object v0

    invoke-virtual {p0}, Lbr/com/topaz/u/b;->b()Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v1

    invoke-interface {v0, v1}, Lbr/com/topaz/u/c$a;->a(Lcom/google/mlkit/vision/common/InputImage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return p1

    :cond_7
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NEUTRAL"

    return-object v0
.end method
