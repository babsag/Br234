.class public Landroidx/work/impl/utils/StartWorkRunnable;
.super Ljava/lang/Object;
.source "StartWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private a:Landroidx/work/impl/WorkManagerImpl;

.field private b:Ljava/lang/String;

.field private c:Landroidx/work/WorkerParameters$RuntimeExtras;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/WorkerParameters$RuntimeExtras;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "workManagerImpl",
            "workSpecId",
            "runtimeExtras"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/utils/StartWorkRunnable;->a:Landroidx/work/impl/WorkManagerImpl;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/StartWorkRunnable;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroidx/work/impl/utils/StartWorkRunnable;->c:Landroidx/work/WorkerParameters$RuntimeExtras;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/StartWorkRunnable;->a:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/utils/StartWorkRunnable;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/utils/StartWorkRunnable;->c:Landroidx/work/WorkerParameters$RuntimeExtras;

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/Processor;->startWork(Ljava/lang/String;Landroidx/work/WorkerParameters$RuntimeExtras;)Z

    return-void
.end method
