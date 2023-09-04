.class Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;
.super Landroid/bluetooth/BluetoothGattServerCallback;
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
.field final synthetic a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    iput-object p2, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    iput-object p3, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->b:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p7}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V

    .line 2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p7}, Ljava/lang/String;-><init>([B)V

    const-string p4, "EOM"

    .line 3
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 4
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p4, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p4, "provider_url"

    .line 5
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "device_name"

    .line 6
    invoke-virtual {p2, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object p5, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->b:Ljava/lang/StringBuilder;

    const/4 p6, 0x0

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    iget-object p5, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    new-instance p6, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;

    invoke-direct {p6, p0, p4, p3, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b$a;-><init>(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {p5, p2, p6}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;->onConsentRequested(Ljava/lang/String;Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;)V

    goto :goto_0

    .line 9
    :catch_0
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    const/16 p2, 0x79

    invoke-static {p1, p2}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->a(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;I)V

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattServerCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    invoke-static {p2, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->b(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 3
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    const/16 p2, 0xa

    invoke-interface {p1, p2}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    const/16 p2, 0xb

    invoke-interface {p1, p2}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    .line 5
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;->d:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->b(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    :cond_1
    :goto_0
    return-void
.end method
