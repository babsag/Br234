.class Landroidx/work/impl/utils/CancelWorkRunnable$a;
.super Landroidx/work/impl/utils/CancelWorkRunnable;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/CancelWorkRunnable;->forId(Ljava/util/UUID;Landroidx/work/impl/WorkManagerImpl;)Landroidx/work/impl/utils/CancelWorkRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/work/impl/WorkManagerImpl;

.field final synthetic c:Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$workManagerImpl",
            "val$id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$a;->b:Landroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Landroidx/work/impl/utils/CancelWorkRunnable$a;->c:Ljava/util/UUID;

    invoke-direct {p0}, Landroidx/work/impl/utils/CancelWorkRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method d()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$a;->b:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$a;->b:Landroidx/work/impl/WorkManagerImpl;

    iget-object v2, p0, Landroidx/work/impl/utils/CancelWorkRunnable$a;->c:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/work/impl/utils/CancelWorkRunnable;->a(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$a;->b:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/CancelWorkRunnable;->c(Landroidx/work/impl/WorkManagerImpl;)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 8
    throw v1
.end method
