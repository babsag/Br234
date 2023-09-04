.class final Landroidx/camera/core/processing/u;
.super Landroidx/camera/core/processing/OpenGlRenderer$a;
.source "AutoValue_OpenGlRenderer_OutputSurface.java"


# instance fields
.field private final a:Landroid/opengl/EGLSurface;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Landroid/opengl/EGLSurface;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/processing/OpenGlRenderer$a;-><init>()V

    const-string v0, "Null eglSurface"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroidx/camera/core/processing/u;->a:Landroid/opengl/EGLSurface;

    .line 4
    iput p2, p0, Landroidx/camera/core/processing/u;->b:I

    .line 5
    iput p3, p0, Landroidx/camera/core/processing/u;->c:I

    return-void
.end method


# virtual methods
.method a()Landroid/opengl/EGLSurface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/u;->a:Landroid/opengl/EGLSurface;

    return-object v0
.end method

.method b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/u;->c:I

    return v0
.end method

.method c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/u;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/processing/OpenGlRenderer$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Landroidx/camera/core/processing/OpenGlRenderer$a;

    .line 3
    iget-object v1, p0, Landroidx/camera/core/processing/u;->a:Landroid/opengl/EGLSurface;

    invoke-virtual {p1}, Landroidx/camera/core/processing/OpenGlRenderer$a;->a()Landroid/opengl/EGLSurface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/u;->b:I

    .line 4
    invoke-virtual {p1}, Landroidx/camera/core/processing/OpenGlRenderer$a;->c()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/u;->c:I

    .line 5
    invoke-virtual {p1}, Landroidx/camera/core/processing/OpenGlRenderer$a;->b()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/u;->a:Landroid/opengl/EGLSurface;

    invoke-virtual {v0}, Landroid/opengl/EGLSurface;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget v2, p0, Landroidx/camera/core/processing/u;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget v1, p0, Landroidx/camera/core/processing/u;->c:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutputSurface{eglSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/u;->a:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/u;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/u;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
