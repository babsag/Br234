.class final Landroidx/camera/core/impl/utils/executor/a;
.super Ljava/lang/Object;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static volatile a:Landroidx/camera/core/impl/utils/executor/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    sget-object v0, Landroidx/camera/core/impl/utils/executor/a;->a:Landroidx/camera/core/impl/utils/executor/a;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroidx/camera/core/impl/utils/executor/a;->a:Landroidx/camera/core/impl/utils/executor/a;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Landroidx/camera/core/impl/utils/executor/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/camera/core/impl/utils/executor/a;->a:Landroidx/camera/core/impl/utils/executor/a;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Landroidx/camera/core/impl/utils/executor/a;

    invoke-direct {v1}, Landroidx/camera/core/impl/utils/executor/a;-><init>()V

    sput-object v1, Landroidx/camera/core/impl/utils/executor/a;->a:Landroidx/camera/core/impl/utils/executor/a;

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Landroidx/camera/core/impl/utils/executor/a;->a:Landroidx/camera/core/impl/utils/executor/a;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
