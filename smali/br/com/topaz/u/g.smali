.class public Lbr/com/topaz/u/g;
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

    const-string v0, "TURN_RIGHT"

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public e(Lcom/google/mlkit/vision/face/Face;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getHeadEulerAngleY()F

    move-result p1

    const v0, -0x3e7d999a    # -16.3f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TURN_RIGHT"

    return-object v0
.end method
