.class public Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;
.super Lcom/ca/mas/core/auth/PollingRenderer;
.source "BluetoothLeCentralRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final MAX:I = 0x14

.field private static final c:Ljava/util/UUID;


# instance fields
.field private d:Landroid/bluetooth/BluetoothGatt;

.field private e:Landroid/bluetooth/le/BluetoothLeScanner;

.field private f:Landroid/bluetooth/le/ScanCallback;

.field private g:Ljava/util/UUID;

.field private h:Ljava/util/UUID;

.field private i:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->c:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/auth/PollingRenderer;-><init>()V

    const/16 v0, -0x50

    .line 2
    iput v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->j:I

    .line 3
    invoke-direct {p0, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->n(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;)Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->i:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    return-void
.end method

.method static synthetic a(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->i:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    return-object p0
.end method

.method static synthetic b(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->j:I

    return p0
.end method

.method static synthetic c()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->c:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic d(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/auth/AuthRenderer;->proceed()V

    return-void
.end method

.method static synthetic e(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/auth/PollingRenderer;->poll()V

    return-void
.end method

.method static synthetic f(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->e:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object p0
.end method

.method static synthetic g(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->s()V

    return-void
.end method

.method static synthetic h(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->q(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic i(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Ljava/util/UUID;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->g:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic j(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Ljava/util/UUID;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->h:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic k(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->d:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic l(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)[B
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->o()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;[BI)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->p([BI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private n(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;)Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$c;

    invoke-direct {p1, p0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$c;-><init>(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)V

    :cond_0
    return-object p1
.end method

.method private o()[B
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "provider_url"

    .line 2
    iget-object v2, p0, Lcom/ca/mas/core/auth/AuthRenderer;->provider:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v2}, Lcom/ca/mas/core/service/Provider;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_name"

    .line 3
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAS"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private p([BI)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 4
    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v2

    .line 5
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    array-length v2, v2

    add-int/2addr v1, v2

    move v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private q(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/auth/AuthRenderer;->context:Landroid/content/Context;

    new-instance v1, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;

    invoke-direct {v1, p0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$b;-><init>(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->d:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method private r()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MAS"

    const-string v1, "Start BLE Scanning..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    new-instance v0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$a;

    invoke-direct {v0, p0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer$a;-><init>(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;)V

    iput-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->f:Landroid/bluetooth/le/ScanCallback;

    .line 3
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 4
    new-instance v1, Landroid/os/ParcelUuid;

    iget-object v2, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->g:Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    .line 9
    invoke-virtual {v0, v4}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, v4}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->e:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    iget-object v3, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->f:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v2, v1, v0, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method

.method private s()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->e:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->f:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->e:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->i:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ca/mas/core/auth/PollingRenderer;->close()V

    .line 2
    invoke-direct {p0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->s()V

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 5
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_0
    return-void
.end method

.method protected onAuthCodeReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ca/mas/core/auth/PollingRenderer;->onAuthCodeReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->i:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    const/16 p2, 0x8

    invoke-interface {p1, p2}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    return-void
.end method

.method protected onError(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->close()V

    return-void
.end method

.method public onRenderCompleted()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/ca/mas/core/auth/PollingRenderer;->onRenderCompleted()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    const/16 v0, 0x67

    const-string v2, "Bluetooth LE session sharing not supported"

    .line 3
    invoke-virtual {p0, v0, v2, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/auth/AuthRenderer;->context:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const-string v2, "Bluetooth LE not supported"

    const/16 v3, 0x65

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, v3, v2, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-nez v4, :cond_2

    .line 7
    invoke-virtual {p0, v3, v2, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v0, 0x64

    const-string v2, "Bluetooth LE Disabled"

    .line 9
    invoke-virtual {p0, v0, v2, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_3
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v2

    const-string v3, "msso.ble.service.uuid"

    .line 11
    invoke-interface {v2, v3}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x66

    if-eqz v3, :cond_8

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    :try_start_0
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iput-object v3, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->g:Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "msso.ble.characteristic.uuid"

    .line 14
    invoke-interface {v2, v3}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    .line 16
    :cond_5
    :try_start_1
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->h:Ljava/util/UUID;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "msso.ble.rssi"

    .line 17
    invoke-interface {v2, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->j:I

    .line 19
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->e:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 20
    invoke-direct {p0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->r()V

    .line 21
    iget-object v0, p0, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->i:Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLe;->onStatusUpdate(I)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Invalid Characteristic UUID"

    .line 22
    invoke-virtual {p0, v4, v1, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_7
    :goto_0
    const-string v0, "Characteristic UUID is not provided"

    .line 23
    invoke-virtual {p0, v4, v0, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Invalid Service UUID"

    .line 24
    invoke-virtual {p0, v4, v1, v0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_8
    :goto_1
    const-string v0, "Service UUID is not provided"

    .line 25
    invoke-virtual {p0, v4, v0, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public render()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected startPollingOnStartup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
