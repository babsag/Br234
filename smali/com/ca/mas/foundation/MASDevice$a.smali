.class final Lcom/ca/mas/foundation/MASDevice$a;
.super Lcom/ca/mas/foundation/MASDevice;
.source "MASDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASDevice;->getCurrentDevice()Lcom/ca/mas/foundation/MASDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ca/mas/foundation/MASDevice;-><init>(Lcom/ca/mas/foundation/MASDevice$a;)V

    return-void
.end method


# virtual methods
.method public deregister(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ca/mas/core/MobileSso;->isDeviceRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ca/mas/foundation/MASDevice$a$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/ca/mas/foundation/MASDevice$a$a;-><init>(Lcom/ca/mas/foundation/MASDevice$a;Lcom/ca/mas/core/MobileSso;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Device is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/ca/mas/core/context/DeviceIdentifier;

    invoke-direct {v0}, Lcom/ca/mas/core/context/DeviceIdentifier;-><init>()V

    invoke-virtual {v0}, Lcom/ca/mas/core/context/UniqueIdentifier;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Keystore is not available"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isRegistered()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/MobileSso;->isDeviceRegistered()Z

    move-result v0

    return v0
.end method

.method public resetLocally()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/MobileSso;->destroyAllPersistentTokens()V

    return-void
.end method

.method public startAsBluetoothPeripheral(Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->getInstance()Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->init(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->start(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;)V

    return-void
.end method

.method public stopAsBluetoothPeripheral()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->getInstance()Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->stop()V

    return-void
.end method
