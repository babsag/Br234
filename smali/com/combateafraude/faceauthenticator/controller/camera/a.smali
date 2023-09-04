.class public final synthetic Lcom/combateafraude/faceauthenticator/controller/camera/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

.field public final synthetic b:Landroidx/camera/core/CameraSelector;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;Landroidx/camera/core/CameraSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/a;->a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/camera/a;->b:Landroidx/camera/core/CameraSelector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/a;->a:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/a;->b:Landroidx/camera/core/CameraSelector;

    invoke-static {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->g(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;Landroidx/camera/core/CameraSelector;)V

    return-void
.end method
