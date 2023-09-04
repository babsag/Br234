.class final Lio/flutter/plugins/camera/h;
.super Ljava/lang/Object;
.source "CameraPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/camera/h$a;,
        Lio/flutter/plugins/camera/h$c;,
        Lio/flutter/plugins/camera/h$b;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/flutter/plugins/camera/h;->a:Z

    return-void
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 1
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Landroid/app/Activity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const-string v0, "android.permission.CAMERA"

    .line 1
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic c(Lio/flutter/plugins/camera/h$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/flutter/plugins/camera/h;->a:Z

    .line 2
    invoke-interface {p1, p2, p3}, Lio/flutter/plugins/camera/h$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic d(Lio/flutter/plugins/camera/h$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/camera/h;->c(Lio/flutter/plugins/camera/h$c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method e(Landroid/app/Activity;Lio/flutter/plugins/camera/h$b;ZLio/flutter/plugins/camera/h$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "permissionsRegistry",
            "enableAudio",
            "callback"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/camera/h;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "cameraPermission"

    const-string v1, "Camera permission request ongoing"

    .line 2
    invoke-interface {p4, v0, v1}, Lio/flutter/plugins/camera/h$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lio/flutter/plugins/camera/h;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lio/flutter/plugins/camera/h;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    invoke-interface {p4, p1, p1}, Lio/flutter/plugins/camera/h$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :cond_2
    :goto_0
    new-instance v0, Lio/flutter/plugins/camera/h$a;

    new-instance v1, Lio/flutter/plugins/camera/d;

    invoke-direct {v1, p0, p4}, Lio/flutter/plugins/camera/d;-><init>(Lio/flutter/plugins/camera/h;Lio/flutter/plugins/camera/h$c;)V

    invoke-direct {v0, v1}, Lio/flutter/plugins/camera/h$a;-><init>(Lio/flutter/plugins/camera/h$c;)V

    invoke-interface {p2, v0}, Lio/flutter/plugins/camera/h$b;->addListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lio/flutter/plugins/camera/h;->a:Z

    const-string p2, "android.permission.CAMERA"

    if-eqz p3, :cond_3

    const-string p3, "android.permission.RECORD_AUDIO"

    .line 7
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 8
    :cond_3
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    :goto_1
    const/16 p3, 0x2644

    .line 9
    invoke-static {p1, p2, p3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_2
    return-void
.end method
