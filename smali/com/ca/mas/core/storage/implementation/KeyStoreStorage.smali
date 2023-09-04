.class public final Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;
.super Lcom/ca/mas/core/storage/Storage;
.source "KeyStoreStorage.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final MAX_DATA_SIZE:I = 0x8000

.field private static MAX_KEY_SIZE:I = 0x78


# instance fields
.field private ks:Lcom/ca/mas/core/security/KeyStore;

.field private prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    const-string v0, "_"

    const-string v1, "MAS"

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/Storage;-><init>(Ljava/lang/Object;)V

    const-string v2, ""

    .line 2
    iput-object v2, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;

    const/16 v2, 0x6f

    if-eqz p1, :cond_3

    .line 3
    :try_start_0
    instance-of v3, p1, [Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 4
    check-cast p1, [Ljava/lang/Object;
    :try_end_0
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    .line 5
    :try_start_1
    aget-object v3, p1, v3

    check-cast v3, Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    .line 6
    :try_start_2
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SHARED_"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    :try_start_3
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "Wrong shared input attribute, falling back to private."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;

    .line 9
    :goto_1
    invoke-static {}, Lcom/ca/mas/core/security/KeyStoreAdapter;->getKeyStore()Lcom/ca/mas/core/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    return-void

    :catch_1
    move-exception p1

    .line 10
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Missing Context input."

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :cond_2
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {p1, v2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {p1, v2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
    :try_end_3
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    .line 13
    throw p1
.end method

.method private checkForError(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    if-nez p1, :cond_3

    .line 1
    iget-object p1, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    invoke-interface {p1}, Lcom/ca/mas/core/security/KeyStore;->getLastError()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    invoke-interface {p1}, Lcom/ca/mas/core/security/KeyStore;->isUnlocked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x99

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 4
    :cond_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->rcToStr(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    new-instance v0, Lcom/ca/mas/core/storage/StorageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyStore error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x6e

    invoke-direct {v0, p1, v1, v2}, Lcom/ca/mas/core/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_3
    return-void
.end method

.method private isReady(Lcom/ca/mas/core/storage/StorageResult;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    invoke-interface {v1}, Lcom/ca/mas/core/security/KeyStore;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {p1, v1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 3
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v2, 0x99

    invoke-direct {v1, v2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 4
    :catch_0
    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {p1, v1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 5
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    return v0
.end method

.method private notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V
    .locals 2

    const-string v0, "MAS"

    if-nez p1, :cond_0

    .line 1
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "No KeyStoreStorage callback set."

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

    const-string p2, "KeyStoreStorage threw exception: "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private rcToStr(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown RC"

    return-object p1

    :pswitch_0
    const-string p1, "WRONG_PASSWORD"

    return-object p1

    :pswitch_1
    const-string p1, "UNDEFINED_ACTION"

    return-object p1

    :pswitch_2
    const-string p1, "VALUE_CORRUPTED"

    return-object p1

    :pswitch_3
    const-string p1, "KEY_NOT_FOUND"

    return-object p1

    :pswitch_4
    const-string p1, "PERMISSION_DENIED"

    return-object p1

    :pswitch_5
    const-string p1, "PROTOCOL_ERROR"

    return-object p1

    :pswitch_6
    const-string p1, "SYSTEM_ERROR"

    return-object p1

    :pswitch_7
    const-string p1, "UNINITIALIZED"

    return-object p1

    :pswitch_8
    const-string p1, "LOCKED"

    return-object p1

    :pswitch_9
    const-string p1, "NO_ERROR"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sanitizeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private validateInputs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 8
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->sanitizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sget v0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->MAX_KEY_SIZE:I

    if-gt p1, v0, :cond_2

    if-eqz p2, :cond_1

    :try_start_0
    const-string p1, "UTF-8"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    array-length p1, p1

    const p2, 0x8000

    if-gt p1, p2, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x98

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 13
    :catch_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x6d

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x66

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x97

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 16
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

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->sanitizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sget v0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->MAX_KEY_SIZE:I

    if-gt p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 3
    array-length p1, p2

    const p2, 0x8000

    if-gt p1, p2, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x98

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x66

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x97

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 7
    :cond_3
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x65

    invoke-direct {p1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public deleteAll()Lcom/ca/mas/core/storage/StorageResult;
    .locals 9

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->DELETE_ALL:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    const/16 v1, 0x6e

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->getAllKeys()Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ca/mas/core/storage/StorageResult;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4
    :try_start_2
    iget-object v6, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/ca/mas/core/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "MAS"

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 5
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to deleteData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " entries. Entries deleted: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    sget-boolean v6, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v6, :cond_2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    new-instance v3, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {v3, v2, v5, v1}, Lcom/ca/mas/core/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    move-object v5, v3

    goto :goto_1

    .line 8
    :cond_3
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " entries "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move v2, v4

    .line 9
    :catch_2
    new-instance v5, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {v5, v1}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    move v4, v2

    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 10
    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 11
    invoke-virtual {v0, v5}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_5
    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :goto_2
    return-object v0
.end method

.method public deleteAll(Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->deleteAll()Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

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

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->MAX_KEY_SIZE:I

    if-gt v1, v2, :cond_4

    .line 3
    invoke-direct {p0, v0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->isReady(Lcom/ca/mas/core/storage/StorageResult;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->readData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v2

    sget-object v3, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-eq v2, v3, :cond_1

    .line 5
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v2, 0x69

    invoke-direct {v1, v2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->sanitizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    invoke-interface {v2, p1}, Lcom/ca/mas/core/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    invoke-direct {p0, v2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->checkForError(Z)V
    :try_end_1
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 9
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAS"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :goto_0
    if-eqz v1, :cond_3

    .line 11
    sget-object p1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 14
    iget-object v1, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :goto_1
    return-object v0

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

.method public deleteData(Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->deleteData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 18
    invoke-direct {p0, p2, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

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
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->deleteData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

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
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->deleteString(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public getAllKeys()Lcom/ca/mas/core/storage/StorageResult;
    .locals 8

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->GET_ALL_KEYS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->isReady(Lcom/ca/mas/core/storage/StorageResult;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    const-string v4, ""

    invoke-interface {v3, v4}, Lcom/ca/mas/core/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5
    array-length v4, v3

    if-lez v4, :cond_2

    .line 6
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 7
    iget-object v7, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8
    iget-object v7, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :catch_0
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v3, 0x6e

    invoke-direct {v1, v3}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :cond_2
    if-eqz v1, :cond_3

    .line 10
    sget-object v2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, v2}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_3
    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 13
    invoke-virtual {v0, v2}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

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

    .line 14
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->getAllKeys()Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public getType()Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;->TYPE_KEYSTORE:Lcom/ca/mas/core/storage/implementation/MASStorageManager$MASStorageType;

    return-object v0
.end method

.method public readData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->READ:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    if-eqz p1, :cond_4

    .line 2
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->sanitizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->MAX_KEY_SIZE:I

    if-gt v1, v2, :cond_3

    .line 4
    invoke-direct {p0, v0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->isReady(Lcom/ca/mas/core/storage/StorageResult;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    invoke-interface {v2, p1}, Lcom/ca/mas/core/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p1, 0x69

    invoke-direct {v1, p1}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, v2}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p1, 0x6e

    invoke-direct {v1, p1}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :goto_0
    if-eqz v1, :cond_2

    .line 10
    sget-object p1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :cond_2
    return-object v0

    .line 12
    :cond_3
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x97

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1

    .line 13
    :cond_4
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

    .line 14
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->readData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 15
    invoke-direct {p0, p2, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public readString(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->READ_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    if-eqz p1, :cond_5

    .line 2
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->sanitizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->MAX_KEY_SIZE:I

    if-gt v1, v2, :cond_4

    .line 4
    invoke-direct {p0, v0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->isReady(Lcom/ca/mas/core/storage/StorageResult;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    invoke-interface {v2, p1}, Lcom/ca/mas/core/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p1, 0x69

    invoke-direct {v1, p1}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    goto :goto_1

    .line 7
    :cond_1
    sget-object v2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, v2}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    sget-boolean v3, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MAS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The data is not UTF-8 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 11
    :goto_0
    invoke-virtual {v0, v2}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 12
    :catch_1
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p1, 0x6e

    invoke-direct {v1, p1}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :goto_1
    if-eqz v1, :cond_3

    .line 13
    sget-object p1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :cond_3
    return-object v0

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

.method public readString(Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->readString(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 18
    invoke-direct {p0, p2, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public updateData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->validateInputs(Ljava/lang/String;[B)V

    .line 2
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->UPDATE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->isReady(Lcom/ca/mas/core/storage/StorageResult;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->readData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v2

    sget-object v3, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-ne v2, v3, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->sanitizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    invoke-interface {v2, p1, p2}, Lcom/ca/mas/core/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-direct {p0, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->checkForError(Z)V
    :try_end_1
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 8
    :cond_1
    :try_start_2
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x69

    invoke-direct {v1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 9
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "MAS"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x6e

    invoke-direct {v1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :goto_0
    if-eqz v1, :cond_3

    .line 11
    sget-object p1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    sget-object p2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p2}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 14
    iget-object p2, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public updateData(Ljava/lang/String;[BLcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->updateData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 16
    invoke-direct {p0, p3, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->validateInputs(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->UPDATE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->isReady(Lcom/ca/mas/core/storage/StorageResult;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->readData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v2

    sget-object v3, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-ne v2, v3, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->sanitizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    const-string v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-interface {v2, p1, p2}, Lcom/ca/mas/core/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-direct {p0, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->checkForError(Z)V
    :try_end_1
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 8
    :cond_1
    :try_start_2
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x69

    invoke-direct {v1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 9
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update string error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "MAS"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x6e

    invoke-direct {v1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :goto_0
    if-eqz v1, :cond_3

    .line 11
    sget-object p1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    sget-object p2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p2}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 14
    iget-object p2, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->updateString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 16
    invoke-direct {p0, p3, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public writeData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->validateInputs(Ljava/lang/String;[B)V

    .line 2
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->WRITE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->isReady(Lcom/ca/mas/core/storage/StorageResult;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->readData(Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/core/storage/StorageResult;->getStatus()Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    move-result-object v2

    sget-object v3, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    if-ne v2, v3, :cond_1

    .line 5
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x68

    invoke-direct {v1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->sanitizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    invoke-interface {v2, p1, p2}, Lcom/ca/mas/core/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    invoke-direct {p0, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->checkForError(Z)V
    :try_end_1
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 9
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MAS"

    const-string v2, "KeyStoreStorage write error."

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :cond_2
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    const/16 p2, 0x6e

    invoke-direct {v1, p2}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :goto_0
    if-eqz v1, :cond_3

    .line 11
    sget-object p1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    sget-object p2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p2}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 14
    iget-object p2, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public writeData(Ljava/lang/String;[BLcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->writeData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 16
    invoke-direct {p0, p3, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public writeOrUpdateData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->validateInputs(Ljava/lang/String;[B)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->sanitizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->WRITE_OR_UPDATE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    invoke-interface {v1, p1, p2}, Lcom/ca/mas/core/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-direct {p0, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->checkForError(Z)V
    :try_end_1
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 6
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write/update error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "MAS"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    new-instance p2, Lcom/ca/mas/core/storage/StorageException;

    const/16 v1, 0x6e

    invoke-direct {p2, v1}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 8
    sget-object p1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    sget-object p2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p2}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 11
    iget-object p2, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public writeOrUpdateData(Ljava/lang/String;[BLcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->writeOrUpdateData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 13
    invoke-direct {p0, p3, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method

.method public writeOrUpdateString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->validateInputs(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->sanitizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/ca/mas/core/storage/StorageResult;

    sget-object v1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->WRITE_OR_UPDATE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-direct {v0, v1}, Lcom/ca/mas/core/storage/StorageResult;-><init>(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->ks:Lcom/ca/mas/core/security/KeyStore;

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/ca/mas/core/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-direct {p0, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->checkForError(Z)V
    :try_end_1
    .catch Lcom/ca/mas/core/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 6
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write/update string error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "MAS"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    new-instance p2, Lcom/ca/mas/core/storage/StorageException;

    const/16 v1, 0x6e

    invoke-direct {p2, v1}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 8
    sget-object p1, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->FAILURE:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    sget-object p2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;->SUCCESS:Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;

    invoke-virtual {v0, p2}, Lcom/ca/mas/core/storage/StorageResult;->setStatus(Lcom/ca/mas/core/storage/StorageResult$StorageOperationStatus;)V

    .line 11
    iget-object p2, p0, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->prefix:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/storage/StorageResult;->setData(Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public writeOrUpdateString(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/core/storage/StorageResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->writeOrUpdateString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 13
    invoke-direct {p0, p3, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

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
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->validateInputs(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->writeData(Ljava/lang/String;[B)Lcom/ca/mas/core/storage/StorageResult;

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

    const/16 p2, 0x6d

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
    invoke-virtual {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/core/storage/StorageResult;

    move-result-object p1

    .line 6
    sget-object p2, Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;->WRITE_STRING:Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;

    invoke-virtual {p1, p2}, Lcom/ca/mas/core/storage/StorageResult;->setType(Lcom/ca/mas/core/storage/StorageResult$StorageOperationType;)V

    .line 7
    invoke-direct {p0, p3, p1}, Lcom/ca/mas/core/storage/implementation/KeyStoreStorage;->notifyCallback(Lcom/ca/mas/core/storage/StorageResultReceiver;Lcom/ca/mas/core/storage/StorageResult;)V

    return-void
.end method
