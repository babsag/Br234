.class public Lbr/com/topaz/u/f;
.super Lbr/com/topaz/u/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbr/com/topaz/u/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/u/b;->i:Z

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    const-string v0, "TURN_LEFT"

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public e(Lcom/google/mlkit/vision/face/Face;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getHeadEulerAngleY()F

    move-result p1

    const v0, 0x41826666    # 16.3f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TURN_LEFT"

    return-object v0
.end method
