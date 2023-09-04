.class public Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;
.super Ljava/lang/Object;
.source "AccountManagerUtil.java"

# interfaces
.implements Lcom/ca/mas/core/storage/sharedstorage/StorageActions;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/accounts/AccountManager;

.field private c:Z

.field private d:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    iput-boolean p3, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->c:Z

    .line 5
    :try_start_0
    new-instance p3, Lcom/ca/mas/core/storage/sharedstorage/a;

    invoke-direct {p3}, Lcom/ca/mas/core/storage/sharedstorage/a;-><init>()V

    .line 6
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->b:Landroid/accounts/AccountManager;

    .line 7
    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 8
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 9
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    iget-object v5, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->b:Landroid/accounts/AccountManager;

    invoke-virtual {v5, v4}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {p3}, Lcom/ca/mas/core/context/UniqueIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    iput-object v4, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d:Landroid/accounts/Account;

    goto :goto_1

    .line 14
    :cond_0
    iput-object v3, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d:Landroid/accounts/Account;

    .line 15
    new-instance p3, Lcom/ca/mas/core/storage/sharedstorage/a;

    invoke-direct {p3}, Lcom/ca/mas/core/storage/sharedstorage/a;-><init>()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d:Landroid/accounts/Account;

    if-nez v0, :cond_3

    .line 17
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p2, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d:Landroid/accounts/Account;

    .line 18
    iget-object p1, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->b:Landroid/accounts/AccountManager;

    invoke-virtual {p3}, Lcom/ca/mas/core/context/UniqueIdentifier;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2, v3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Lcom/ca/mas/foundation/MASSharedStorageException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/ca/mas/foundation/MASSharedStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Account type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/ca/mas/core/storage/sharedstorage/MASAuthenticatorService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 3
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load meta-data from the service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MAS"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private b()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d:Landroid/accounts/Account;

    const-string v2, "mas_shared_storage_lookup_index"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private c(Ljava/util/Set;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method

.method private d(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p2

    :goto_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 5
    invoke-interface {p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountType"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to load meta-data from the service: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MAS"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->c:Z

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4
    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method

.method private g(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->b()Ljava/util/Set;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    :goto_0
    invoke-direct {p0, v1}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->c(Ljava/util/Set;)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d:Landroid/accounts/Account;

    const-string v2, "mas_shared_storage_lookup_index"

    invoke-virtual {p2, v1, v2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->g(Ljava/lang/String;Z)V

    return-void
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d:Landroid/accounts/Account;

    const-string v2, "mas_shared_storage_lookup_index"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeAll()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v1}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->delete(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v0, v1, v2, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->g(Ljava/lang/String;Z)V

    return-void
.end method

.method public save(Ljava/lang/String;[B)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->d:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-static {p2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, v1, v2, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/sharedstorage/AccountManagerUtil;->g(Ljava/lang/String;Z)V

    return-void
.end method
