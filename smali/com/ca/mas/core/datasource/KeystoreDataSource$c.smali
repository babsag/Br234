.class Lcom/ca/mas/core/datasource/KeystoreDataSource$c;
.super Lcom/ca/mas/core/storage/StorageResultReceiver;
.source "KeystoreDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/datasource/KeystoreDataSource;->get(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ca/mas/core/datasource/DataSourceCallback;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/ca/mas/core/datasource/KeystoreDataSource;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/datasource/KeystoreDataSource;Landroid/os/Handler;Lcom/ca/mas/core/datasource/DataSourceCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$c;->d:Lcom/ca/mas/core/datasource/KeystoreDataSource;

    iput-object p3, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$c;->b:Lcom/ca/mas/core/datasource/DataSourceCallback;

    iput-object p4, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$c;->c:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/ca/mas/core/storage/StorageResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(Lcom/ca/mas/core/storage/StorageResult;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v0

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$c;->b:Lcom/ca/mas/core/datasource/DataSourceCallback;

    new-instance v1, Lcom/ca/mas/core/datasource/a;

    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {v1, p1}, Lcom/ca/mas/core/datasource/a;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/ca/mas/core/datasource/DataSourceCallback;->onError(Lcom/ca/mas/core/datasource/a;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$c;->d:Lcom/ca/mas/core/datasource/KeystoreDataSource;

    invoke-static {v0}, Lcom/ca/mas/core/datasource/KeystoreDataSource;->access$000(Lcom/ca/mas/core/datasource/KeystoreDataSource;)Lcom/ca/mas/core/datasource/DataConverter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$c;->b:Lcom/ca/mas/core/datasource/DataSourceCallback;

    iget-object v1, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$c;->d:Lcom/ca/mas/core/datasource/KeystoreDataSource;

    invoke-static {v1}, Lcom/ca/mas/core/datasource/KeystoreDataSource;->access$000(Lcom/ca/mas/core/datasource/KeystoreDataSource;)Lcom/ca/mas/core/datasource/DataConverter;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$c;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-interface {v1, v2, p1}, Lcom/ca/mas/core/datasource/DataConverter;->convert(Ljava/lang/Object;[B)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ca/mas/core/datasource/DataSourceCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$c;->b:Lcom/ca/mas/core/datasource/DataSourceCallback;

    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ca/mas/core/datasource/DataSourceCallback;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
