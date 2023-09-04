.class Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$d;
.super Ljava/lang/Object;
.source "BluetoothLePeripheral.java"

# interfaces
.implements Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;->e(Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;)Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;
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
    iput-object p1, p0, Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral$d;->a:Lcom/ca/mas/core/auth/ble/BluetoothLePeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsentRequested(Ljava/lang/String;Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;)V
    .locals 0

    return-void
.end method

.method public onError(I)V
    .locals 0

    return-void
.end method

.method public onStatusUpdate(I)V
    .locals 0

    return-void
.end method
