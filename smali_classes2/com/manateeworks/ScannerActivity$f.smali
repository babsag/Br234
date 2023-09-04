.class Lcom/manateeworks/ScannerActivity$f;
.super Ljava/lang/Object;
.source "ScannerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manateeworks/ScannerActivity;->decode([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$data",
            "val$width",
            "val$height"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/manateeworks/ScannerActivity$f;->a:[B

    iput p2, p0, Lcom/manateeworks/ScannerActivity$f;->b:I

    iput p3, p0, Lcom/manateeworks/ScannerActivity$f;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/manateeworks/ScannerActivity;->c()I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object v0, p0, Lcom/manateeworks/ScannerActivity$f;->a:[B

    iget v1, p0, Lcom/manateeworks/ScannerActivity$f;->b:I

    iget v2, p0, Lcom/manateeworks/ScannerActivity$f;->c:I

    invoke-static {v0, v1, v2}, Lcom/manateeworks/BarcodeScanner;->MWBscanGrayscaleImage([BII)[B

    move-result-object v0

    .line 4
    sget-object v1, Lcom/manateeworks/ScannerActivity;->state:Lcom/manateeworks/ScannerActivity$State;

    sget-object v2, Lcom/manateeworks/ScannerActivity$State;->STOPPED:Lcom/manateeworks/ScannerActivity$State;

    if-ne v1, v2, :cond_0

    .line 5
    invoke-static {}, Lcom/manateeworks/ScannerActivity;->d()I

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/manateeworks/BarcodeScanner;->MWBgetResultType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 7
    new-instance v4, Lcom/manateeworks/BarcodeScanner$MWResults;

    invoke-direct {v4, v0}, Lcom/manateeworks/BarcodeScanner$MWResults;-><init>([B)V

    .line 8
    iget v5, v4, Lcom/manateeworks/BarcodeScanner$MWResults;->count:I

    if-lez v5, :cond_1

    .line 9
    invoke-virtual {v4, v3}, Lcom/manateeworks/BarcodeScanner$MWResults;->getResult(I)Lcom/manateeworks/BarcodeScanner$MWResult;

    move-result-object v1

    .line 10
    iget-object v0, v1, Lcom/manateeworks/BarcodeScanner$MWResult;->bytes:[B

    :cond_1
    if-eqz v0, :cond_3

    .line 11
    sput-object v2, Lcom/manateeworks/ScannerActivity;->state:Lcom/manateeworks/ScannerActivity$State;

    .line 12
    iget-object v2, v1, Lcom/manateeworks/BarcodeScanner$MWResult;->bytes:[B

    iget v4, v1, Lcom/manateeworks/BarcodeScanner$MWResult;->bytesLength:I

    invoke-static {v2, v4}, Lcom/manateeworks/BarcodeScanner;->MWBsetDuplicate([BI)V

    const/4 v2, 0x1

    .line 13
    invoke-static {v2}, Lcom/manateeworks/MWOverlay;->setPaused(Z)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v2, ""

    .line 15
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v0, v3

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_2
    sget-object v0, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 18
    iget v1, v1, Lcom/manateeworks/BarcodeScanner$MWResult;->type:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 19
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 20
    :cond_3
    sget-object v0, Lcom/manateeworks/ScannerActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    .line 21
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    :cond_4
    :goto_1
    invoke-static {}, Lcom/manateeworks/ScannerActivity;->d()I

    return-void
.end method
