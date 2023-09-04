.class final Lio/flutter/plugins/camera/h$a;
.super Ljava/lang/Object;
.source "CameraPermissions.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/camera/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final b:Lio/flutter/plugins/camera/h$c;


# direct methods
.method constructor <init>(Lio/flutter/plugins/camera/h$c;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/flutter/plugins/camera/h$a;->a:Z

    .line 3
    iput-object p1, p0, Lio/flutter/plugins/camera/h$a;->b:Lio/flutter/plugins/camera/h$c;

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Lio/flutter/plugins/camera/h$a;->a:Z

    const/4 v0, 0x0

    if-nez p2, :cond_3

    const/16 p2, 0x2644

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/flutter/plugins/camera/h$a;->a:Z

    .line 3
    aget p2, p3, v0

    const-string v0, "cameraPermission"

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lio/flutter/plugins/camera/h$a;->b:Lio/flutter/plugins/camera/h$c;

    const-string p3, "MediaRecorderCamera permission not granted"

    invoke-interface {p2, v0, p3}, Lio/flutter/plugins/camera/h$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    array-length p2, p3

    if-le p2, p1, :cond_2

    aget p2, p3, p1

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lio/flutter/plugins/camera/h$a;->b:Lio/flutter/plugins/camera/h$c;

    const-string p3, "MediaRecorderAudio permission not granted"

    invoke-interface {p2, v0, p3}, Lio/flutter/plugins/camera/h$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lio/flutter/plugins/camera/h$a;->b:Lio/flutter/plugins/camera/h$c;

    const/4 p3, 0x0

    invoke-interface {p2, p3, p3}, Lio/flutter/plugins/camera/h$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p1

    :cond_3
    :goto_1
    return v0
.end method
