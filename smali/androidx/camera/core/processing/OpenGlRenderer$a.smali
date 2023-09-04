.class abstract Landroidx/camera/core/processing/OpenGlRenderer$a;
.super Ljava/lang/Object;
.source "OpenGlRenderer.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/processing/OpenGlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(Landroid/opengl/EGLSurface;II)Landroidx/camera/core/processing/OpenGlRenderer$a;
    .locals 1
    .param p0    # Landroid/opengl/EGLSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/processing/u;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/core/processing/u;-><init>(Landroid/opengl/EGLSurface;II)V

    return-object v0
.end method


# virtual methods
.method abstract a()Landroid/opengl/EGLSurface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method abstract b()I
.end method

.method abstract c()I
.end method
