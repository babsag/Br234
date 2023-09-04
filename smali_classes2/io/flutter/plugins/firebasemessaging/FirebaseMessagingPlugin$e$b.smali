.class Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e$b;
.super Ljava/lang/Object;
.source "FirebaseMessagingPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e$b;->a:Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e$b;->a:Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;

    iget-object v0, v0, Lio/flutter/plugins/firebasemessaging/FirebaseMessagingPlugin$e;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
