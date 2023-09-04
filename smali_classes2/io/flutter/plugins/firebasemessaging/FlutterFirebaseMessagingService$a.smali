.class Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService$a;
.super Ljava/lang/Object;
.source "FlutterFirebaseMessagingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/messaging/RemoteMessage;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;Lcom/google/firebase/messaging/RemoteMessage;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$remoteMessage",
            "val$latch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService$a;->c:Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;

    iput-object p2, p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService$a;->a:Lcom/google/firebase/messaging/RemoteMessage;

    iput-object p3, p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService$a;->c:Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;

    iget-object v1, p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService$a;->a:Lcom/google/firebase/messaging/RemoteMessage;

    iget-object v2, p0, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2}, Lio/flutter/plugins/firebasemessaging/FlutterFirebaseMessagingService;->l(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
