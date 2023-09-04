.class public Lcom/ca/mas/core/storage/MASSecureSharedStorage;
.super Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;
.source "MASSecureSharedStorage.java"


# instance fields
.field private f:Z

.field private g:Lcom/ca/mas/core/security/MASSecretKeyProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;-><init>(Ljava/lang/String;ZZ)V

    .line 2
    iput-boolean p2, p0, Lcom/ca/mas/core/storage/MASSecureSharedStorage;->f:Z

    .line 3
    new-instance p2, Lcom/ca/mas/core/security/MASSecretKeyProvider;

    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/ca/mas/core/security/MASSecretKeyProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ca/mas/core/storage/MASSecureSharedStorage;->g:Lcom/ca/mas/core/security/MASSecretKeyProvider;

    return-void
.end method


# virtual methods
.method public getBytes(Ljava/lang/String;)[B
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->preconditionCheck(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/MASSecureSharedStorage;->getEncryptionProvider()Lcom/ca/mas/core/security/EncryptionProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ca/mas/core/security/EncryptionProvider;->decrypt([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->delete(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method protected getEncryptionProvider()Lcom/ca/mas/core/security/EncryptionProvider;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/storage/MASSecureSharedStorage;->f:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/ca/mas/core/storage/MASSecureSharedStorage$a;

    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mas/core/storage/MASSecureSharedStorage;->g:Lcom/ca/mas/core/security/MASSecretKeyProvider;

    invoke-direct {v0, p0, v1, v2}, Lcom/ca/mas/core/storage/MASSecureSharedStorage$a;-><init>(Lcom/ca/mas/core/storage/MASSecureSharedStorage;Landroid/content/Context;Lcom/ca/mas/core/security/KeyStorageProvider;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->getEncryptionProvider()Lcom/ca/mas/core/security/EncryptionProvider;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->preconditionCheck(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "utf-8"

    .line 3
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/MASSecureSharedStorage;->getEncryptionProvider()Lcom/ca/mas/core/security/EncryptionProvider;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/ca/mas/core/security/EncryptionProvider;->decrypt([B)[B

    move-result-object v0

    .line 5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->delete(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->preconditionCheck(Ljava/lang/String;)V

    const-string v0, "utf-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/MASSecureSharedStorage;->getEncryptionProvider()Lcom/ca/mas/core/security/EncryptionProvider;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/ca/mas/core/security/EncryptionProvider;->encrypt([B)[B

    move-result-object p2

    const/4 v0, 0x2

    .line 4
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public save(Ljava/lang/String;[B)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->preconditionCheck(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/MASSecureSharedStorage;->getEncryptionProvider()Lcom/ca/mas/core/security/EncryptionProvider;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/ca/mas/core/security/EncryptionProvider;->encrypt([B)[B

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->save(Ljava/lang/String;[B)V

    return-void
.end method
