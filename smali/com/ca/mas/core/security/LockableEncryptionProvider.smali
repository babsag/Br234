.class public Lcom/ca/mas/core/security/LockableEncryptionProvider;
.super Ljava/lang/Object;
.source "LockableEncryptionProvider.java"

# interfaces
.implements Lcom/ca/mas/core/security/EncryptionProvider;


# instance fields
.field private a:Ljava/lang/String;

.field protected ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->ctx:Landroid/content/Context;

    const-string v0, "com.ca.mas.LOCKABLE_KEY"

    .line 3
    iput-object v0, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->ctx:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->ctx:Landroid/content/Context;

    const-string v0, "com.ca.mas.LOCKABLE_KEY"

    .line 7
    iput-object v0, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->a:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->ctx:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->deletePrivateKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public decrypt([B)[B
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->getKeystoreKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->getRsaPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->decrypt(Ljava/security/PrivateKey;[B)[B

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    check-cast v0, Ljavax/crypto/SecretKey;

    .line 6
    iget-object v1, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ca/mas/core/util/KeyUtilsSymmetric;->decrypt([BLjavax/crypto/SecretKey;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MAS"

    const-string v1, "Unable to decrypt given data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public encrypt([B)[B
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->generateRsaPrivateKey(Ljava/lang/String;Ljava/lang/String;ZZIZ)Ljava/security/PrivateKey;

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/security/LockableEncryptionProvider;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->getRsaPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 3
    invoke-static {v0, p1}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->encrypt(Ljava/security/PublicKey;[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MAS"

    const-string v1, "Unable to encrypt given data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
