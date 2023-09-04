.class public Lcom/ca/mas/foundation/MASTokenRequest;
.super Lcom/ca/mas/core/request/internal/MAGRequestProxy;
.source "MASTokenRequest.java"

# interfaces
.implements Lcom/ca/mas/core/request/internal/LocalRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/core/request/internal/MAGRequestProxy;",
        "Lcom/ca/mas/core/request/internal/LocalRequest<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;-><init>()V

    .line 2
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "token"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/foundation/MASRequest;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->request:Lcom/ca/mas/foundation/MASRequest;

    return-void
.end method


# virtual methods
.method public send(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/core/context/MssoContext;",
            ")",
            "Lcom/ca/mas/foundation/MASResponse<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASTokenRequest$a;

    invoke-direct {v0, p0, p1}, Lcom/ca/mas/foundation/MASTokenRequest$a;-><init>(Lcom/ca/mas/foundation/MASTokenRequest;Lcom/ca/mas/core/context/MssoContext;)V

    return-object v0
.end method
