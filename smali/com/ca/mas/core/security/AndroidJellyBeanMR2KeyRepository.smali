.class public Lcom/ca/mas/core/security/AndroidJellyBeanMR2KeyRepository;
.super Lcom/ca/mas/core/security/a;
.source "AndroidJellyBeanMR2KeyRepository.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x12
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/security/AndroidJellyBeanMR2KeyRepository;->c(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p1

    return-object p1
.end method

.method c(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 4

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
    new-instance v2, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v2, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 8
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    .line 9
    invoke-virtual {p2}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->getDn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->isEncryptionRequired()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEncryptionRequired()Landroid/security/KeyPairGeneratorSpec$Builder;

    :cond_0
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
