.class Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;
.super Ljava/lang/Object;
.source "BrbCaMasPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;


# direct methods
.method constructor <init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;

    iget-object v0, v0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;->c:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;

    iget-object v0, v0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;

    invoke-static {v0}, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;->a(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;)Lio/flutter/plugin/common/BasicMessageChannel;

    move-result-object v0

    const-string v1, "tipo"

    const-string v2, "otpAuthenticateRequest"

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a$a;

    invoke-direct {v2, p0}, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a$a;-><init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method
