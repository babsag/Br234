.class Lcom/manateeworks/BarcodeScannerPlugin$a;
.super Ljava/util/TimerTask;
.source "BarcodeScannerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manateeworks/BarcodeScannerPlugin;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/SurfaceHolder;

.field final synthetic b:Lcom/manateeworks/BarcodeScannerPlugin;


# direct methods
.method constructor <init>(Lcom/manateeworks/BarcodeScannerPlugin;Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$holder"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/manateeworks/BarcodeScannerPlugin$a;->b:Lcom/manateeworks/BarcodeScannerPlugin;

    iput-object p2, p0, Lcom/manateeworks/BarcodeScannerPlugin$a;->a:Landroid/view/SurfaceHolder;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin$a;->b:Lcom/manateeworks/BarcodeScannerPlugin;

    invoke-static {v0}, Lcom/manateeworks/BarcodeScannerPlugin;->c(Lcom/manateeworks/BarcodeScannerPlugin;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/manateeworks/BarcodeScannerPlugin$a$a;

    invoke-direct {v1, p0}, Lcom/manateeworks/BarcodeScannerPlugin$a$a;-><init>(Lcom/manateeworks/BarcodeScannerPlugin$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
