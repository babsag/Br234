.class public Lcom/ca/mas/core/security/DefaultEncryptionProvider;
.super Ljava/lang/Object;
.source "DefaultEncryptionProvider.java"

# interfaces
.implements Lcom/ca/mas/core/security/EncryptionProvider;


# instance fields
.field private a:Lcom/ca/mas/core/security/KeyStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/ca/mas/core/security/b;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/security/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/security/DefaultEncryptionProvider;-><init>(Landroid/content/Context;Lcom/ca/mas/core/security/KeyStorageProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ca/mas/core/security/KeyStorageProvider;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/ca/mas/core/security/DefaultEncryptionProvider;->a:Lcom/ca/mas/core/security/KeyStorageProvider;

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/security/DefaultEncryptionProvider;->a:Lcom/ca/mas/core/security/KeyStorageProvider;

    invoke-virtual {p0}, Lcom/ca/mas/core/security/DefaultEncryptionProvider;->getKeyAlias()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ca/mas/core/security/KeyStorageProvider;->getKey(Ljava/lang/String;Z)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ca/mas/core/security/DefaultEncryptionProvider;->getKeyAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ca/mas/core/util/KeyUtilsSymmetric;->decrypt([BLjavax/crypto/SecretKey;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MAS"

    const-string v1, "Error while decrypting an cipher instance"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public encrypt([B)[B
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/security/DefaultEncryptionProvider;->a:Lcom/ca/mas/core/security/KeyStorageProvider;

    invoke-virtual {p0}, Lcom/ca/mas/core/security/DefaultEncryptionProvider;->getKeyAlias()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ca/mas/core/security/KeyStorageProvider;->getKey(Ljava/lang/String;Z)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ca/mas/core/security/DefaultEncryptionProvider;->getKeyAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ca/mas/core/util/KeyUtilsSymmetric;->encrypt([BLjavax/crypto/SecretKey;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MAS"

    const-string v1, "inside exception of encrypt function: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getKeyAlias()Ljava/lang/String;
    .locals 1

    const-string v0, "secret"

    return-object v0
.end method
