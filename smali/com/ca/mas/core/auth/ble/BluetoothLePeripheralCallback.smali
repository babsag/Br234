.class public interface abstract Lcom/ca/mas/core/auth/ble/BluetoothLePeripheralCallback;
.super Ljava/lang/Object;
.source "BluetoothLePeripheralCallback.java"

# interfaces
.implements Lcom/ca/mas/core/auth/ble/BluetoothLe;


# static fields
.field public static final BLE_ERROR_ADVERTISE_FAILED:I = 0x78

.field public static final BLE_ERROR_AUTH_FAILED:I = 0x79

.field public static final BLE_ERROR_CENTRAL_UNSUBSCRIBED:I = 0x7b

.field public static final BLE_ERROR_PERIPHERAL_MODE_NOT_SUPPORTED:I = 0x7a

.field public static final BLE_STATE_CONNECTED:I = 0xa

.field public static final BLE_STATE_DISCONNECTED:I = 0xb

.field public static final BLE_STATE_SESSION_AUTHORIZED:I = 0xe

.field public static final BLE_STATE_SESSION_NOTIFIED:I = 0xf

.field public static final BLE_STATE_STARTED:I = 0xc

.field public static final BLE_STATE_STOPPED:I = 0xd


# virtual methods
.method public abstract onConsentRequested(Ljava/lang/String;Lcom/ca/mas/core/auth/ble/BluetoothLeConsentHandler;)V
.end method

.method public abstract onError(I)V
.end method
