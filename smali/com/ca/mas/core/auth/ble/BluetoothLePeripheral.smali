.class public Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;
.super Ljava/lang/Object;
.source "BluetoothLePeripheral.java"


# static fields
.field private static a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

.field private d:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private e:Landroid/bluetooth/BluetoothGattServer;

.field private f:Landroid/bluetooth/BluetoothDevice;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    invoke-direct {v0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;-><init>()V

    sput-object v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f(I)V

    return-void
.end method

.method static synthetic b(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic c(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;)Landroid/bluetooth/BluetoothGattServer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->e:Landroid/bluetooth/BluetoothGattServer;

    return-object p0
.end method

.method private e(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;)Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$d;

    invoke-direct {p1, p0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$d;-><init>(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;)V

    :cond_0
    return-object p1
.end method

.method private f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->c:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    invoke-direct {p0, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->e(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;)Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;->onError(I)V

    return-void
.end method

.method public static getInstance()Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->stop()V

    return-void
.end method

.method public isAuthenticating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->g:Z

    return v0
.end method

.method public declared-synchronized start(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->e(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;)Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->c:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/16 p1, 0x67

    .line 3
    invoke-direct {p0, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->b:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x65

    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0, v2}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v1, "bluetooth"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    if-nez v1, :cond_2

    .line 10
    invoke-direct {p0, v2}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-nez v3, :cond_3

    .line 13
    invoke-direct {p0, v2}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 p1, 0x64

    .line 16
    invoke-direct {p0, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v2

    const-string v4, "msso.ble.service.uuid"

    .line 20
    invoke-interface {v2, v4}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v4, 0x66

    if-eqz v2, :cond_b

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v5, :cond_5

    goto/16 :goto_2

    .line 22
    :cond_5
    :try_start_6
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 23
    :try_start_7
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v5

    const-string v6, "msso.ble.characteristic.uuid"

    .line 25
    invoke-interface {v5, v6}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 26
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v6, :cond_6

    goto/16 :goto_1

    .line 27
    :cond_6
    :try_start_8
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 28
    :try_start_9
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v3

    iput-object v3, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->d:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v3, :cond_7

    const/16 p1, 0x7a

    .line 29
    invoke-direct {p0, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 31
    :cond_7
    :try_start_a
    iget-object v3, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->e:Landroid/bluetooth/BluetoothGattServer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_8

    .line 32
    monitor-exit p0

    return-void

    .line 33
    :cond_8
    :try_start_b
    new-instance v3, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    const/4 v5, 0x1

    .line 34
    invoke-virtual {v3, v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 35
    invoke-virtual {v3, v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    const/4 v6, 0x0

    .line 36
    invoke-virtual {v3, v6}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    const/4 v7, 0x2

    .line 37
    invoke-virtual {v3, v7}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    .line 38
    new-instance v7, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v7}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 39
    invoke-virtual {v7, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 40
    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v7, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    .line 41
    iget-object v5, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->d:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-virtual {v3}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v3

    invoke-virtual {v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v7

    new-instance v8, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$a;

    invoke-direct {v8, p0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$a;-><init>(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;)V

    invoke-virtual {v5, v3, v7, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    new-instance v5, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;

    invoke-direct {v5, p0, p1, v3, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$b;-><init>(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;Ljava/lang/StringBuilder;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v5}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->e:Landroid/bluetooth/BluetoothGattServer;

    .line 44
    new-instance v0, Landroid/bluetooth/BluetoothGattService;

    invoke-direct {v0, v2, v6}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    .line 45
    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    const/16 v2, 0x14

    const/16 v3, 0x11

    invoke-direct {v1, v4, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 47
    iget-object v1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->e:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v1, :cond_9

    .line 48
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    const/16 v0, 0xc

    .line 49
    invoke-interface {p1, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    goto :goto_0

    :cond_9
    const/16 v0, 0x78

    .line 50
    invoke-interface {p1, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;->onError(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 51
    :goto_0
    monitor-exit p0

    return-void

    .line 52
    :catch_0
    :try_start_c
    invoke-direct {p0, v4}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 54
    :cond_a
    :goto_1
    :try_start_d
    invoke-direct {p0, v4}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 56
    :catch_1
    :try_start_e
    invoke-direct {p0, v4}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 58
    :cond_b
    :goto_2
    :try_start_f
    invoke-direct {p0, v4}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/16 v0, 0x65

    .line 2
    invoke-direct {p0, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->d:Landroid/bluetooth/le/BluetoothLeAdvertiser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 5
    :try_start_2
    new-instance v1, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$c;

    invoke-direct {v1, p0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$c;-><init>(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :catch_0
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->e:Landroid/bluetooth/BluetoothGattServer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 7
    :try_start_4
    iget-object v1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattServer;->cancelConnection(Landroid/bluetooth/BluetoothDevice;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->e:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->clearServices()V

    .line 10
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->e:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11
    :catch_1
    :try_start_5
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->c:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    invoke-direct {p0, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->e(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;)Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    :cond_3
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->e:Landroid/bluetooth/BluetoothGattServer;

    .line 13
    iput-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->f:Landroid/bluetooth/BluetoothDevice;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
