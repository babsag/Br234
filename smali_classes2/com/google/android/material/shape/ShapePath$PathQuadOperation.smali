.class public Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathQuadOperation"
.end annotation


# instance fields
.field public controlX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public controlY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->i(F)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->j(F)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->k(F)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->l(F)V

    return-void
.end method

.method private e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    return v0
.end method

.method private f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    return v0
.end method

.method private g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    return v0
.end method

.method private h()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    return v0
.end method

.method private i(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    return-void
.end method

.method private j(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    return-void
.end method

.method private k(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    return-void
.end method

.method private l(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 4
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->e()F

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->f()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->g()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->h()F

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
