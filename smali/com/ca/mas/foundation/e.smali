.class Lcom/ca/mas/foundation/e;
.super Ljava/lang/Object;
.source "MASResponseProxy.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ca/mas/foundation/MASResponse<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/ca/mas/foundation/MASResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ca/mas/foundation/MASResponse<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ca/mas/foundation/MASResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASResponse<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/e;->a:Lcom/ca/mas/foundation/MASResponse;

    return-void
.end method


# virtual methods
.method public getBody()Lcom/ca/mas/foundation/MASResponseBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ca/mas/foundation/MASResponseBody<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/e;->a:Lcom/ca/mas/foundation/MASResponse;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/e;->a:Lcom/ca/mas/foundation/MASResponse;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/e;->a:Lcom/ca/mas/foundation/MASResponse;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/e;->a:Lcom/ca/mas/foundation/MASResponse;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
