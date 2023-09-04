.class public Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;
.super Ljava/lang/Object;
.source "Camera2CamcorderProfileProvider.java"

# interfaces
.implements Landroidx/camera/core/impl/CamcorderProfileProvider;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera id is not an integer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unable to create CamcorderProfileProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2CamcorderProfileProvider"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 4
    :goto_0
    iput-boolean v1, p0, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->a:Z

    .line 5
    iput v0, p0, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->b:I

    .line 6
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/quirk/CameraQuirks;->get(Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/core/impl/Quirks;

    move-result-object p1

    const-class p2, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;

    .line 7
    invoke-virtual {p1, p2}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;

    .line 8
    new-instance p2, Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;

    invoke-direct {p2, p1}, Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;-><init>(Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;)V

    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->c:Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;

    return-void
.end method

.method private a(I)Landroidx/camera/core/impl/CamcorderProfileProxy;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->b:I

    invoke-static {v1, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get CamcorderProfile by quality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Camera2CamcorderProfileProvider"

    invoke-static {v2, p1, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->fromCamcorderProfile(Landroid/media/CamcorderProfile;)Landroidx/camera/core/impl/CamcorderProfileProxy;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public get(I)Landroidx/camera/core/impl/CamcorderProfileProxy;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v0, p0, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->b:I

    invoke-static {v0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->a(I)Landroidx/camera/core/impl/CamcorderProfileProxy;

    move-result-object p1

    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->c:Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;->hasValidVideoResolution(Landroidx/camera/core/impl/CamcorderProfileProxy;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public hasProfile(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->b:I

    invoke-static {v0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->c:Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;->hasQuirk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->a(I)Landroidx/camera/core/impl/CamcorderProfileProxy;

    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;->c:Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;->hasValidVideoResolution(Landroidx/camera/core/impl/CamcorderProfileProxy;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
