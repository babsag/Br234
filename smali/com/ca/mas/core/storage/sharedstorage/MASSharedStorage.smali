.class public Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;
.super Ljava/lang/Object;
.source "MASSharedStorage.java"


# instance fields
.field private a:Lcom/ca/mas/core/storage/sharedstorage/StorageActions;

.field private b:Z

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0, v0}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->e:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->b:Z

    .line 6
    iput-boolean p3, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->c:Z

    .line 7
    invoke-direct {p0}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->a()Lcom/ca/mas/core/storage/sharedstorage/StorageActions;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->a:Lcom/ca/mas/core/storage/sharedstorage/StorageActions;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MAS SDK has not been initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Account name cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Lcom/ca/mas/core/storage/sharedstorage/StorageActions;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;

    iget-object v1, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->e:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->b:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/ca/mas/core/storage/sharedstorage/SharedPreferencesUtil;

    iget-object v1, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/sharedstorage/SharedPreferencesUtil;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->preconditionCheck(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->a:Lcom/ca/mas/core/storage/sharedstorage/StorageActions;

    invoke-interface {v0, p1}, Lcom/ca/mas/core/storage/sharedstorage/StorageActions;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->preconditionCheck(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->a:Lcom/ca/mas/core/storage/sharedstorage/StorageActions;

    invoke-interface {v0, p1}, Lcom/ca/mas/core/storage/sharedstorage/StorageActions;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected getEncryptionProvider()Lcom/ca/mas/core/security/EncryptionProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage$a;

    invoke-direct {v0, p0}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage$a;-><init>(Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;)V

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->a:Lcom/ca/mas/core/storage/sharedstorage/StorageActions;

    invoke-interface {v0}, Lcom/ca/mas/core/storage/sharedstorage/StorageActions;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->preconditionCheck(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->a:Lcom/ca/mas/core/storage/sharedstorage/StorageActions;

    invoke-interface {v0, p1}, Lcom/ca/mas/core/storage/sharedstorage/StorageActions;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected preconditionCheck(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Data key should be a String that cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The SDK should be initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->a:Lcom/ca/mas/core/storage/sharedstorage/StorageActions;

    invoke-interface {v0}, Lcom/ca/mas/core/storage/sharedstorage/StorageActions;->removeAll()V

    return-void
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->preconditionCheck(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->a:Lcom/ca/mas/core/storage/sharedstorage/StorageActions;

    invoke-interface {v0, p1, p2}, Lcom/ca/mas/core/storage/sharedstorage/StorageActions;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public save(Ljava/lang/String;[B)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->preconditionCheck(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->a:Lcom/ca/mas/core/storage/sharedstorage/StorageActions;

    invoke-interface {v0, p1, p2}, Lcom/ca/mas/core/storage/sharedstorage/StorageActions;->save(Ljava/lang/String;[B)V

    return-void
.end method
