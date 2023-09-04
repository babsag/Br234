.class public Lcom/ca/mas/core/datasource/KeystoreDataSource;
.super Ljava/lang/Object;
.source "KeystoreDataSource.java"

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
.field public static final SHARE:Ljava/lang/String; = "share"


# instance fields
.field private context:Landroid/content/Context;

.field private converter:Lcom/ca/mas/core/datasource/DataConverter;

.field private isShared:Z

.field private storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/ca/mas/core/datasource/DataConverter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->converter:Lcom/ca/mas/core/datasource/DataConverter;

    .line 3
    iput-object p1, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->context:Landroid/content/Context;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "share"

    .line 4
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->isShared:Z

    .line 5
    :cond_0
    new-instance p2, Lcom/ca/mas/core/storage/implementation/MASStorageManager;

    invoke-direct {p2}, Lcom/ca/mas/core/storage/implementation/MASStorageManager;-><init>()V

    const-class v0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, p3

    const/4 p1, 0x1

    iget-boolean p3, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->isShared:Z

    .line 6
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v1, p1

    .line 7
    invoke-virtual {p2, v0, v1}, Lcom/ca/mas/core/storage/implementation/MASStorageManager;->getStorage(Ljava/lang/Class;Ljava/lang/Object;)Lcom/ca/mas/core/storage/Storage;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    iput-object p1, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageException;->getCode()I

    move-result p2

    const/16 p3, 0x99

    if-ne p2, p3, :cond_1

    :goto_0
    return-void

    .line 9
    :cond_1
    new-instance p2, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic access$000(Lcom/ca/mas/core/datasource/KeystoreDataSource;)Lcom/ca/mas/core/datasource/DataConverter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->converter:Lcom/ca/mas/core/datasource/DataConverter;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->readData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v1

    sget-object v2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-ne v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/storage/StorageException;

    .line 4
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageException;->getCode()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    throw p1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->converter:Lcom/ca/mas/core/datasource/DataConverter;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v1, p1, v0}, Lcom/ca/mas/core/datasource/DataConverter;->convert(Ljava/lang/Object;[B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public get(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/ca/mas/core/datasource/DataSourceCallback;",
            ")V"
        }
    .end annotation

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/ca/mas/core/datasource/KeystoreDataSource$c;

    invoke-interface {p2}, Lcom/ca/mas/core/datasource/DataSourceCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3, p2, p1}, Lcom/ca/mas/core/datasource/KeystoreDataSource$c;-><init>(Lcom/ca/mas/core/datasource/KeystoreDataSource;Landroid/os/Handler;Lcom/ca/mas/core/datasource/DataSourceCallback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->readData(Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getKeys(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
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
    iget-object p1, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    invoke-virtual {p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->getAllKeys()Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v0

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getKeys(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 2

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    new-instance v0, Lcom/ca/mas/core/datasource/KeystoreDataSource$f;

    invoke-interface {p2}, Lcom/ca/mas/core/datasource/DataSourceCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/ca/mas/core/datasource/KeystoreDataSource$f;-><init>(Lcom/ca/mas/core/datasource/KeystoreDataSource;Landroid/os/Handler;Lcom/ca/mas/core/datasource/DataSourceCallback;)V

    invoke-virtual {p1, v0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->getAllKeys(Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isReady()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    const/4 v1, 0x1

    const/16 v2, 0x99

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Lcom/ca/mas/core/storage/implementation/MASStorageManager;

    invoke-direct {v0}, Lcom/ca/mas/core/storage/implementation/MASStorageManager;-><init>()V

    const-class v4, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->context:Landroid/content/Context;

    aput-object v6, v5, v3

    iget-boolean v6, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->isShared:Z

    .line 3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    .line 4
    invoke-virtual {v0, v4, v5}, Lcom/ca/mas/core/storage/implementation/MASStorageManager;->getStorage(Ljava/lang/Class;Ljava/lang/Object;)Lcom/ca/mas/core/storage/Storage;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    iput-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lcom/ca/mas/core/storage/StorageException;->getCode()I

    move-result v1

    if-ne v1, v2, :cond_0

    return v3

    .line 6
    :cond_0
    new-instance v1, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {v1, v0}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    const-class v4, Lcom/ca/mas/core/datasource/KeystoreDataSource;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->readString(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v4

    sget-object v5, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-eq v4, v5, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/core/storage/StorageException;

    invoke-virtual {v0}, Lcom/ca/mas/core/storage/StorageException;->getCode()I

    move-result v0

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    return v3

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should has no value in storage."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    .line 11
    new-instance v1, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {v1, v0}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    instance-of v0, p2, [B

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {v0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->writeOrUpdateData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->writeOrUpdateString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object p2

    sget-object v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-eq p2, v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/storage/StorageException;

    throw p1

    :cond_2
    if-nez p2, :cond_3

    .line 7
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/datasource/KeystoreDataSource;->remove(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Value type not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/ca/mas/core/datasource/DataSourceCallback;",
            ")V"
        }
    .end annotation

    .line 10
    :try_start_0
    instance-of v0, p2, [B

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    new-instance v1, Lcom/ca/mas/core/datasource/KeystoreDataSource$a;

    invoke-interface {p3}, Lcom/ca/mas/core/datasource/DataSourceCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, p3}, Lcom/ca/mas/core/datasource/KeystoreDataSource$a;-><init>(Lcom/ca/mas/core/datasource/KeystoreDataSource;Landroid/os/Handler;Lcom/ca/mas/core/datasource/DataSourceCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->writeOrUpdateData(Ljava/lang/String;[BLcom/ca/mas/core/storage/StorageResultReceiver;)V

    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    new-instance v1, Lcom/ca/mas/core/datasource/KeystoreDataSource$b;

    invoke-interface {p3}, Lcom/ca/mas/core/datasource/DataSourceCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, p3}, Lcom/ca/mas/core/datasource/KeystoreDataSource$b;-><init>(Lcom/ca/mas/core/datasource/KeystoreDataSource;Landroid/os/Handler;Lcom/ca/mas/core/datasource/DataSourceCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->writeOrUpdateString(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V

    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Value type not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->deleteData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v0

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/core/storage/StorageException;

    invoke-virtual {v0}, Lcom/ca/mas/core/storage/StorageException;->getCode()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/storage/StorageException;

    throw p1
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/ca/mas/core/datasource/DataSourceCallback;",
            ")V"
        }
    .end annotation

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    check-cast p1, Ljava/lang/String;

    new-instance v1, Lcom/ca/mas/core/datasource/KeystoreDataSource$d;

    invoke-interface {p2}, Lcom/ca/mas/core/datasource/DataSourceCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lcom/ca/mas/core/datasource/KeystoreDataSource$d;-><init>(Lcom/ca/mas/core/datasource/KeystoreDataSource;Landroid/os/Handler;Lcom/ca/mas/core/datasource/DataSourceCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->deleteData(Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public removeAll(Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    invoke-virtual {p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->deleteAll()Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v0

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/core/storage/StorageException;

    invoke-virtual {v0}, Lcom/ca/mas/core/storage/StorageException;->getCode()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/storage/StorageException;

    throw p1
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public removeAll(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 2

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->storage:Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;

    new-instance v0, Lcom/ca/mas/core/datasource/KeystoreDataSource$e;

    invoke-interface {p2}, Lcom/ca/mas/core/datasource/DataSourceCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/ca/mas/core/datasource/KeystoreDataSource$e;-><init>(Lcom/ca/mas/core/datasource/KeystoreDataSource;Landroid/os/Handler;Lcom/ca/mas/core/datasource/DataSourceCallback;)V

    invoke-virtual {p1, v0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->deleteAll(Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public unlock()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.credentials.UNLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lcom/ca/mas/core/datasource/DataSourceException;

    const-string v2, "Error unlocking KeyStore storage"

    invoke-direct {v1, v2, v0}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
