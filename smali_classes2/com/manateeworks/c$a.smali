.class Lcom/manateeworks/c$a;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manateeworks/c;->c()Landroid/hardware/Camera$PreviewCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/manateeworks/c;


# direct methods
.method constructor <init>(Lcom/manateeworks/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manateeworks/c$a;->a:Lcom/manateeworks/c;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manateeworks/c$a;->a:Lcom/manateeworks/c;

    invoke-static {v0}, Lcom/manateeworks/c;->a(Lcom/manateeworks/c;)V

    .line 2
    iget-object v0, p0, Lcom/manateeworks/c$a;->a:Lcom/manateeworks/c;

    invoke-static {v0}, Lcom/manateeworks/c;->b(Lcom/manateeworks/c;)Lcom/manateeworks/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/manateeworks/b;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 3
    sget-boolean v1, Lcom/manateeworks/CameraManager;->useBufferedCallback:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/manateeworks/c$a;->a:Lcom/manateeworks/c;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, p2, p0, v2, v3}, Lcom/manateeworks/c;->e(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;II)I

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/manateeworks/c$a;->a:Lcom/manateeworks/c;

    iget-object v1, p2, Lcom/manateeworks/c;->e:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 6
    iget p2, p2, Lcom/manateeworks/c;->f:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, p2, v2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 8
    sget-boolean p1, Lcom/manateeworks/CameraManager;->useBufferedCallback:Z

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/manateeworks/c$a;->a:Lcom/manateeworks/c;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/manateeworks/c;->e:Landroid/os/Handler;

    :cond_1
    return-void
.end method
