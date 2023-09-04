.class public Lcom/ca/mas/core/registration/DeviceRegistrationAwaitingActivationException;
.super Lcom/ca/mas/core/error/MAGException;
.source "DeviceRegistrationAwaitingActivationException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x1d4c1

    const-string v1, "Device registration is incomplete -- awaiting manual approval"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/ca/mas/core/error/MAGException;-><init>(ILjava/lang/String;)V

    return-void
.end method
