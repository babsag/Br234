.class public Lbr/com/topaz/v/h;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/v/h$a;
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lbr/com/topaz/l/f0;

.field private final d:Lbr/com/topaz/u0/c;

.field private final e:Lbr/com/topaz/u0/a;

.field private final f:Lbr/com/topaz/n/a;

.field private final g:Lbr/com/topaz/m0/d;

.field private final h:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private final i:Lbr/com/topaz/v/b;

.field private final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private l:Lbr/com/topaz/v/h$a;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lbr/com/topaz/v/g;

.field private q:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/u0/c;Lbr/com/topaz/u0/a;Lbr/com/topaz/n/a;Lbr/com/topaz/m0/d;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/v/b;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbr/com/topaz/s/a;",
            "Landroid/content/Context;",
            "Lbr/com/topaz/l/f0;",
            "Lbr/com/topaz/u0/c;",
            "Lbr/com/topaz/u0/a;",
            "Lbr/com/topaz/n/a;",
            "Lbr/com/topaz/m0/d;",
            "Lbr/com/topaz/heartbeat/utils/OFDException;",
            "Lbr/com/topaz/v/b;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/v/h;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbr/com/topaz/v/h;->o:Z

    iput-object p2, p0, Lbr/com/topaz/v/h;->b:Landroid/content/Context;

    iput-object p3, p0, Lbr/com/topaz/v/h;->c:Lbr/com/topaz/l/f0;

    iput-object p4, p0, Lbr/com/topaz/v/h;->d:Lbr/com/topaz/u0/c;

    iput-object p5, p0, Lbr/com/topaz/v/h;->e:Lbr/com/topaz/u0/a;

    iput-object p6, p0, Lbr/com/topaz/v/h;->f:Lbr/com/topaz/n/a;

    iput-object p7, p0, Lbr/com/topaz/v/h;->g:Lbr/com/topaz/m0/d;

    iput-object p8, p0, Lbr/com/topaz/v/h;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p9, p0, Lbr/com/topaz/v/h;->i:Lbr/com/topaz/v/b;

    iput-object p10, p0, Lbr/com/topaz/v/h;->j:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic a(Lbr/com/topaz/v/i;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/v/h;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/v/h;->f:Lbr/com/topaz/n/a;

    invoke-interface {v0}, Lbr/com/topaz/n/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/topaz/v/i;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/v/h;->f:Lbr/com/topaz/n/a;

    invoke-interface {v0}, Lbr/com/topaz/n/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/topaz/v/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/v/h;->f:Lbr/com/topaz/n/a;

    invoke-interface {v0}, Lbr/com/topaz/n/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/topaz/v/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/v/h;->f:Lbr/com/topaz/n/a;

    invoke-interface {v0}, Lbr/com/topaz/n/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/topaz/v/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/v/h;->i:Lbr/com/topaz/v/b;

    invoke-virtual {v0, p1}, Lbr/com/topaz/v/b;->a(Lbr/com/topaz/v/i;)V

    iget-object p1, p0, Lbr/com/topaz/v/h;->q:Landroid/os/Looper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_0
    iget-object p1, p0, Lbr/com/topaz/v/h;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lbr/com/topaz/v/e;->b:Lbr/com/topaz/v/e;

    invoke-virtual {v1}, Lbr/com/topaz/v/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lbr/com/topaz/v/e;->c:Lbr/com/topaz/v/e;

    invoke-virtual {v2}, Lbr/com/topaz/v/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Lbr/com/topaz/v/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lbr/com/topaz/v/h;->p:Lbr/com/topaz/v/g;

    invoke-virtual {v2}, Lbr/com/topaz/v/g;->a()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lbr/com/topaz/v/h;->m:I

    sget-object v1, Lbr/com/topaz/v/e;->c:Lbr/com/topaz/v/e;

    invoke-virtual {v1}, Lbr/com/topaz/v/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lbr/com/topaz/v/h;->n:I

    invoke-static {}, Lbr/com/topaz/v/c;->values()[Lbr/com/topaz/v/c;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    iget v5, p0, Lbr/com/topaz/v/h;->n:I

    invoke-virtual {v4}, Lbr/com/topaz/v/c;->a()I

    move-result v4

    if-ne v5, v4, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    iput v0, p0, Lbr/com/topaz/v/h;->n:I

    :cond_3
    iget p1, p0, Lbr/com/topaz/v/h;->m:I

    if-eqz p1, :cond_4

    iget p1, p0, Lbr/com/topaz/v/h;->n:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lbr/com/topaz/v/h;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "205"

    invoke-virtual {v1, p1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return v0
.end method

.method private c()Lbr/com/topaz/v/a;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/v/h;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->u()Lbr/com/topaz/v/g;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/v/h;->p:Lbr/com/topaz/v/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lbr/com/topaz/v/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbr/com/topaz/v/a;->d:Lbr/com/topaz/v/a;

    return-object v0

    :cond_0
    sget-object v0, Lbr/com/topaz/v/a;->c:Lbr/com/topaz/v/a;

    return-object v0

    :catch_0
    sget-object v0, Lbr/com/topaz/v/a;->b:Lbr/com/topaz/v/a;

    return-object v0
.end method

.method private d()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbr/com/topaz/v/m;

    invoke-direct {v1, p0}, Lbr/com/topaz/v/m;-><init>(Lbr/com/topaz/v/h;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic e(Lbr/com/topaz/v/h;Lbr/com/topaz/v/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/v/h;->a(Lbr/com/topaz/v/i;)V

    return-void
.end method

.method private f()V
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/v/h;->o:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbr/com/topaz/v/d;->g:Lbr/com/topaz/v/d;

    invoke-virtual {v0}, Lbr/com/topaz/v/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/topaz/v/h;->a(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/v/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr/com/topaz/v/h;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/v/h;->i:Lbr/com/topaz/v/b;

    invoke-virtual {v0}, Lbr/com/topaz/v/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/v/h;->d:Lbr/com/topaz/u0/c;

    iget-object v2, p0, Lbr/com/topaz/v/h;->p:Lbr/com/topaz/v/g;

    invoke-virtual {v2}, Lbr/com/topaz/v/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/u0/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1_|_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbr/com/topaz/v/h;->p:Lbr/com/topaz/v/g;

    invoke-virtual {v2}, Lbr/com/topaz/v/g;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_|_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/v/h;->e:Lbr/com/topaz/u0/a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lbr/com/topaz/u0/a;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/v/h;->i:Lbr/com/topaz/v/b;

    invoke-virtual {v1, v0}, Lbr/com/topaz/v/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/v/h;->i:Lbr/com/topaz/v/b;

    invoke-virtual {v0}, Lbr/com/topaz/v/b;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/v/h;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "206"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    sget-object v0, Lbr/com/topaz/v/d;->k:Lbr/com/topaz/v/d;

    invoke-virtual {v0}, Lbr/com/topaz/v/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/topaz/v/h;->a(I)V

    const-string v0, ""

    return-object v0
.end method

.method private h()Z
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/v/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/v/h;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lbr/com/topaz/v/h;->b:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic j()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/v/h;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/topaz/v/h;->o:Z

    iget-object v0, p0, Lbr/com/topaz/v/h;->f:Lbr/com/topaz/n/a;

    invoke-interface {v0}, Lbr/com/topaz/n/a;->e()V

    iget-object v0, p0, Lbr/com/topaz/v/h;->q:Landroid/os/Looper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/v/h;->k:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :cond_1
    return-void
.end method

.method private synthetic k()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/v/h;->q:Landroid/os/Looper;

    iget v0, p0, Lbr/com/topaz/v/h;->n:I

    sget-object v1, Lbr/com/topaz/v/c;->b:Lbr/com/topaz/v/c;

    invoke-virtual {v1}, Lbr/com/topaz/v/c;->a()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lbr/com/topaz/v/h;->n:I

    sget-object v1, Lbr/com/topaz/v/c;->d:Lbr/com/topaz/v/c;

    invoke-virtual {v1}, Lbr/com/topaz/v/c;->a()I

    move-result v1

    if-ne v0, v1, :cond_3

    :cond_1
    invoke-direct {p0}, Lbr/com/topaz/v/h;->i()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lbr/com/topaz/v/d;->e:Lbr/com/topaz/v/d;

    invoke-virtual {v0}, Lbr/com/topaz/v/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/topaz/v/h;->a(I)V

    return-void

    :cond_2
    new-instance v0, Lbr/com/topaz/v/i;

    invoke-direct {v0}, Lbr/com/topaz/v/i;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/v/h;->f:Lbr/com/topaz/n/a;

    new-instance v2, Lbr/com/topaz/v/k;

    invoke-direct {v2, p0, v0}, Lbr/com/topaz/v/k;-><init>(Lbr/com/topaz/v/h;Lbr/com/topaz/v/i;)V

    invoke-interface {v1, v2}, Lbr/com/topaz/n/a;->a(Lbr/com/topaz/n/a$a;)V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lbr/com/topaz/v/h;->q:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbr/com/topaz/v/l;

    invoke-direct {v1, p0}, Lbr/com/topaz/v/l;-><init>(Lbr/com/topaz/v/h;)V

    iget v2, p0, Lbr/com/topaz/v/h;->m:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_3
    invoke-direct {p0}, Lbr/com/topaz/v/h;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/v/h;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "208"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    sget-object v0, Lbr/com/topaz/v/d;->j:Lbr/com/topaz/v/d;

    invoke-virtual {v0}, Lbr/com/topaz/v/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/topaz/v/h;->a(I)V

    :goto_0
    return-void
.end method

.method public static synthetic l(Lbr/com/topaz/v/h;)V
    .locals 0

    invoke-direct {p0}, Lbr/com/topaz/v/h;->j()V

    return-void
.end method

.method public static synthetic m(Lbr/com/topaz/v/h;)V
    .locals 0

    invoke-direct {p0}, Lbr/com/topaz/v/h;->k()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/v/h;->l:Lbr/com/topaz/v/h$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lbr/com/topaz/v/h$a;->onFailure(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lbr/com/topaz/v/h;->l:Lbr/com/topaz/v/h$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lbr/com/topaz/v/h$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/v/h;->l:Lbr/com/topaz/v/h$a;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/v/h;->l:Lbr/com/topaz/v/h$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lbr/com/topaz/v/h$a;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lbr/com/topaz/v/h;->l:Lbr/com/topaz/v/h$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/v/h;->i:Lbr/com/topaz/v/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/v/b;->a(J)V

    invoke-direct {p0}, Lbr/com/topaz/v/h;->c()Lbr/com/topaz/v/a;

    move-result-object v0

    sget-object v1, Lbr/com/topaz/v/a;->b:Lbr/com/topaz/v/a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lbr/com/topaz/v/d;->b:Lbr/com/topaz/v/d;

    invoke-virtual {v0}, Lbr/com/topaz/v/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/topaz/v/h;->a(I)V

    return-void

    :cond_0
    sget-object v1, Lbr/com/topaz/v/a;->c:Lbr/com/topaz/v/a;

    if-ne v0, v1, :cond_1

    sget-object v0, Lbr/com/topaz/v/d;->c:Lbr/com/topaz/v/d;

    invoke-virtual {v0}, Lbr/com/topaz/v/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/topaz/v/h;->a(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/v/h;->j:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lbr/com/topaz/v/h;->a(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lbr/com/topaz/v/d;->d:Lbr/com/topaz/v/d;

    invoke-virtual {v0}, Lbr/com/topaz/v/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/topaz/v/h;->a(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lbr/com/topaz/v/h;->f:Lbr/com/topaz/n/a;

    invoke-interface {v0}, Lbr/com/topaz/n/a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lbr/com/topaz/v/d;->h:Lbr/com/topaz/v/d;

    invoke-virtual {v0}, Lbr/com/topaz/v/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/topaz/v/h;->a(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lbr/com/topaz/v/h;->i:Lbr/com/topaz/v/b;

    iget v1, p0, Lbr/com/topaz/v/h;->n:I

    invoke-virtual {v0, v1}, Lbr/com/topaz/v/b;->a(I)V

    iget v0, p0, Lbr/com/topaz/v/h;->n:I

    sget-object v1, Lbr/com/topaz/v/c;->b:Lbr/com/topaz/v/c;

    invoke-virtual {v1}, Lbr/com/topaz/v/c;->a()I

    move-result v2

    if-eq v0, v2, :cond_4

    iget v0, p0, Lbr/com/topaz/v/h;->n:I

    sget-object v2, Lbr/com/topaz/v/c;->c:Lbr/com/topaz/v/c;

    invoke-virtual {v2}, Lbr/com/topaz/v/c;->a()I

    move-result v2

    if-ne v0, v2, :cond_7

    :cond_4
    invoke-direct {p0}, Lbr/com/topaz/v/h;->h()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lbr/com/topaz/v/d;->f:Lbr/com/topaz/v/d;

    invoke-virtual {v0}, Lbr/com/topaz/v/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/topaz/v/h;->a(I)V

    return-void

    :cond_5
    invoke-direct {p0}, Lbr/com/topaz/v/h;->i()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lbr/com/topaz/v/d;->e:Lbr/com/topaz/v/d;

    invoke-virtual {v0}, Lbr/com/topaz/v/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr/com/topaz/v/h;->a(I)V

    return-void

    :cond_6
    new-instance v0, Lbr/com/topaz/v/j;

    invoke-direct {v0}, Lbr/com/topaz/v/j;-><init>()V

    iget-object v2, p0, Lbr/com/topaz/v/h;->g:Lbr/com/topaz/m0/d;

    invoke-interface {v2}, Lbr/com/topaz/m0/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbr/com/topaz/v/j;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lbr/com/topaz/v/h;->g:Lbr/com/topaz/m0/d;

    invoke-interface {v2}, Lbr/com/topaz/m0/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbr/com/topaz/v/j;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lbr/com/topaz/v/h;->i:Lbr/com/topaz/v/b;

    invoke-virtual {v2, v0}, Lbr/com/topaz/v/b;->a(Lbr/com/topaz/v/j;)V

    :cond_7
    iget v0, p0, Lbr/com/topaz/v/h;->n:I

    invoke-virtual {v1}, Lbr/com/topaz/v/c;->a()I

    move-result v1

    if-eq v0, v1, :cond_9

    iget v0, p0, Lbr/com/topaz/v/h;->n:I

    sget-object v1, Lbr/com/topaz/v/c;->d:Lbr/com/topaz/v/c;

    invoke-virtual {v1}, Lbr/com/topaz/v/c;->a()I

    move-result v1

    if-ne v0, v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lbr/com/topaz/v/h;->f()V

    goto :goto_1

    :cond_9
    :goto_0
    invoke-direct {p0}, Lbr/com/topaz/v/h;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lbr/com/topaz/v/d;->k:Lbr/com/topaz/v/d;

    invoke-virtual {v1}, Lbr/com/topaz/v/d;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lbr/com/topaz/v/h;->a(I)V

    iget-object v1, p0, Lbr/com/topaz/v/h;->h:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "204"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
