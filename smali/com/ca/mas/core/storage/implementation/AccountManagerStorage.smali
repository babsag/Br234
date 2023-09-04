.class public Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;
.super Lcom/ca/mas/core/storage/Storage;
.source "AccountManagerStorage.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;
    }
.end annotation


# static fields
.field private static final KEYINDEX_COLUMN_NAME:Ljava/lang/String; = "lookup_index"

.field private static final MAX_DATA_SIZE:I = 0x3b9aca00

.field private static final MAX_KEY_SIZE:I = 0x3b9aca00

.field private static final SQLITE_MAX_LENGTH:I = 0x3b9aca00


# instance fields
.field private accountManager:Lcom/ca/mas/core/storage/implementation/a;

.field private mContext:Landroid/content/Context;

.field private mFormatter:Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;

.field private mPrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    const-string v0, "_"

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/Storage;-><init>(Ljava/lang/Object;)V

    const-string v1, ""

    .line 2
    iput-object v1, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mPrefix:Ljava/lang/String;

    const/16 v1, 0x6f

    const-string v2, "MAS"

    if-eqz p1, :cond_3

    .line 3
    :try_start_0
    instance-of v3, p1, [Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 4
    check-cast p1, [Ljava/lang/Object;
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    .line 5
    :try_start_1
    aget-object v3, p1, v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    .line 7
    :try_start_2
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SHARED_"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mPrefix:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    :try_start_3
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong shared input attribute, falling back to private"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mPrefix:Ljava/lang/String;

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/ca/mas/core/storage/implementation/a;->e(Landroid/content/Context;)Lcom/ca/mas/core/storage/implementation/a;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->accountManager:Lcom/ca/mas/core/storage/implementation/a;

    .line 11
    new-instance p1, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;-><init>(Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$a;)V

    iput-object p1, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mFormatter:Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;

    return-void

    :catch_1
    move-exception p1

    .line 12
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing Context input "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_2
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {p1, v1}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {p1, v1}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
    :try_end_3
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    .line 15
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "Failed to initialize storage"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :cond_4
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x6a

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    :catch_3
    move-exception p1

    .line 17
    throw p1
.end method

.method static synthetic access$300(Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mPrefix:Ljava/lang/String;

    return-object p0
.end method

.method private notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V
    .locals 2

    const-string v0, "MAS"

    if-nez p1, :cond_0

    .line 1
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "No AccountManagerStorage callback set."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/ca/mas/core/storage/StorageResultReceiver;->send(Lcom/ca/mas/core/storage/StorageResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-boolean p2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p2, :cond_1

    const-string p2, "AccountManagerStorage threw exception: "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private readAccountData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->accountManager:Lcom/ca/mas/core/storage/implementation/a;

    invoke-virtual {v0}, Lcom/ca/mas/core/storage/implementation/a;->b()Landroid/accounts/Account;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateAccountKeyIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->accountManager:Lcom/ca/mas/core/storage/implementation/a;

    invoke-virtual {v1}, Lcom/ca/mas/core/storage/implementation/a;->b()Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "lookup_index"

    .line 3
    invoke-direct {p0, p1, v2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->readAccountData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v3, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mFormatter:Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;->a(Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p3, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mFormatter:Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;

    invoke-static {p2, p1, v4}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;->b(Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v1, v2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validateInputs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const v0, 0x3b9aca00

    if-gt p1, v0, :cond_1

    :try_start_0
    const-string p1, "UTF-8"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    array-length p1, p1

    if-gt p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x72

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 5
    :catch_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x6d

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x71

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x66

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x65

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
.end method

.method private validateInputs(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const v0, 0x3b9aca00

    if-gt p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 10
    array-length p1, p2

    if-gt p1, v0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x72

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x66

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x71

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x65

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
.end method

.method private writeAccountData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->accountManager:Lcom/ca/mas/core/storage/implementation/a;

    invoke-virtual {v1}, Lcom/ca/mas/core/storage/implementation/a;->b()Landroid/accounts/Account;

    move-result-object v1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->updateAccountKeyIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1, p2, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1, p2, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->updateAccountKeyIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private writeData(Ljava/lang/String;[BI)Lcom/ca/mas/core/storage/StorageResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->WRITE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->validateInputs(Ljava/lang/String;[B)V

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->readAccountData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_1

    const/4 v4, 0x1

    if-eq p3, v4, :cond_0

    goto :goto_0

    :cond_0
    if-nez v3, :cond_2

    .line 6
    new-instance p3, Lcom/ca/mas/core/storage/StorageException;

    const/16 v3, 0x69

    invoke-direct {p3, v3}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 7
    new-instance p3, Lcom/ca/mas/core/storage/StorageException;

    const/16 v3, 0x68

    invoke-direct {p3, v3}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x0

    :goto_1
    if-nez p3, :cond_4

    .line 8
    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 9
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1, p2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->writeAccountData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 10
    sget-boolean p3, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p3, :cond_3

    const-string p3, "MAS"

    const-string v1, "Error writing data "

    invoke-static {p3, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :cond_3
    new-instance p3, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x6e

    invoke-direct {p3, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :cond_4
    :goto_2
    if-eqz p3, :cond_5

    .line 12
    sget-object p1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 13
    invoke-virtual {v0, p3}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_3

    .line 14
    :cond_5
    sget-object p2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p2}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 15
    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :goto_3
    return-object v0
.end method


# virtual methods
.method public deleteAll()Lcom/ca/mas/core/storage/StorageResult;
    .locals 8

    const-string v0, "MAS"

    .line 1
    new-instance v1, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->DELETE_ALL:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v1, v2}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    const/16 v2, 0x6e

    const/4 v3, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->getAllKeys()Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->deleteData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v6

    .line 6
    invoke-virtual {v6}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v6

    sget-object v7, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v6, v7, :cond_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 7
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to deleteData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " entries. Entries deleted: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    sget-boolean v6, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v6, :cond_2

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_2
    new-instance v6, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {v6, v3, v4, v2}, Lcom/ca/mas/core/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    move-object v4, v6

    goto :goto_2

    .line 10
    :cond_3
    sget-boolean v3, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " entries "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v3, v4

    const/4 v5, 0x0

    .line 11
    :goto_1
    sget-boolean v4, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "deleteAll failed "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_4
    new-instance v4, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {v4, v2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    .line 13
    sget-object v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v1, v0}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 14
    invoke-virtual {v1, v4}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_3

    .line 15
    :cond_6
    sget-object v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v1, v0}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :goto_3
    return-object v1
.end method

.method public deleteAll(Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->deleteAll()Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public deleteData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->DELETE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x3b9aca00

    if-gt v1, v2, :cond_3

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->readAccountData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 6
    new-instance v3, Lcom/ca/mas/core/storage/StorageException;

    const/16 v1, 0x69

    invoke-direct {v3, v1}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1, v3}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->writeAccountData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MAS"

    const-string v3, "Error writing data "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_1
    new-instance v3, Lcom/ca/mas/core/storage/StorageException;

    const/16 v1, 0x6e

    invoke-direct {v3, v1}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :goto_0
    if-eqz v3, :cond_2

    .line 10
    sget-object p1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 11
    invoke-virtual {v0, v3}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :goto_1
    return-object v0

    .line 14
    :cond_3
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x97

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 15
    :cond_4
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x65

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
.end method

.method public deleteData(Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->deleteData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 17
    invoke-direct {p0, p2, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public deleteString(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->deleteData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->DELETE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-virtual {p1, v0}, Lcom/ca/mas/core/storage/StorageResult;->setType(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    return-object p1
.end method

.method public deleteString(Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->deleteString(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public getAllKeys()Lcom/ca/mas/core/storage/StorageResult;
    .locals 5

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->GET_ALL_KEYS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mContext:Landroid/content/Context;

    const-string v3, "lookup_index"

    invoke-direct {p0, v2, v3}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->readAccountData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mFormatter:Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;->a(Lcom/ca/mas/core/storage/implementation/AccountManagerStorage$b;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v2, Lcom/ca/mas/core/storage/StorageException;

    const/16 v3, 0x6e

    invoke-direct {v2, v3}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :goto_0
    if-eqz v2, :cond_0

    .line 6
    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 7
    invoke-virtual {v0, v2}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_0
    sget-object v2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, v2}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public getAllKeys(Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->getAllKeys()Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public getType()Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;->TYPE_AMS:Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

    return-object v0
.end method

.method public readData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 1
    new-instance v1, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->READ:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v1, v2}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const v3, 0x3b9aca00

    if-gt v2, v3, :cond_4

    const/16 v2, 0x6e

    .line 3
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v4, p0, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->readAccountData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x69

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {p1, v2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1, p1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MAS"

    const-string v3, "Error Writing data "

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :cond_2
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {p1, v2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :goto_0
    if-eqz p1, :cond_3

    .line 12
    sget-object v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v1, v0}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 13
    invoke-virtual {v1, p1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_3
    sget-object p1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v1, p1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    :goto_1
    return-object v1

    .line 15
    :cond_4
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x97

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 16
    :cond_5
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x65

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
.end method

.method public readData(Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->readData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 18
    invoke-direct {p0, p2, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public readString(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0x3b9aca00

    if-gt v0, v1, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->readData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v0

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-eq v0, v1, :cond_1

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MAS"

    const-string v1, "UTF-8 decoding of the data failed, reverting to system default"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->READ_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-virtual {p1, v0}, Lcom/ca/mas/core/storage/StorageResult;->setType(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x97

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x65

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
.end method

.method public readString(Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->readString(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 11
    invoke-direct {p0, p2, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public updateData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->writeData(Ljava/lang/String;[BI)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->UPDATE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-virtual {p1, p2}, Lcom/ca/mas/core/storage/StorageResult;->setType(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    return-object p1
.end method

.method public updateData(Ljava/lang/String;[BLcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->updateData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 4
    invoke-direct {p0, p3, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->validateInputs(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->writeData(Ljava/lang/String;[BI)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->UPDATE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-virtual {p1, p2}, Lcom/ca/mas/core/storage/StorageResult;->setType(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x6f

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->updateString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 6
    invoke-direct {p0, p3, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public writeData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->writeData(Ljava/lang/String;[BI)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    return-object p1
.end method

.method public writeData(Ljava/lang/String;[BLcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->writeData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 18
    invoke-direct {p0, p3, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public writeOrUpdateData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->writeData(Ljava/lang/String;[BI)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->WRITE_OR_UPDATE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-virtual {p1, p2}, Lcom/ca/mas/core/storage/StorageResult;->setType(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    return-object p1
.end method

.method public writeOrUpdateData(Ljava/lang/String;[BLcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->writeOrUpdateData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 4
    invoke-direct {p0, p3, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public writeOrUpdateString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->validateInputs(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->writeOrUpdateData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->WRITE_OR_UPDATE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-virtual {p1, p2}, Lcom/ca/mas/core/storage/StorageResult;->setType(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x6f

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
.end method

.method public writeOrUpdateString(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->writeOrUpdateString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 6
    invoke-direct {p0, p3, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->validateInputs(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->writeData(Ljava/lang/String;[BI)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->WRITE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-virtual {p1, p2}, Lcom/ca/mas/core/storage/StorageResult;->setType(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x6f

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 6
    invoke-direct {p0, p3, p1}, Lcom/ca/mas/core/storage/implementation/AccountManagerStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method
