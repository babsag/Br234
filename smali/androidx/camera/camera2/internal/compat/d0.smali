.class public final synthetic Landroidx/camera/camera2/internal/compat/d0;
.super Ljava/lang/Object;
.source "CameraManagerCompat.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance p1, Landroidx/camera/camera2/internal/compat/f0;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/internal/compat/f0;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 3
    invoke-static {p0}, Landroidx/camera/camera2/internal/compat/e0;->b(Landroid/content/Context;)Landroidx/camera/camera2/internal/compat/e0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Landroidx/camera/camera2/internal/compat/g0;->a(Landroid/content/Context;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/g0;

    move-result-object p0

    return-object p0
.end method
