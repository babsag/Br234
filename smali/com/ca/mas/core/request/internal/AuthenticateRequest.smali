.class public Lcom/ca/mas/core/request/internal/AuthenticateRequest;
.super Lcom/ca/mas/core/request/internal/MAGRequestProxy;
.source "AuthenticateRequest.java"

# interfaces
.implements Lcom/ca/mas/core/request/internal/LocalRequest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;-><init>()V

    .line 2
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->password()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    return-void
.end method


# virtual methods
.method public send(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASResponse;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->clearCredentials()V

    .line 2
    new-instance p1, Lcom/ca/mas/core/request/internal/AuthenticateRequest$a;

    invoke-direct {p1, p0}, Lcom/ca/mas/core/request/internal/AuthenticateRequest$a;-><init>(Lcom/ca/mas/core/request/internal/AuthenticateRequest;)V

    return-object p1
.end method
