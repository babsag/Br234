.class Lcom/manateeworks/CameraManager$a;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manateeworks/CameraManager;->setZoom(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/manateeworks/CameraManager;

.field private final synthetic b:Landroid/hardware/Camera$Parameters;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/manateeworks/CameraManager;Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manateeworks/CameraManager$a;->a:Lcom/manateeworks/CameraManager;

    iput-object p2, p0, Lcom/manateeworks/CameraManager$a;->b:Landroid/hardware/Camera$Parameters;

    iput p3, p0, Lcom/manateeworks/CameraManager$a;->c:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manateeworks/CameraManager$a;->a:Lcom/manateeworks/CameraManager;

    iget-object v0, v0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 3
    iget-object v0, p0, Lcom/manateeworks/CameraManager$a;->b:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/manateeworks/CameraManager$a;->c:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 4
    iget-object v0, p0, Lcom/manateeworks/CameraManager$a;->a:Lcom/manateeworks/CameraManager;

    iget-object v0, v0, Lcom/manateeworks/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/manateeworks/CameraManager$a;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/manateeworks/CameraManager$a;->a:Lcom/manateeworks/CameraManager;

    invoke-virtual {v0}, Lcom/manateeworks/CameraManager;->startFocusing()V

    return-void
.end method
