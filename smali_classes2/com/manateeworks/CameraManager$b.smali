.class Lcom/manateeworks/CameraManager$b;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manateeworks/CameraManager;->setTorch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/manateeworks/CameraManager;

.field private final synthetic b:Z

.field private final synthetic c:Landroid/hardware/Camera$Parameters;


# direct methods
.method constructor <init>(Lcom/manateeworks/CameraManager;ZLandroid/hardware/Camera$Parameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manateeworks/CameraManager$b;->a:Lcom/manateeworks/CameraManager;

    iput-boolean p2, p0, Lcom/manateeworks/CameraManager$b;->b:Z

    iput-object p3, p0, Lcom/manateeworks/CameraManager$b;->c:Landroid/hardware/Camera$Parameters;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager$b;->a:Lcom/manateeworks/CameraManager;

    iget-object v0, v0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/manateeworks/CameraManager$b;->b:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/manateeworks/CameraManager$b;->c:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manateeworks/CameraManager$b;->c:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/manateeworks/CameraManager$b;->a:Lcom/manateeworks/CameraManager;

    iget-object v0, v0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/manateeworks/CameraManager$b;->c:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void
.end method
