.class Lio/flutter/plugins/camera/Camera$a;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/camera/Camera;-><init>(Landroid/app/Activity;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Lio/flutter/plugins/camera/i;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/camera/Camera;


# direct methods
.method constructor <init>(Lio/flutter/plugins/camera/Camera;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/camera/Camera$a;->a:Lio/flutter/plugins/camera/Camera;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera$a;->a:Lio/flutter/plugins/camera/Camera;

    int-to-double v1, p1

    const-wide v3, 0x4056800000000000L    # 90.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int p1, v1

    mul-int/lit8 p1, p1, 0x5a

    invoke-static {v0, p1}, Lio/flutter/plugins/camera/Camera;->a(Lio/flutter/plugins/camera/Camera;I)I

    return-void
.end method
