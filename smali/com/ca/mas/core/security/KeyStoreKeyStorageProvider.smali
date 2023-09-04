.class public abstract Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;
.super Ljava/lang/Object;
.source "KeyStoreKeyStorageProvider.java"

# interfaces
.implements Lcom/ca/mas/core/security/KeyStorageProvider;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->a:Landroid/content/Context;

    return-void
.end method

.method private a([B)Ljavax/crypto/SecretKey;
    .locals 3

    :try_start_0
    const-string v0, "ASYM_KEY"

    .line 1
    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->getRsaPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1PADDING"

    .line 2
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 4
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 5
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 6
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const-string v1, "Error while decrypting SecretKey"

    if-eqz v0, :cond_0

    const-string v0, "MAS"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b(Ljavax/crypto/SecretKey;)[B
    .locals 9

    const-string v0, "ASYM_KEY"

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->getRsaPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v3, "ASYM_KEY"

    const-string v1, "CN=%s, OU=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v5, "com.ca"

    aput-object v5, v4, v2

    .line 2
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 3
    invoke-static/range {v3 .. v8}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->generateRsaPrivateKey(Ljava/lang/String;Ljava/lang/String;ZZIZ)Ljava/security/PrivateKey;

    .line 4
    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->getRsaPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    :cond_0
    const-string v0, "RSA/ECB/PKCS1PADDING"

    .line 5
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 7
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const-string v1, "Error while encrypting SecretKey"

    if-eqz v0, :cond_1

    const-string v0, "MAS"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method abstract deleteSecretKeyLocally(Ljava/lang/String;)Z
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->a:Landroid/content/Context;

    return-object v0
.end method

.method abstract getEncryptedSecretKey(Ljava/lang/String;)[B
.end method

.method public getKey(Ljava/lang/String;Z)Ljavax/crypto/SecretKey;
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/ca/mas/core/util/KeyUtilsSymmetric;->retrieveKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->getEncryptedSecretKey(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    invoke-direct {p0, v1}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->a([B)Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MAS"

    const-string v3, "Error while decrypting SecretKey, deleting it"

    .line 5
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->deleteSecretKeyLocally(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    const/16 v1, 0x17

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x1c20

    const/4 v8, 0x0

    const-string v3, "AES"

    move-object v2, p1

    .line 7
    invoke-static/range {v2 .. v8}, Lcom/ca/mas/core/util/KeyUtilsSymmetric;->generateKey(Ljava/lang/String;Ljava/lang/String;IZZIZ)Ljavax/crypto/SecretKey;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/16 v4, 0x100

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string v3, "AES"

    move-object v2, p1

    .line 8
    invoke-static/range {v2 .. v8}, Lcom/ca/mas/core/util/KeyUtilsSymmetric;->generateKey(Ljava/lang/String;Ljava/lang/String;IZZIZ)Ljavax/crypto/SecretKey;

    move-result-object p2

    :goto_1
    move-object v0, p2

    .line 9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v1, :cond_5

    .line 10
    invoke-direct {p0, v0}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->b(Ljavax/crypto/SecretKey;)[B

    move-result-object p2

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->storeSecretKeyLocally(Ljava/lang/String;[B)Z

    goto :goto_2

    .line 12
    :cond_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt p2, v2, :cond_4

    .line 13
    invoke-static {p1, v0, v4, v3, v4}, Lcom/ca/mas/core/util/KeyUtilsSymmetric;->storeKeyAndroidN(Ljava/lang/String;Ljavax/crypto/SecretKey;ZIZ)Z

    .line 14
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->deleteSecretKeyLocally(Ljava/lang/String;)Z

    goto :goto_2

    :cond_4
    if-lt p2, v1, :cond_5

    .line 15
    invoke-static {p1, v0, v4, v3}, Lcom/ca/mas/core/util/KeyUtilsSymmetric;->storeKeyAndroidM(Ljava/lang/String;Ljavax/crypto/SecretKey;ZI)Z

    .line 16
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->deleteSecretKeyLocally(Ljava/lang/String;)Z

    :cond_5
    :goto_2
    return-object v0
.end method

.method public removeKey(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ca/mas/core/util/KeyUtilsSymmetric;->deleteKey(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->deleteSecretKeyLocally(Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method abstract storeSecretKeyLocally(Ljava/lang/String;[B)Z
.end method
