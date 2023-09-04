.class public Lcom/ca/mas/core/security/AndroidNKeyRepository;
.super Lcom/ca/mas/core/security/AndroidMKeyRepository;
.source "AndroidNKeyRepository.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x18
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/security/AndroidMKeyRepository;-><init>()V

    return-void
.end method


# virtual methods
.method c(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ca/mas/core/security/AndroidMKeyRepository;->c(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->isInvalidatedByBiometricEnrollment()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setInvalidatedByBiometricEnrollment(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    return-object p1
.end method
