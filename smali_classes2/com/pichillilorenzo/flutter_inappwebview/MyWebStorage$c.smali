.class Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage$c;
.super Ljava/lang/Object;
.source "MyWebStorage.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->getUsageForOrigin(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic b:Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;Lio/flutter/plugin/common/MethodChannel$Result;)V
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
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage$c;->b:Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage$c;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage$c;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage$c;->a(Ljava/lang/Long;)V

    return-void
.end method
