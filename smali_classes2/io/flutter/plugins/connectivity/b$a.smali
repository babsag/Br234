.class Lio/flutter/plugins/connectivity/b$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/connectivity/b;->d()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/connectivity/b;


# direct methods
.method constructor <init>(Lio/flutter/plugins/connectivity/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/connectivity/b$a;->a:Lio/flutter/plugins/connectivity/b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "network"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/connectivity/b$a;->a:Lio/flutter/plugins/connectivity/b;

    invoke-static {p1}, Lio/flutter/plugins/connectivity/b;->a(Lio/flutter/plugins/connectivity/b;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "network"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/connectivity/b$a;->a:Lio/flutter/plugins/connectivity/b;

    invoke-static {p1}, Lio/flutter/plugins/connectivity/b;->a(Lio/flutter/plugins/connectivity/b;)V

    return-void
.end method
