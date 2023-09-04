.class public interface abstract Lcom/ca/mas/core/registration/RegistrationClient$DeviceRegistrationResult;
.super Ljava/lang/Object;
.source "RegistrationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/registration/RegistrationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceRegistrationResult"
.end annotation


# virtual methods
.method public abstract getClientCertificateChain()[Ljava/security/cert/X509Certificate;
.end method

.method public abstract getDeviceStatus()Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;
.end method

.method public abstract getIdToken()Lcom/ca/mas/core/token/IdToken;
.end method

.method public abstract getMagIdentifier()Ljava/lang/String;
.end method
