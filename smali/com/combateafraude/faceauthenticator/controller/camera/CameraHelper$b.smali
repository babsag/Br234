.class Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$b;
.super Landroid/os/CountDownTimer;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->saveVideo(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;


# direct methods
.method constructor <init>(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$b;->a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$b;->a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    invoke-static {v0}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->d(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;)I

    .line 2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$b;->a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    invoke-static {v0}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->e(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$b;->a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    invoke-static {v0}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->f(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;)Landroidx/camera/core/VideoCapture;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/VideoCapture;->stopRecording()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$b;->a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->d(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;)I

    return-void
.end method
