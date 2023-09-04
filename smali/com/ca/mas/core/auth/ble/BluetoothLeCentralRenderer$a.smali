.class Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$a;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothLeCentralRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->a(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    .line 2
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "MAS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BLE advertisement has been found with Rssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result p1

    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {v0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->b(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)I

    move-result v0

    if-le p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->f(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->g(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)V

    .line 8
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "MAS"

    const-string v0, "Start process BLE session sharing."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->h(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
