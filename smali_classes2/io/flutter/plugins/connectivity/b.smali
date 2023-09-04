.class Lio/flutter/plugins/connectivity/b;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityBroadcastReceiver.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lio/flutter/plugins/connectivity/a;

.field private c:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/plugins/connectivity/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "connectivity"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/flutter/plugins/connectivity/b;->d:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lio/flutter/plugins/connectivity/b;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lio/flutter/plugins/connectivity/b;->b:Lio/flutter/plugins/connectivity/a;

    return-void
.end method

.method static synthetic a(Lio/flutter/plugins/connectivity/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugins/connectivity/b;->e()V

    return-void
.end method

.method static synthetic b(Lio/flutter/plugins/connectivity/b;)Lio/flutter/plugins/connectivity/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/connectivity/b;->b:Lio/flutter/plugins/connectivity/a;

    return-object p0
.end method

.method static synthetic c(Lio/flutter/plugins/connectivity/b;)Lio/flutter/plugin/common/EventChannel$EventSink;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/connectivity/b;->c:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/connectivity/b$b;

    invoke-direct {v0, p0}, Lio/flutter/plugins/connectivity/b$b;-><init>(Lio/flutter/plugins/connectivity/b;)V

    .line 2
    iget-object v1, p0, Lio/flutter/plugins/connectivity/b;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method d()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/connectivity/b$a;

    invoke-direct {v0, p0}, Lio/flutter/plugins/connectivity/b$a;-><init>(Lio/flutter/plugins/connectivity/b;)V

    return-object v0
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/connectivity/b;->b:Lio/flutter/plugins/connectivity/a;

    invoke-virtual {p1}, Lio/flutter/plugins/connectivity/a;->a()Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p0}, Lio/flutter/plugins/connectivity/b;->d()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/connectivity/b;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arguments",
            "events"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lio/flutter/plugins/connectivity/b;->c:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lio/flutter/plugins/connectivity/b;->b:Lio/flutter/plugins/connectivity/a;

    invoke-virtual {p1}, Lio/flutter/plugins/connectivity/a;->a()Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p0}, Lio/flutter/plugins/connectivity/b;->d()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/connectivity/b;->a:Landroid/content/Context;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/connectivity/b;->c:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lio/flutter/plugins/connectivity/b;->b:Lio/flutter/plugins/connectivity/a;

    invoke-virtual {p2}, Lio/flutter/plugins/connectivity/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
