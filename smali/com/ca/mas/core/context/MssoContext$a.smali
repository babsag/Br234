.class Lcom/ca/mas/core/context/MssoContext$a;
.super Ljava/lang/Object;
.source "MssoContext.java"

# interfaces
.implements Lcom/ca/mas/core/policy/PolicyManager$Route;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/context/MssoContext;->executeRequest(Landroid/os/Bundle;Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ca/mas/core/policy/PolicyManager$Route<",
        "Lcom/ca/mas/foundation/MASResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/request/MAGInternalRequest;

.field final synthetic b:Lcom/ca/mas/core/context/MssoContext;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/request/MAGInternalRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/context/MssoContext$a;->b:Lcom/ca/mas/core/context/MssoContext;

    iput-object p2, p0, Lcom/ca/mas/core/context/MssoContext$a;->a:Lcom/ca/mas/core/request/MAGInternalRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/ca/mas/foundation/MASResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext$a;->a:Lcom/ca/mas/core/request/MAGInternalRequest;

    invoke-virtual {v0}, Lcom/ca/mas/core/request/MAGInternalRequest;->isLocalRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext$a;->a:Lcom/ca/mas/core/request/MAGInternalRequest;

    invoke-virtual {v0}, Lcom/ca/mas/core/request/MAGInternalRequest;->getRequest()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/core/request/internal/LocalRequest;

    iget-object v1, p0, Lcom/ca/mas/core/context/MssoContext$a;->b:Lcom/ca/mas/core/context/MssoContext;

    invoke-interface {v0, v1}, Lcom/ca/mas/core/request/internal/LocalRequest;->send(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/context/MssoContext$a;->b:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0}, Lcom/ca/mas/core/context/MssoContext;->getMAGHttpClient()Lcom/ca/mas/core/http/MAGHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/core/context/MssoContext$a;->a:Lcom/ca/mas/core/request/MAGInternalRequest;

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/context/MssoContext$a;->a()Lcom/ca/mas/foundation/MASResponse;

    move-result-object v0

    return-object v0
.end method
