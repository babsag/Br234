.class Lcom/ca/mas/core/datasource/KeystoreDataSource$d;
.super Lcom/ca/mas/core/storage/StorageResultReceiver;
.source "KeystoreDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/datasource/KeystoreDataSource;->remove(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ca/mas/core/datasource/DataSourceCallback;

.field final synthetic c:Lcom/ca/mas/core/datasource/KeystoreDataSource;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/datasource/KeystoreDataSource;Landroid/os/Handler;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$d;->c:Lcom/ca/mas/core/datasource/KeystoreDataSource;

    iput-object p3, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$d;->b:Lcom/ca/mas/core/datasource/DataSourceCallback;

    invoke-direct {p0, p2}, Lcom/ca/mas/core/storage/StorageResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(Lcom/ca/mas/core/storage/StorageResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v0

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$d;->b:Lcom/ca/mas/core/datasource/DataSourceCallback;

    new-instance v1, Lcom/ca/mas/core/datasource/a;

    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {v1, p1}, Lcom/ca/mas/core/datasource/a;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/ca/mas/core/datasource/DataSourceCallback;->onError(Lcom/ca/mas/core/datasource/a;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ca/mas/core/datasource/KeystoreDataSource$d;->b:Lcom/ca/mas/core/datasource/DataSourceCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ca/mas/core/datasource/DataSourceCallback;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
