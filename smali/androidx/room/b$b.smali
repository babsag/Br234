.class Landroidx/room/b$b;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/b;


# direct methods
.method constructor <init>(Landroidx/room/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/b$b;->a:Landroidx/room/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/room/b$b;->a:Landroidx/room/b;

    invoke-static {p2}, Landroidx/room/IMultiInstanceInvalidationService$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/room/IMultiInstanceInvalidationService;

    move-result-object p2

    iput-object p2, p1, Landroidx/room/b;->f:Landroidx/room/IMultiInstanceInvalidationService;

    .line 2
    iget-object p1, p0, Landroidx/room/b$b;->a:Landroidx/room/b;

    iget-object p2, p1, Landroidx/room/b;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/b;->k:Ljava/lang/Runnable;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/room/b$b;->a:Landroidx/room/b;

    iget-object v0, p1, Landroidx/room/b;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/b;->l:Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Landroidx/room/b$b;->a:Landroidx/room/b;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/room/b;->f:Landroidx/room/IMultiInstanceInvalidationService;

    return-void
.end method
