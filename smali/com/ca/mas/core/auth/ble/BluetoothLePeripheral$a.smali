.class Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$a;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "BluetoothLePeripheral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->start(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartFailure(I)V

    .line 2
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    const/16 v0, 0x78

    invoke-static {p1, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->a(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;I)V

    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method
