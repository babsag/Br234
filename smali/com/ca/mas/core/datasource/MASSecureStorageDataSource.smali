.class public Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;
.super Ljava/lang/Object;
.source "MASSecureStorageDataSource.java"

# interfaces
.implements Lcom/ca/mas/core/datasource/DataSource;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ca/mas/core/datasource/DataSource<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_NAME:Ljava/lang/String; = "account.name"

.field private static final CA_MAS:Ljava/lang/String; = "CA MAS Secure"


# instance fields
.field private context:Landroid/content/Context;

.field private converter:Lcom/ca/mas/core/datasource/DataConverter;

.field private storage:Lcom/ca/mas/core/storage/MASSecureSharedStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/ca/mas/core/datasource/DataConverter;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "share"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 3
    iput-object p3, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->converter:Lcom/ca/mas/core/datasource/DataConverter;

    .line 4
    iput-object p1, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->context:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/ca/mas/core/storage/MASSecureSharedStorage;

    invoke-direct {p0}, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->getAccountName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->converter:Lcom/ca/mas/core/datasource/DataConverter;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p1, p3, v2, p2, v1}, Lcom/ca/mas/core/storage/MASSecureSharedStorage;-><init>(Ljava/lang/String;ZZZ)V

    iput-object p1, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->storage:Lcom/ca/mas/core/storage/MASSecureSharedStorage;

    return-void
.end method

.method private getAccountName()Ljava/lang/String;
    .locals 5

    const-string v0, "account.name"

    const-string v1, "CA MAS Secure"

    .line 1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->context:Landroid/content/Context;

    const-class v4, Lcom/ca/mas/core/storage/sharedstorage/MASAuthenticatorService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    .line 6
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v2, "Account name is not provided, use %S"

    .line 7
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MAS"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method private isKeyString(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ljava/lang/String;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->converter:Lcom/ca/mas/core/datasource/DataConverter;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->storage:Lcom/ca/mas/core/storage/MASSecureSharedStorage;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/MASSecureSharedStorage;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->storage:Lcom/ca/mas/core/storage/MASSecureSharedStorage;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/MASSecureSharedStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MAS"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public get(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/ca/mas/core/datasource/DataSourceCallback;",
            ")V"
        }
    .end annotation

    .line 7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getKeys(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->storage:Lcom/ca/mas/core/storage/MASSecureSharedStorage;

    invoke-virtual {p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->getKeys()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getKeys(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->isKeyString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->remove(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    instance-of p1, p2, [B

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->storage:Lcom/ca/mas/core/storage/MASSecureSharedStorage;

    check-cast p2, [B

    invoke-virtual {p1, v0, p2}, Lcom/ca/mas/core/storage/MASSecureSharedStorage;->save(Ljava/lang/String;[B)V

    goto :goto_0

    .line 6
    :cond_2
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->storage:Lcom/ca/mas/core/storage/MASSecureSharedStorage;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/ca/mas/core/storage/MASSecureSharedStorage;->save(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 8
    :cond_3
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const-string p2, "Value type not supported"

    if-eqz p1, :cond_4

    const-string p1, "MAS"

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/ca/mas/core/datasource/DataSourceCallback;",
            ")V"
        }
    .end annotation

    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->isKeyString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->storage:Lcom/ca/mas/core/storage/MASSecureSharedStorage;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/ca/mas/core/datasource/DataSourceCallback;",
            ")V"
        }
    .end annotation

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;->storage:Lcom/ca/mas/core/storage/MASSecureSharedStorage;

    invoke-virtual {p1}, Lcom/ca/mas/core/storage/sharedstorage/MASSharedStorage;->removeAll()V

    return-void
.end method

.method public removeAll(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public unlock()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
