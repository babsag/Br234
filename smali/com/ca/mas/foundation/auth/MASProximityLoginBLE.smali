.class public Lcom/ca/mas/foundation/auth/MASProximityLoginBLE;
.super Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;
.source "MASProximityLoginBLE.java"

# interfaces
.implements Lcom/ca/mas/foundation/auth/MASProximityLogin;


# static fields
.field public static final BLE_ERROR_DISABLED:I = 0x64

.field public static final BLE_ERROR_INVALID_UUID:I = 0x66

.field public static final BLE_ERROR_NOT_SUPPORTED:I = 0x65

.field public static final BLE_ERROR_SESSION_SHARING_NOT_SUPPORTED:I = 0x67


# direct methods
.method public constructor <init>(Lcom/ca/mas/foundation/auth/MASProximityLoginBLECentralListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;-><init>(Lcom/ca/mas/core/auth/ble/BluetoothLeCentralCallback;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;JLcom/ca/mas/foundation/auth/MASAuthenticationProviders;)Z
    .locals 2

    .line 1
    iput-wide p2, p0, Lcom/ca/mas/core/auth/AuthRenderer;->requestId:J

    .line 2
    invoke-virtual {p4}, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->getProviders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;

    .line 3
    invoke-virtual {p2}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->isProximityLogin()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Lcom/ca/mas/core/service/Provider;

    invoke-virtual {p2}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->getIdentifier()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->getPollUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p3, p4, v0, p2, v1}, Lcom/ca/mas/core/service/Provider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-super {p0, p1, p3}, Lcom/ca/mas/core/auth/PollingRenderer;->init(Landroid/content/Context;Lcom/ca/mas/core/service/Provider;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->onRenderCompleted()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ca/mas/core/auth/ble/BluetoothLeCentralRenderer;->close()V

    return-void
.end method
