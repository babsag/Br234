.class public Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;
.super Ljava/lang/Object;
.source "ScreenLockEncryptionProvider.java"

# interfaces
.implements Lcom/ca/mas/core/security/EncryptionProvider;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;

.field protected ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->ctx:Landroid/content/Context;

    const-string v1, "com.ca.mas.SCREEN_LOCK_SECRET"

    .line 3
    iput-object v1, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->a:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->b:Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;

    .line 5
    iput-object p1, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->ctx:Landroid/content/Context;

    .line 6
    new-instance v0, Lcom/ca/mas/core/security/b;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/security/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->b:Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->ctx:Landroid/content/Context;

    const-string v1, "com.ca.mas.SCREEN_LOCK_SECRET"

    .line 9
    iput-object v1, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->a:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->b:Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;

    .line 11
    iput-object p1, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->ctx:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->b:Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;

    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->getKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ca/mas/core/util/KeyUtilsSymmetric;->decrypt([BLjavax/crypto/SecretKey;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected deviceHasScreenLock()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->ctx:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    return v0

    .line 4
    :cond_1
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return v4

    :cond_2
    return v0

    :catch_0
    move-exception v1

    const-string v2, "MAS"

    const-string v3, "Exception determining if screen has a lock (pin/swipe/password), will be assuming it does not"

    .line 5
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public encrypt([B)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->getKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ca/mas/core/util/KeyUtilsSymmetric;->encrypt([BLjavax/crypto/SecretKey;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected getKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->deviceHasScreenLock()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MAS"

    const-string v1, "ScreenLockEncryptionProvider getKey there is no screen lock (pin/swipe/password), so the key will be deleted"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/ca/mas/core/util/KeyUtilsSymmetric;->deleteKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->b:Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;

    invoke-virtual {v1, p1}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->removeKey(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 5
    :goto_0
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const-string v1, "ScreenLockEncryptionProvider getKey there is no screen lock (pin/swipe/password), so the encryption key has been deleted"

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->b:Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;

    iget-object v0, p0, Lcom/ca/mas/core/security/ScreenLockEncryptionProvider;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->getKey(Ljava/lang/String;Z)Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method
