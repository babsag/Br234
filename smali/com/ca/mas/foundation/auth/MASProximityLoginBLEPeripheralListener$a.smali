.class Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener$a;
.super Ljava/lang/Object;
.source "MASProximityLoginBLEPeripheralListener.java"

# interfaces
.implements Lcom/ca/mas/foundation/auth/MASProximityLoginBLEUserConsentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener;->onConsentRequested(Ljava/lang/String;Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;

.field final synthetic b:Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener;Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener$a;->b:Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener;

    iput-object p2, p0, Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;

    invoke-interface {v0}, Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;->cancel()V

    return-void
.end method

.method public proceed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASProximityLoginBLEPeripheralListener$a;->a:Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;

    invoke-interface {v0}, Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;->proceed()V

    return-void
.end method
