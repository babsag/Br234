.class public abstract Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener;
.super Ljava/lang/Object;
.source "MASProximityLoginBLEPeripheralListener.java"

# interfaces
.implements Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onConsentRequested(Landroid/content/Context;Ljava/lang/String;Lcom/ca/mas/foundation/auth/MASProximityLoginBLEUserConsentHandler;)V
.end method

.method public final onConsentRequested(Ljava/lang/String;Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener$a;

    invoke-direct {v1, p0, p2}, Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener$a;-><init>(Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener;Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener;->onConsentRequested(Landroid/content/Context;Ljava/lang/String;Lcom/ca/mas/foundation/auth/MASProximityLoginBLEUserConsentHandler;)V

    return-void
.end method
