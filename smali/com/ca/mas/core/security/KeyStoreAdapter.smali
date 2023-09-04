.class public Lcom/ca/mas/core/security/KeyStoreAdapter;
.super Ljava/lang/Object;
.source "KeyStoreAdapter.java"

# interfaces
.implements Lcom/ca/mas/core/security/KeyStore;


# static fields
.field private static a:Lcom/ca/mas/core/security/KeyStoreAdapter;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/Method;

.field private i:Ljava/lang/reflect/Method;

.field private j:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    .line 1
    const-class v0, [B

    const-string v1, "put"

    const-class v2, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v3, "android.security.KeyStore"

    .line 2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v6, "android.security.KeyStore$State"

    .line 4
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->j:[Ljava/lang/Object;

    const-string v6, "state"

    new-array v7, v5, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->i:Ljava/lang/reflect/Method;

    const-string v6, "contains"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v2, v8, v5

    .line 6
    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->c:Ljava/lang/reflect/Method;

    const-string v6, "delete"

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v2, v8, v5

    .line 7
    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v6, 0x2

    const/4 v8, 0x4

    :try_start_1
    new-array v8, v8, [Ljava/lang/Class;

    aput-object v2, v8, v5

    aput-object v0, v8, v7

    .line 8
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-virtual {v3, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->e:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    :try_start_2
    new-array v6, v6, [Ljava/lang/Class;

    aput-object v2, v6, v5

    aput-object v0, v6, v7

    .line 9
    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->e:Ljava/lang/reflect/Method;

    :goto_0
    const-string v0, "get"

    new-array v1, v7, [Ljava/lang/Class;

    aput-object v2, v1, v5

    .line 10
    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->f:Ljava/lang/reflect/Method;

    const-string v0, "getLastError"

    new-array v1, v5, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->g:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v0, "list"

    new-array v1, v7, [Ljava/lang/Class;

    aput-object v2, v1, v5

    .line 12
    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->h:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    :try_start_4
    const-string v0, "saw"

    new-array v1, v7, [Ljava/lang/Class;

    aput-object v2, v1, v5

    .line 13
    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->h:Ljava/lang/reflect/Method;

    :goto_1
    const/4 v0, 0x0

    new-array v1, v5, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->b:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 15
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MAS"

    const-string v2, "Unable to create adapter for KeyStore access "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static declared-synchronized getKeyStore()Lcom/ca/mas/core/security/KeyStore;
    .locals 2

    const-class v0, Lcom/ca/mas/core/security/KeyStoreAdapter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ca/mas/core/security/KeyStoreAdapter;->a:Lcom/ca/mas/core/security/KeyStoreAdapter;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/ca/mas/core/security/KeyStoreAdapter;

    invoke-direct {v1}, Lcom/ca/mas/core/security/KeyStoreAdapter;-><init>()V

    sput-object v1, Lcom/ca/mas/core/security/KeyStoreAdapter;->a:Lcom/ca/mas/core/security/KeyStoreAdapter;

    .line 3
    :cond_0
    sget-object v1, Lcom/ca/mas/core/security/KeyStoreAdapter;->a:Lcom/ca/mas/core/security/KeyStoreAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getLastError()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isUnlocked()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->i:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->j:[Ljava/lang/Object;

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Ljava/lang/String;[B)Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->e:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->b:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v2

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    const/4 p1, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->e:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->b:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public saw(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/ca/mas/core/security/KeyStoreAdapter;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
