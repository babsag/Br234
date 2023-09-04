.class Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;
.super Ljava/lang/Object;
.source "FirebaseMessagingPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic b:Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$result"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;->b:Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;

    iput-object p2, p0, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->deleteInstanceId()V

    .line 2
    iget-object v0, p0, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;->b:Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;

    invoke-static {v0}, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;->b(Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;->b:Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;

    invoke-static {v0}, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;->b(Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e$a;

    invoke-direct {v1, p0}, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e$a;-><init>(Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FirebaseMessagingPlugin"

    const-string v2, "deleteInstanceID, error:"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    iget-object v0, p0, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;->b:Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;

    invoke-static {v0}, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;->b(Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;->b:Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;

    invoke-static {v0}, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;->b(Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e$b;

    invoke-direct {v1, p0}, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e$b;-><init>(Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method
