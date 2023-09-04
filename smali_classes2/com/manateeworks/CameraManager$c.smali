.class Lcom/manateeworks/CameraManager$c;
.super Ljava/util/TimerTask;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manateeworks/CameraManager;->startFocusing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/manateeworks/CameraManager;


# direct methods
.method constructor <init>(Lcom/manateeworks/CameraManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manateeworks/CameraManager$c;->a:Lcom/manateeworks/CameraManager;

    .line 2
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager$c;->a:Lcom/manateeworks/CameraManager;

    iget-object v0, v0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
