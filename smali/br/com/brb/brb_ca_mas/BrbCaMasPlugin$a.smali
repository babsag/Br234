.class Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;
.super Ljava/lang/Object;
.source "BrbCaMasPlugin.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASAuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;->c(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;


# direct methods
.method constructor <init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;)V
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
    iput-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticateRequest(Landroid/content/Context;JLcom/ca/mas/foundation/auth/MASAuthenticationProviders;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "requestId",
            "providers"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$a;

    invoke-direct {p2, p0}, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$a;-><init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOtpAuthenticateRequest(Landroid/content/Context;Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "handler"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->getChannels()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;

    invoke-direct {v1, p0, p2, p1}, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;-><init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;Landroid/content/Context;)V

    invoke-virtual {p2, v0, v1}, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->deliver(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method
