.class Lio/flutter/plugins/webviewflutter/e$a;
.super Ljava/lang/Object;
.source "JavaScriptChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/webviewflutter/e;->postMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/flutter/plugins/webviewflutter/e;


# direct methods
.method constructor <init>(Lio/flutter/plugins/webviewflutter/e;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$message"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/e$a;->b:Lio/flutter/plugins/webviewflutter/e;

    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/e$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/e$a;->b:Lio/flutter/plugins/webviewflutter/e;

    invoke-static {v1}, Lio/flutter/plugins/webviewflutter/e;->a(Lio/flutter/plugins/webviewflutter/e;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/e$a;->a:Ljava/lang/String;

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/e$a;->b:Lio/flutter/plugins/webviewflutter/e;

    invoke-static {v1}, Lio/flutter/plugins/webviewflutter/e;->b(Lio/flutter/plugins/webviewflutter/e;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object v1

    const-string v2, "javascriptChannelMessage"

    invoke-virtual {v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
