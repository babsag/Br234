.class public Lcom/ca/mas/core/storage/implementation/MASStorageManager;
.super Ljava/lang/Object;
.source "MASStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStorage(Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;Ljava/lang/Object;)Lcom/ca/mas/core/storage/Storage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 17
    invoke-static {p1}, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;->a(Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/MASStorageManager;->getStorage(Ljava/lang/Class;Ljava/lang/Object;)Lcom/ca/mas/core/storage/Storage;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x6c

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
.end method

.method public getStorage(Ljava/lang/Class;Ljava/lang/Object;)Lcom/ca/mas/core/storage/Storage;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ca/mas/core/storage/Storage;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ca/mas/core/storage/Storage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    const-string v0, "MAS"

    const-string v1, " reason: "

    const-string v2, "Error instantiating the requested Storage - "

    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    array-length v4, v3

    if-lez v4, :cond_0

    const/4 v4, 0x0

    .line 7
    aget-object v3, v3, v4

    const/4 v5, 0x1

    .line 8
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v4

    .line 9
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ca/mas/core/storage/Storage;

    return-object p2

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/Exception;

    const-string v3, "No constructors found"

    invoke-direct {p2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-boolean p2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p2, :cond_1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_1
    new-instance p2, Lcom/ca/mas/core/storage/StorageException;

    const/4 v0, 0x0

    const/16 v1, 0x6c

    invoke-direct {p2, p1, v0, v1}, Lcom/ca/mas/core/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2

    :catch_1
    move-exception p2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/storage/StorageException;

    throw p1
.end method

.method public getStorage(Ljava/lang/String;Ljava/lang/Object;)Lcom/ca/mas/core/storage/Storage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ca/mas/core/storage/implementation/MASStorageManager;->getStorage(Ljava/lang/Class;Ljava/lang/Object;)Lcom/ca/mas/core/storage/Storage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error instantiating the requested Storage - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-boolean p2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "MAS"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    new-instance p2, Lcom/ca/mas/core/storage/StorageException;

    const/4 v0, 0x0

    const/16 v1, 0x6c

    invoke-direct {p2, p1, v0, v1}, Lcom/ca/mas/core/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method
