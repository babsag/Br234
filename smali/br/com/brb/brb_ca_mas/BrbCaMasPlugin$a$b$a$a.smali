.class Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a$a;
.super Ljava/lang/Object;
.source "BrbCaMasPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/BasicMessageChannel$Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/flutter/plugin/common/BasicMessageChannel$Reply<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;


# direct methods
.method constructor <init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reply"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;

    iget-object v0, v0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;

    iget-object v1, v0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;->a:Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;

    iget-object v0, v0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;->b:Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->proceed(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;

    iget-object p1, p1, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;

    iget-object p1, p1, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;->a:Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;

    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASMultiFactorHandler;->cancel()V

    :goto_0
    return-void
.end method
