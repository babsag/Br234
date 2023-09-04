.class Lcom/pichillilorenzo/flutter_inappwebview/Util$a;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/Util;->invokeMethodAndWait(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Ljava/lang/Object;)Lcom/pichillilorenzo/flutter_inappwebview/Util$WaitFlutterResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/common/MethodChannel;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$channel",
            "val$method",
            "val$arguments",
            "val$flutterResultMap",
            "val$latch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->a:Lio/flutter/plugin/common/MethodChannel;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->a:Lio/flutter/plugin/common/MethodChannel;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->c:Ljava/lang/Object;

    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/Util$a$a;

    invoke-direct {v3, p0}, Lcom/pichillilorenzo/flutter_inappwebview/Util$a$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/Util$a;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method
