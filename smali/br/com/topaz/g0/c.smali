.class public Lbr/com/topaz/g0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/g0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/g0/c$a;
    }
.end annotation


# instance fields
.field private final a:Lbr/com/topaz/l/f0;

.field private b:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private c:Landroid/content/Context;

.field private d:Lbr/com/topaz/g0/b$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/l/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/g0/c;->c:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/g0/c;->a:Lbr/com/topaz/l/f0;

    new-instance p1, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {p1, p2}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iput-object p1, p0, Lbr/com/topaz/g0/c;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    sget-object p1, Lbr/com/topaz/g0/b$b;->b:Lbr/com/topaz/g0/b$b;

    iput-object p1, p0, Lbr/com/topaz/g0/c;->d:Lbr/com/topaz/g0/b$b;

    :try_start_0
    const-string p1, "androidx.work.Worker"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object p1, Lbr/com/topaz/g0/b$b;->a:Lbr/com/topaz/g0/b$b;

    iput-object p1, p0, Lbr/com/topaz/g0/c;->d:Lbr/com/topaz/g0/b$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b(Lbr/com/topaz/g0/b$a;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "OFDHB:084"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbr/com/topaz/g0/c$a;->valueOf(Ljava/lang/String;)Lbr/com/topaz/g0/c$a;

    move-result-object v1

    iget-object v1, v1, Lbr/com/topaz/g0/c$a;->a:Ljava/lang/Class;

    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lbr/com/topaz/g0/c;->a:Lbr/com/topaz/l/f0;

    invoke-interface {v3}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v3

    invoke-virtual {v3}, Lbr/com/topaz/l/g;->N()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    sget-object v4, Lbr/com/topaz/g0/b$a;->a:Lbr/com/topaz/g0/b$a;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Lbr/com/topaz/l/g;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lbr/com/topaz/g0/b$a;->d:Lbr/com/topaz/g0/b$a;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    sget-object v2, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    iget-object v3, p0, Lbr/com/topaz/g0/c;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-virtual {v3, p1, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_3
    :goto_2
    mul-int/lit16 p1, p3, 0x3e8

    int-to-long v3, p1

    const-wide/32 v5, 0xdbba0

    cmp-long p1, v3, v5

    if-gez p1, :cond_4

    const/16 p3, 0x384

    :cond_4
    new-instance p1, Landroidx/work/Constraints$Builder;

    invoke-direct {p1}, Landroidx/work/Constraints$Builder;-><init>()V

    invoke-virtual {p1, v2}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object p1

    new-instance v2, Landroidx/work/PeriodicWorkRequest$Builder;

    int-to-long v3, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v1, v3, v4, p3}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v2, p1}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/PeriodicWorkRequest$Builder;

    sget-object v1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    invoke-virtual {p1, v1, v3, v4, p3}, Landroidx/work/WorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/PeriodicWorkRequest$Builder;

    invoke-virtual {p1, v3, v4, p3}, Landroidx/work/WorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/PeriodicWorkRequest$Builder;

    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p1

    check-cast p1, Landroidx/work/PeriodicWorkRequest;

    iget-object p3, p0, Lbr/com/topaz/g0/c;->c:Landroid/content/Context;

    invoke-static {p3}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p3

    sget-object v1, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    invoke-virtual {p3, p2, v1, p1}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    iget-object p2, p0, Lbr/com/topaz/g0/c;->b:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-virtual {p2, p1, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/g0/c;->d:Lbr/com/topaz/g0/b$b;

    sget-object v1, Lbr/com/topaz/g0/b$b;->a:Lbr/com/topaz/g0/b$b;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/g0/c;->c:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    const-string v1, "heartbeat-event"

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->getWorkInfosForUniqueWork(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lbr/com/topaz/g0/c;->c:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    const-string v1, "protector-scan"

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->getWorkInfosForUniqueWork(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iget-object v0, p0, Lbr/com/topaz/g0/c;->c:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    const-string v1, "ofb-hb-update-files"

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->getWorkInfosForUniqueWork(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return v2
.end method

.method public a(Lbr/com/topaz/g0/b$a;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/g0/c;->d:Lbr/com/topaz/g0/b$b;

    sget-object v1, Lbr/com/topaz/g0/b$b;->a:Lbr/com/topaz/g0/b$b;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lbr/com/topaz/g0/c;->b(Lbr/com/topaz/g0/b$a;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/g0/c;->c:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    return-void
.end method

.method public b()Lbr/com/topaz/g0/b$b;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/g0/c;->d:Lbr/com/topaz/g0/b$b;

    return-object v0
.end method
