.class Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothLeCentralRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->q(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private b:I

.field final synthetic c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->b:I

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "0"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->d(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->a(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    move-result-object p1

    const/16 p2, 0x9

    invoke-interface {p1, p2}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    .line 6
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-virtual {p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    const/4 p3, 0x1

    .line 1
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 2
    iget v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->b:I

    .line 3
    iget-object p3, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne v0, p3, :cond_0

    const-string p3, "EOM"

    .line 4
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(Ljava/lang/String;)Z

    .line 5
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void

    .line 6
    :cond_0
    iget p3, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->b:I

    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->a(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    move-result-object p1

    const/4 p2, 0x7

    invoke-interface {p1, p2}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    .line 8
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->e(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)V

    return-void

    .line 9
    :cond_1
    iget-object p3, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->a:Ljava/util/List;

    iget v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->b:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 10
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {p2}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->a(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    move-result-object p2

    const/4 p3, 0x3

    invoke-interface {p2, p3}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->a(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    move-result-object p1

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 2
    iget-object p2, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {p2}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->i(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->a(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    move-result-object p1

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {v0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->a(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    .line 5
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {v0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->j(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {v0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->a(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    .line 7
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {v0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->k(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 8
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {v0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->l(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)[B

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->m(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;[BI)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->a:Ljava/util/List;

    .line 9
    iget v1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 10
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 11
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 12
    invoke-static {}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->c()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 14
    iget-object p2, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;->c:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;

    invoke-static {p2}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->k(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    :cond_1
    return-void
.end method
