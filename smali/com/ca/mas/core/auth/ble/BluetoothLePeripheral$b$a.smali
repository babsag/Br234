.class Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;
.super Ljava/lang/Object;
.source "BluetoothLePeripheral.java"

# interfaces
.implements Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic c:Landroid/bluetooth/BluetoothDevice;

.field final synthetic d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iput-object p2, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p4, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->c:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object v0, v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    invoke-static {v0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->d(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->c:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    return-void
.end method

.method public proceed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object v0, v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->c(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;Z)Z

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    iget-object v0, v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance(Landroid/content/Context;)Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;->a:Ljava/lang/String;

    new-instance v2, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;

    invoke-direct {v2, p0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a$a;-><init>(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;)V

    invoke-interface {v0, v1, v2}, Lcom/ca/mas/core/MobileSso;->authorize(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method
