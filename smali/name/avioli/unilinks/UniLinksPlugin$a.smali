.class Lname/avioli/unilinks/UniLinksPlugin$a;
.super Landroid/content/BroadcastReceiver;
.source "UniLinksPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lname/avioli/unilinks/UniLinksPlugin;->a(Lio/flutter/plugin/common/EventChannel$EventSink;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/common/EventChannel$EventSink;

.field final synthetic b:Lname/avioli/unilinks/UniLinksPlugin;


# direct methods
.method constructor <init>(Lname/avioli/unilinks/UniLinksPlugin;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$events"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lname/avioli/unilinks/UniLinksPlugin$a;->b:Lname/avioli/unilinks/UniLinksPlugin;

    iput-object p2, p0, Lname/avioli/unilinks/UniLinksPlugin$a;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
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
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lname/avioli/unilinks/UniLinksPlugin$a;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    const/4 p2, 0x0

    const-string v0, "UNAVAILABLE"

    const-string v1, "Link unavailable"

    invoke-interface {p1, v0, v1, p2}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lname/avioli/unilinks/UniLinksPlugin$a;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
