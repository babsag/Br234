.class public Lcom/ca/mas/core/security/MASSecretKeyProvider;
.super Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;
.source "MASSecretKeyProvider.java"


# instance fields
.field private b:Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/ca/mas/core/security/MASSecretKeyProvider;->c:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/ca/mas/core/security/MASSecretKeyProvider;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/security/MASSecretKeyProvider;->b:Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;

    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mas/core/security/MASSecretKeyProvider;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/ca/mas/core/security/MASSecretKeyProvider;->b:Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;

    :cond_0
    return-void
.end method


# virtual methods
.method deleteSecretKeyLocally(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/security/MASSecretKeyProvider;->c()V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/security/MASSecretKeyProvider;->b:Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->delete(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method getEncryptedSecretKey(Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/security/MASSecretKeyProvider;->c()V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/security/MASSecretKeyProvider;->b:Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method storeSecretKeyLocally(Ljava/lang/String;[B)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/security/MASSecretKeyProvider;->c()V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/security/MASSecretKeyProvider;->b:Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;

    invoke-virtual {v0, p1, p2}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->save(Ljava/lang/String;[B)V

    const/4 p1, 0x1

    return p1
.end method
