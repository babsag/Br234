.class Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;
.super Lcom/ca/mas/foundation/MASCallback;
.source "BrbCaMasPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;->onOtpAuthenticateRequest(Landroid/content/Context;Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/foundation/MASCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;


# direct methods
.method constructor <init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$handler",
            "val$context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;->c:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a;

    iput-object p2, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;->a:Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;

    iput-object p3, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;

    invoke-direct {v0, p0}, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b$a;-><init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const-string v0, "BrbCaMasPlugin"

    const-string v1, "Falha ao solicitar OTP"

    .line 1
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    iget-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;->a:Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;

    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASMultiFactorHandler;->cancel()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unused"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$a$b;->a(Ljava/lang/Void;)V

    return-void
.end method
