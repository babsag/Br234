.class public Lcom/ca/mas/core/util/KeyUtilsAsymmetric;
.super Ljava/lang/Object;
.source "KeyUtilsAsymmetric.java"


# static fields
.field private static a:Lcom/ca/mas/core/security/KeyStoreRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/security/KeyStoreRepository;->getKeyStoreRepository()Lcom/ca/mas/core/security/KeyStoreRepository;

    move-result-object v0

    sput-object v0, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)[B"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 2
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3
    :cond_0
    new-array v0, v2, [B

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 5
    array-length v4, v3

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static b([BI)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 3
    array-length v3, p0

    sub-int/2addr v3, v2

    if-le v3, p1, :cond_0

    move v3, p1

    .line 4
    :cond_0
    new-array v4, v3, [B

    .line 5
    invoke-static {p0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static c(Ljava/security/PrivateKey;[B)[B
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v2, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v4, "SHA-256"

    const-string v5, "MGF1"

    invoke-direct {v1, v4, v5, v2, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static clearCertificateChain(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    invoke-static {p0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->sanitizeAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/security/KeyStoreRepository;->deleteCertificateChain(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/security/PublicKey;[B)[B
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v2, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v4, "SHA-256"

    const-string v5, "MGF1"

    invoke-direct {v1, v4, v5, v2, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decrypt(Ljava/security/PrivateKey;[B)[B
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/16 v0, 0x100

    .line 1
    invoke-static {p1, v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->b([BI)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 4
    invoke-static {p0, v1}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->c(Ljava/security/PrivateKey;[B)[B

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->a(Ljava/util/ArrayList;)[B

    move-result-object p0

    return-object p0
.end method

.method public static deletePrivateKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    invoke-static {p0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->sanitizeAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/security/KeyStoreRepository;->deleteKey(Ljava/lang/String;)V

    return-void
.end method

.method public static encrypt(Ljava/security/PublicKey;[B)[B
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 1
    invoke-static {p1, v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->b([BI)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 4
    invoke-static {p0, v1}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->d(Ljava/security/PublicKey;[B)[B

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->a(Ljava/util/ArrayList;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateRsaPrivateKey(ILjava/lang/String;Ljava/lang/String;ZZIZ)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    const/16 v0, 0x800

    if-ge p0, v0, :cond_0

    const/16 p0, 0x800

    .line 1
    :cond_0
    new-instance v0, Lcom/ca/mas/core/security/GenerateKeyAttribute;

    invoke-direct {v0}, Lcom/ca/mas/core/security/GenerateKeyAttribute;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->setKeySize(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->setDn(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->setEncryptionRequired(Z)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->setUserAuthenticationRequired(Z)V

    .line 6
    invoke-virtual {v0, p6}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->setInvalidatedByBiometricEnrollment(Z)V

    .line 7
    invoke-virtual {v0, p5}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->setUserAuthenticationValidityDurationSeconds(I)V

    .line 8
    sget-object p0, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    invoke-static {p1}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->sanitizeAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/ca/mas/core/security/KeyStoreRepository;->createPrivateKey(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Ljava/security/KeyPair;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static generateRsaPrivateKey(Ljava/lang/String;Ljava/lang/String;ZZIZ)Ljava/security/PrivateKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    const/16 v0, 0x800

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->generateRsaPrivateKey(ILjava/lang/String;Ljava/lang/String;ZZIZ)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    invoke-static {p0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->sanitizeAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/security/KeyStoreRepository;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static getKeystoreKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    .line 1
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method public static getRsaPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    invoke-static {p0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->sanitizeAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/security/KeyStoreRepository;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljava/security/PrivateKey;

    return-object p0
.end method

.method public static getRsaPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    invoke-static {p0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->sanitizeAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ca/mas/core/security/KeyStoreRepository;->getPublicKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljava/security/PublicKey;

    return-object p0
.end method

.method public static sanitizeAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MASConfiguration;->getCurrentConfiguration()Lcom/ca/mas/foundation/MASConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASConfiguration;->isSsoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static setCertificateChain(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    invoke-static {p0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->sanitizeAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/ca/mas/core/security/KeyStoreRepository;->saveCertificateChain(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    return-void
.end method
