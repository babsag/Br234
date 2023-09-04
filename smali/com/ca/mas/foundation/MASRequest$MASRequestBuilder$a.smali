.class Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;
.super Ljava/lang/Object;
.source "MASRequest.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    iput-object p2, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Lcom/ca/mas/foundation/MASRequestBody;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->j(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->k(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->l(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Lcom/ca/mas/foundation/MASClaims;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->c(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Ljava/security/PrivateKey;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->k(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ca/mas/foundation/MASRequestBody;->a(Lcom/ca/mas/foundation/MASClaims;Ljava/security/PrivateKey;Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->k(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionListener()Lcom/ca/mas/foundation/MASConnectionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->f(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Lcom/ca/mas/foundation/MASConnectionListener;

    move-result-object v0

    return-object v0
.end method

.method public getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->e(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Lcom/ca/mas/foundation/MASGrantProvider;

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
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->a:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->b(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBody()Lcom/ca/mas/foundation/MASResponseBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ca/mas/foundation/MASResponseBody<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->d(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->g(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->a(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public isPublic()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->h(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Z

    move-result v0

    return v0
.end method

.method public notifyOnCancel()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder$a;->b:Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->i(Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;)Z

    move-result v0

    return v0
.end method
