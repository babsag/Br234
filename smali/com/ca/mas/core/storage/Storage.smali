.class public abstract Lcom/ca/mas/core/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field protected static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteAll()Lcom/ca/mas/core/storage/StorageResult;
.end method

.method public abstract deleteAll(Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract deleteData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract deleteData(Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract deleteString(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract deleteString(Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract getAllKeys()Lcom/ca/mas/core/storage/StorageResult;
.end method

.method public abstract getAllKeys(Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract getType()Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;
.end method

.method public abstract readData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract readData(Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract readString(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract readString(Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract updateData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract updateData(Ljava/lang/String;[BLcom/ca/mas/core/storage/StorageResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract updateString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract updateString(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract writeData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract writeData(Ljava/lang/String;[BLcom/ca/mas/core/storage/StorageResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract writeOrUpdateData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract writeOrUpdateData(Ljava/lang/String;[BLcom/ca/mas/core/storage/StorageResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract writeOrUpdateString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract writeOrUpdateString(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method

.method public abstract writeString(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation
.end method
