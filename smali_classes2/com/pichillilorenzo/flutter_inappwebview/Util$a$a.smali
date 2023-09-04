.class Lcom/pichillilorenzo/flutter_inappwebview/Util$a$a;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pichillilorenzo/flutter_inappwebview/Util$a;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/Util$a;)V
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
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a$a;->a:Lcom/pichillilorenzo/flutter_inappwebview/Util$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "s1",
            "o"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a$a;->a:Lcom/pichillilorenzo/flutter_inappwebview/Util$a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "error"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a$a;->a:Lcom/pichillilorenzo/flutter_inappwebview/Util$a;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->d:Ljava/util/Map;

    const-string p2, "result"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a$a;->a:Lcom/pichillilorenzo/flutter_inappwebview/Util$a;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public notImplemented()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a$a;->a:Lcom/pichillilorenzo/flutter_inappwebview/Util$a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a$a;->a:Lcom/pichillilorenzo/flutter_inappwebview/Util$a;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->d:Ljava/util/Map;

    const-string v1, "result"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/Util$a$a;->a:Lcom/pichillilorenzo/flutter_inappwebview/Util$a;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/Util$a;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
