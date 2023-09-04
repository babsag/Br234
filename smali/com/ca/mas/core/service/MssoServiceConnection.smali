.class public Lcom/ca/mas/core/service/MssoServiceConnection;
.super Ljava/lang/Object;
.source "MssoServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/core/service/MssoServiceConnection;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "MAS"

    const-string v0, "onServiceConnected called"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    check-cast p2, Lcom/ca/mas/core/service/MssoService$MASBinder;

    .line 4
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ca/mas/core/service/MssoService$MASBinder;->getService()Lcom/ca/mas/core/service/MssoService;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ca/mas/core/service/MssoServiceState;->setMssoService(Lcom/ca/mas/core/service/MssoService;)V

    .line 5
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ca/mas/core/service/MssoServiceState;->setBound(Z)V

    .line 6
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/service/MssoServiceState;->getMssoService()Lcom/ca/mas/core/service/MssoService;

    move-result-object p1

    iget-object p2, p0, Lcom/ca/mas/core/service/MssoServiceConnection;->a:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/ca/mas/core/service/MssoService;->handleWork(Landroid/content/Intent;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "MAS"

    const-string v0, "onServiceDisconnected called"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ca/mas/core/service/MssoServiceState;->setBound(Z)V

    .line 4
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ca/mas/core/service/MssoServiceState;->setMssoService(Lcom/ca/mas/core/service/MssoService;)V

    return-void
.end method
