.class public Lcom/ca/mas/core/datasource/LocalStoreDataSource;
.super Ljava/lang/Object;
.source "LocalStoreDataSource.java"

# interfaces
.implements Lcom/ca/mas/core/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;,
        Lcom/ca/mas/core/datasource/LocalStoreDataSource$LocalStorageContract;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ca/mas/core/datasource/DataSource<",
        "Lcom/ca/mas/core/datasource/LocalStoreKey;",
        "Lcom/ca/mas/core/datasource/LocalStoreEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/ca/mas/core/datasource/DataConverter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->b:Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->a:Landroid/content/Context;

    .line 4
    :try_start_0
    new-instance p1, Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;

    iget-object p2, p0, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->a:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;-><init>(Lcom/ca/mas/core/datasource/LocalStoreDataSource;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->b:Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;

    .line 5
    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/ca/mas/core/datasource/DataSourceException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private a(Lcom/ca/mas/core/datasource/LocalStoreKey;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/core/datasource/LocalStoreKey;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreKey;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, " =? "

    if-eqz v2, :cond_0

    const-string v2, "key"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v4, " AND "

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreKey;->getSegment()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreKey;->getSegment()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "segment"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreKey;->getSegment()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreKey;->getCreatedBy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreKey;->getCreatedBy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "created_by"

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreKey;->getCreatedBy()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_4
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public get(Lcom/ca/mas/core/datasource/LocalStoreKey;)Lcom/ca/mas/core/datasource/LocalStoreEntity;
    .locals 12
    .param p1    # Lcom/ca/mas/core/datasource/LocalStoreKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "content_type"

    const-string v1, "value"

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->b:Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;

    invoke-virtual {v2}, Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 4
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-direct {p0, p1}, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->a(Lcom/ca/mas/core/datasource/LocalStoreKey;)Landroid/util/Pair;

    move-result-object p1

    const-string v4, "LocalStore"

    .line 6
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    new-instance p1, Lcom/ca/mas/core/datasource/LocalStoreEntity;

    invoke-direct {p1, v0, v1}, Lcom/ca/mas/core/datasource/LocalStoreEntity;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Lcom/ca/mas/core/datasource/DataSourceException;

    const-string v1, "Error in get() "

    invoke-direct {v0, v1, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/ca/mas/core/datasource/LocalStoreKey;

    invoke-virtual {p0, p1}, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->get(Lcom/ca/mas/core/datasource/LocalStoreKey;)Lcom/ca/mas/core/datasource/LocalStoreEntity;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/ca/mas/core/datasource/LocalStoreKey;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0

    .line 14
    new-instance p1, Lcom/ca/mas/core/datasource/DataSourceException;

    const-string p2, "Not Implemented"

    invoke-direct {p1, p2}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/ca/mas/core/datasource/LocalStoreKey;

    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->get(Lcom/ca/mas/core/datasource/LocalStoreKey;Lcom/ca/mas/core/datasource/DataSourceCallback;)V

    return-void
.end method

.method public getKeys(Ljava/lang/Object;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/ca/mas/core/datasource/LocalStoreKey;",
            ">;"
        }
    .end annotation

    const-string v0, "created_by"

    const-string v1, "segment"

    const-string v2, "key"

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->b:Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 3
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v7

    .line 4
    check-cast p1, Lcom/ca/mas/core/datasource/LocalStoreKey;

    invoke-direct {p0, p1}, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->a(Lcom/ca/mas/core/datasource/LocalStoreKey;)Landroid/util/Pair;

    move-result-object p1

    const-string v6, "LocalStore"

    .line 5
    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 9
    new-instance v4, Lcom/ca/mas/core/datasource/LocalStoreKey;

    .line 10
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/ca/mas/core/datasource/LocalStoreKey;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 13
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v3

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Lcom/ca/mas/core/datasource/DataSourceException;

    const-string v1, "error getKeys()"

    invoke-direct {v0, v1, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getKeys(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0

    return-void
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(Lcom/ca/mas/core/datasource/LocalStoreKey;Lcom/ca/mas/core/datasource/LocalStoreEntity;)V
    .locals 4
    .param p1    # Lcom/ca/mas/core/datasource/LocalStoreKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ca/mas/core/datasource/LocalStoreEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->b:Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;

    invoke-virtual {v0}, Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    .line 5
    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreKey;->getCreatedBy()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "created_by"

    if-nez v2, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreKey;->getCreatedBy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "segment"

    .line 9
    invoke-virtual {p1}, Lcom/ca/mas/core/datasource/LocalStoreKey;->getSegment()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "value"

    .line 10
    invoke-virtual {p2}, Lcom/ca/mas/core/datasource/LocalStoreEntity;->getData()[B

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p1, "content_type"

    .line 11
    invoke-virtual {p2}, Lcom/ca/mas/core/datasource/LocalStoreEntity;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "last_updated_date"

    .line 12
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "LocalStore"

    const/4 p2, 0x0

    const/4 v2, 0x5

    .line 13
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    return-void

    .line 14
    :cond_1
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x6e

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lcom/ca/mas/core/datasource/DataSourceException;

    const-string v0, "Error in put() "

    invoke-direct {p2, v0, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public put(Lcom/ca/mas/core/datasource/LocalStoreKey;Lcom/ca/mas/core/datasource/LocalStoreEntity;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0

    .line 16
    new-instance p1, Lcom/ca/mas/core/datasource/DataSourceException;

    const-string p2, "Not Implemented"

    invoke-direct {p1, p2}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/ca/mas/core/datasource/LocalStoreKey;

    check-cast p2, Lcom/ca/mas/core/datasource/LocalStoreEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->put(Lcom/ca/mas/core/datasource/LocalStoreKey;Lcom/ca/mas/core/datasource/LocalStoreEntity;)V

    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/ca/mas/core/datasource/LocalStoreKey;

    check-cast p2, Lcom/ca/mas/core/datasource/LocalStoreEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->put(Lcom/ca/mas/core/datasource/LocalStoreKey;Lcom/ca/mas/core/datasource/LocalStoreEntity;Lcom/ca/mas/core/datasource/DataSourceCallback;)V

    return-void
.end method

.method public remove(Lcom/ca/mas/core/datasource/LocalStoreKey;)V
    .locals 3
    .param p1    # Lcom/ca/mas/core/datasource/LocalStoreKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->get(Lcom/ca/mas/core/datasource/LocalStoreKey;)Lcom/ca/mas/core/datasource/LocalStoreEntity;

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->b:Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;

    invoke-virtual {v0}, Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5
    invoke-direct {p0, p1}, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->a(Lcom/ca/mas/core/datasource/LocalStoreKey;)Landroid/util/Pair;

    move-result-object p1

    const-string v1, "LocalStore"

    .line 6
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x6e

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lcom/ca/mas/core/datasource/DataSourceException;

    const-string v1, "Error in remove() "

    invoke-direct {v0, v1, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public remove(Lcom/ca/mas/core/datasource/LocalStoreKey;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0

    .line 9
    new-instance p1, Lcom/ca/mas/core/datasource/DataSourceException;

    const-string p2, "Not Implemented"

    invoke-direct {p1, p2}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/ca/mas/core/datasource/LocalStoreKey;

    invoke-virtual {p0, p1}, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->remove(Lcom/ca/mas/core/datasource/LocalStoreKey;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/ca/mas/core/datasource/LocalStoreKey;

    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->remove(Lcom/ca/mas/core/datasource/LocalStoreKey;Lcom/ca/mas/core/datasource/DataSourceCallback;)V

    return-void
.end method

.method public removeAll(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->b:Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;

    invoke-virtual {v0}, Lcom/ca/mas/core/datasource/LocalStoreDataSource$a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    check-cast p1, Lcom/ca/mas/core/datasource/LocalStoreKey;

    invoke-direct {p0, p1}, Lcom/ca/mas/core/datasource/LocalStoreDataSource;->a(Lcom/ca/mas/core/datasource/LocalStoreKey;)Landroid/util/Pair;

    move-result-object p1

    const-string v1, "LocalStore"

    .line 3
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x6e

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lcom/ca/mas/core/datasource/DataSourceException;

    const-string v1, "Error in removeAll() "

    invoke-direct {v0, v1, p1}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public removeAll(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .locals 0

    .line 6
    new-instance p1, Lcom/ca/mas/core/datasource/DataSourceException;

    const-string p2, "Not Implemented"

    invoke-direct {p1, p2}, Lcom/ca/mas/core/datasource/DataSourceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unlock()V
    .locals 0

    return-void
.end method
