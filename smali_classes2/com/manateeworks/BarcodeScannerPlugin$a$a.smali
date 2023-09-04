.class Lcom/manateeworks/BarcodeScannerPlugin$a$a;
.super Ljava/lang/Object;
.source "BarcodeScannerPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manateeworks/BarcodeScannerPlugin$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/manateeworks/BarcodeScannerPlugin$a;


# direct methods
.method constructor <init>(Lcom/manateeworks/BarcodeScannerPlugin$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/manateeworks/BarcodeScannerPlugin$a$a;->a:Lcom/manateeworks/BarcodeScannerPlugin$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin$a$a;->a:Lcom/manateeworks/BarcodeScannerPlugin$a;

    iget-object v0, v0, Lcom/manateeworks/BarcodeScannerPlugin$a;->b:Lcom/manateeworks/BarcodeScannerPlugin;

    invoke-static {v0}, Lcom/manateeworks/BarcodeScannerPlugin;->a(Lcom/manateeworks/BarcodeScannerPlugin;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin$a$a;->a:Lcom/manateeworks/BarcodeScannerPlugin$a;

    iget-object v0, v0, Lcom/manateeworks/BarcodeScannerPlugin$a;->b:Lcom/manateeworks/BarcodeScannerPlugin;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/manateeworks/BarcodeScannerPlugin;->b(Lcom/manateeworks/BarcodeScannerPlugin;Z)Z

    .line 3
    iget-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin$a$a;->a:Lcom/manateeworks/BarcodeScannerPlugin$a;

    iget-object v1, v0, Lcom/manateeworks/BarcodeScannerPlugin$a;->b:Lcom/manateeworks/BarcodeScannerPlugin;

    iget-object v0, v0, Lcom/manateeworks/BarcodeScannerPlugin$a;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v0}, Lcom/manateeworks/BarcodeScannerPlugin;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method
