.class public abstract Landroidx/camera/core/impl/AttachedSurfaceInfo;
.super Ljava/lang/Object;
.source "AttachedSurfaceInfo.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroidx/camera/core/impl/SurfaceConfig;ILandroid/util/Size;Landroid/util/Range;)Landroidx/camera/core/impl/AttachedSurfaceInfo;
    .locals 1
    .param p0    # Landroidx/camera/core/impl/SurfaceConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Range;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            "I",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/x;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/core/impl/x;-><init>(Landroidx/camera/core/impl/SurfaceConfig;ILandroid/util/Size;Landroid/util/Range;)V

    return-object v0
.end method


# virtual methods
.method public abstract getImageFormat()I
.end method

.method public abstract getSize()Landroid/util/Size;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTargetFrameRate()Landroid/util/Range;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
