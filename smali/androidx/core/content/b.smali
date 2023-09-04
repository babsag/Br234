.class Landroidx/core/content/b;
.super Ljava/lang/Object;
.source "UnusedAppRestrictionsBackportServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field a:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/core/content/b;->a:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/core/content/b;->d:Z

    .line 4
    iput-object p1, p0, Landroidx/core/content/b;->c:Landroid/content/Context;

    return-void
.end method

.method private c()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/content/b$a;

    invoke-direct {v0, p0}, Landroidx/core/content/b$a;-><init>(Landroidx/core/content/b;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/concurrent/futures/ResolvableFuture;)V
    .locals 2
    .param p1    # Landroidx/concurrent/futures/ResolvableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/b;->d:Z

    .line 3
    iput-object p1, p0, Landroidx/core/content/b;->b:Landroidx/concurrent/futures/ResolvableFuture;

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.support.unusedapprestrictions.action.CustomUnusedAppRestrictionsBackportService"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/core/content/b;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroidx/core/content/PackageManagerCompat;->getPermissionRevocationVerifierApp(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    iget-object v1, p0, Landroidx/core/content/b;->c:Landroid/content/Context;

    invoke-virtual {v1, p1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Each UnusedAppRestrictionsBackportServiceConnection can only be bound once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/b;->d:Z

    .line 3
    iget-object v0, p0, Landroidx/core/content/b;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "bindService must be called before unbind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/b;->a:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroidx/core/content/b;->c()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;

    move-result-object p2

    .line 3
    invoke-interface {p1, p2}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;->isPermissionRevocationEnabledForApp(Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object p1, p0, Landroidx/core/content/b;->b:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroidx/core/content/b;->a:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    return-void
.end method
