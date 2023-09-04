.class public Lcom/ca/mas/core/security/AndroidMKeyRepository;
.super Lcom/ca/mas/core/security/a;
.source "AndroidMKeyRepository.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x17
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/security/a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/security/AndroidMKeyRepository;->c(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1

    return-object p1
.end method

.method c(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2, v2}, Ljava/util/Calendar;->add(II)V

    .line 4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 5
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v3, 0xf

    invoke-direct {v2, p1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p2}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->getKeySize()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=msso"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 9
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->isUserAuthenticationRequired()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->getUserAuthenticationValidityDurationSeconds()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string p2, "CBC"

    const-string v0, "CTR"

    const-string v1, "ECB"

    const-string v2, "GCM"

    filled-new-array {p2, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string v0, "NONE"

    const-string v1, "MD5"

    const-string v2, "SHA-1"

    const-string v3, "SHA-256"

    const-string v4, "SHA-384"

    const-string v5, "SHA-512"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string p2, "PKCS7Padding"

    const-string v0, "OAEPPadding"

    const-string v1, "PKCS1Padding"

    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string p2, "PSS"

    const-string v0, "PKCS1"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createPrivateKey(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Ljava/security/KeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ca/mas/core/security/a;->createPrivateKey(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Ljava/security/KeyPair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic deleteCertificateChain(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ca/mas/core/security/a;->deleteCertificateChain(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic deleteKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ca/mas/core/security/a;->deleteKey(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic generateCertificateSigningRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/ca/mas/core/security/a;->generateCertificateSigningRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/ca/mas/core/security/a;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPrivateKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/ca/mas/core/security/a;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPublicKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/ca/mas/core/security/a;->getPublicKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic saveCertificateChain(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ca/mas/core/security/a;->saveCertificateChain(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    return-void
.end method
