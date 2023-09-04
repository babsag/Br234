.class public Lcom/ca/mas/core/context/DeviceIdentifier;
.super Lcom/ca/mas/core/context/UniqueIdentifier;
.source "DeviceIdentifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/context/UniqueIdentifier;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIdentifierKey()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ca.mas.foundation.msso.DEVICE_IDENTIFIER"

    return-object v0
.end method
