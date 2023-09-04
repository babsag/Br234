.class Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;
.super Lcom/ca/mas/core/MAGResultReceiver;
.source "BluetoothLePeripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->proceed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    invoke-direct {p0}, Lcom/ca/mas/core/MAGResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ca/mas/core/error/MAGError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object v0, v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object v0, v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->c(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;Z)Z

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object v0, v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(Ljava/lang/String;)Z

    .line 3
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    const/16 v0, 0x79

    invoke-static {p1, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->a(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;I)V

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    invoke-static {p1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->d(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object p1

    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object v1, v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->c:Landroid/bluetooth/BluetoothDevice;

    iget-object v0, v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 5
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    const/16 v0, 0x7b

    invoke-interface {p1, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;->onError(I)V

    :goto_0
    return-void
.end method

.method public onRequestCancelled(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/ca/mas/foundation/MASResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object v0, v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object v0, v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->c(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;Z)Z

    .line 2
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(Ljava/lang/String;)Z

    .line 4
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    invoke-static {p1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->d(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object p1

    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object v1, v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->c:Landroid/bluetooth/BluetoothDevice;

    iget-object v0, v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 6
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object p1, p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    const/16 v0, 0x7b

    invoke-interface {p1, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;->onError(I)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/ca/mas/core/error/MAGError;

    new-instance v0, Lcom/ca/mas/core/error/MAGException;

    const/4 v1, -0x1

    const-string v2, "Server response with error."

    invoke-direct {v0, v1, v2}, Lcom/ca/mas/core/error/MAGException;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/ca/mas/core/error/MAGError;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;->onError(Lcom/ca/mas/core/error/MAGError;)V

    :goto_0
    return-void
.end method
