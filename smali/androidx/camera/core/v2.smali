.class Landroidx/camera/core/v2;
.super Landroidx/camera/core/c2;
.source "ModifiableImageReaderProxy.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private volatile d:Landroidx/camera/core/impl/TagBundle;

.field private volatile e:Ljava/lang/Long;

.field private volatile f:Ljava/lang/Integer;

.field private volatile g:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/media/ImageReader;)V
    .locals 0
    .param p1    # Landroid/media/ImageReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/c2;-><init>(Landroid/media/ImageReader;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/camera/core/v2;->d:Landroidx/camera/core/impl/TagBundle;

    .line 3
    iput-object p1, p0, Landroidx/camera/core/v2;->e:Ljava/lang/Long;

    .line 4
    iput-object p1, p0, Landroidx/camera/core/v2;->f:Ljava/lang/Integer;

    .line 5
    iput-object p1, p0, Landroidx/camera/core/v2;->g:Landroid/graphics/Matrix;

    return-void
.end method

.method private f(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;
    .locals 6

    .line 1
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/camera/core/v2;->d:Landroidx/camera/core/impl/TagBundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/camera/core/v2;->d:Landroidx/camera/core/impl/TagBundle;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v1

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/camera/core/v2;->e:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/camera/core/v2;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v2

    .line 4
    :goto_1
    iget-object v4, p0, Landroidx/camera/core/v2;->f:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/camera/core/v2;->f:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    .line 5
    :cond_2
    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result v4

    .line 6
    :goto_2
    iget-object v5, p0, Landroidx/camera/core/v2;->g:Landroid/graphics/Matrix;

    if-eqz v5, :cond_3

    iget-object v0, p0, Landroidx/camera/core/v2;->g:Landroid/graphics/Matrix;

    goto :goto_3

    .line 7
    :cond_3
    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getSensorToBufferTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 8
    :goto_3
    invoke-static {v1, v2, v3, v4, v0}, Landroidx/camera/core/ImmutableImageInfo;->create(Landroidx/camera/core/impl/TagBundle;JILandroid/graphics/Matrix;)Landroidx/camera/core/ImageInfo;

    move-result-object v0

    .line 9
    new-instance v1, Landroidx/camera/core/SettableImageProxy;

    invoke-direct {v1, p1, v0}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageInfo;)V

    return-object v1
.end method


# virtual methods
.method public acquireLatestImage()Landroidx/camera/core/ImageProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/camera/core/c2;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/v2;->f(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public acquireNextImage()Landroidx/camera/core/ImageProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/camera/core/c2;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/v2;->f(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method g(Landroidx/camera/core/impl/TagBundle;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/TagBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/camera/core/v2;->d:Landroidx/camera/core/impl/TagBundle;

    return-void
.end method
