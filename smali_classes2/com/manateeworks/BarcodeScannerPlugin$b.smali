.class Lcom/manateeworks/BarcodeScannerPlugin$b;
.super Ljava/lang/Object;
.source "BarcodeScannerPlugin.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manateeworks/BarcodeScannerPlugin;->initCamera(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/manateeworks/BarcodeScannerPlugin;


# direct methods
.method constructor <init>(Lcom/manateeworks/BarcodeScannerPlugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/manateeworks/BarcodeScannerPlugin$b;->a:Lcom/manateeworks/BarcodeScannerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/manateeworks/ScannerActivity$State;->STOPPED:Lcom/manateeworks/ScannerActivity$State;

    sput-object v0, Lcom/manateeworks/ScannerActivity;->state:Lcom/manateeworks/ScannerActivity$State;

    .line 3
    iget-object v0, p0, Lcom/manateeworks/BarcodeScannerPlugin$b;->a:Lcom/manateeworks/BarcodeScannerPlugin;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/manateeworks/BarcodeScanner$MWResult;

    invoke-virtual {v0, p1}, Lcom/manateeworks/BarcodeScannerPlugin;->handleDecode(Lcom/manateeworks/BarcodeScanner$MWResult;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/manateeworks/ScannerActivity;->state:Lcom/manateeworks/ScannerActivity$State;

    sget-object v0, Lcom/manateeworks/ScannerActivity$State;->PREVIEW:Lcom/manateeworks/ScannerActivity$State;

    if-eq p1, v0, :cond_2

    sget-object p1, Lcom/manateeworks/ScannerActivity;->state:Lcom/manateeworks/ScannerActivity$State;

    sget-object v0, Lcom/manateeworks/ScannerActivity$State;->DECODING:Lcom/manateeworks/ScannerActivity$State;

    if-ne p1, v0, :cond_4

    .line 5
    :cond_2
    invoke-static {}, Lcom/manateeworks/CameraManager;->get()Lcom/manateeworks/CameraManager;

    move-result-object p1

    sget-object v0, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lcom/manateeworks/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/manateeworks/ScannerActivity;->decode([BII)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
