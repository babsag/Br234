.class Lcom/google/zxing/client/android/AmbientLightManager$a;
.super Ljava/lang/Object;
.source "AmbientLightManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/client/android/AmbientLightManager;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/zxing/client/android/AmbientLightManager;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/AmbientLightManager;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/client/android/AmbientLightManager$a;->b:Lcom/google/zxing/client/android/AmbientLightManager;

    iput-boolean p2, p0, Lcom/google/zxing/client/android/AmbientLightManager$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager$a;->b:Lcom/google/zxing/client/android/AmbientLightManager;

    invoke-static {v0}, Lcom/google/zxing/client/android/AmbientLightManager;->a(Lcom/google/zxing/client/android/AmbientLightManager;)Lcom/journeyapps/barcodescanner/camera/CameraManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/zxing/client/android/AmbientLightManager$a;->a:Z

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setTorch(Z)V

    return-void
.end method
