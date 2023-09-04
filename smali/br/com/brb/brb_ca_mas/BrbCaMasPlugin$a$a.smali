.class Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$a;
.super Ljava/lang/Object;
.source "BrbCaMasPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;->onAuthenticateRequest(Landroid/content/Context;JLcom/ca/mas/foundation/auth/MASAuthenticationProviders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;


# direct methods
.method constructor <init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;)V
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
    iput-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;

    iget-object v0, v0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;->a:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;

    invoke-static {v0}, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;->a(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;)Lio/flutter/plugin/common/BasicMessageChannel;

    move-result-object v0

    const-string v1, "tipo"

    const-string v2, "authenticateRequest"

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method
