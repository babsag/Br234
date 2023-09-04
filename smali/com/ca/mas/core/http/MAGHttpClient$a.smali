.class Lcom/ca/mas/core/http/MAGHttpClient$a;
.super Ljava/lang/Object;
.source "MAGHttpClient.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;Ljavax/net/ssl/SSLSocketFactory;)Lcom/ca/mas/foundation/MASResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ca/mas/foundation/MASResponse<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ca/mas/foundation/MASResponseBody;

.field final synthetic e:Lcom/ca/mas/core/http/MAGHttpClient;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/http/MAGHttpClient;Ljava/util/Map;ILjava/lang/String;Lcom/ca/mas/foundation/MASResponseBody;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/http/MAGHttpClient$a;->e:Lcom/ca/mas/core/http/MAGHttpClient;

    iput-object p2, p0, Lcom/ca/mas/core/http/MAGHttpClient$a;->a:Ljava/util/Map;

    iput p3, p0, Lcom/ca/mas/core/http/MAGHttpClient$a;->b:I

    iput-object p4, p0, Lcom/ca/mas/core/http/MAGHttpClient$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ca/mas/core/http/MAGHttpClient$a;->d:Lcom/ca/mas/foundation/MASResponseBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iget-object v0, p0, Lcom/ca/mas/core/http/MAGHttpClient$a;->d:Lcom/ca/mas/foundation/MASResponseBody;

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
    iget-object v0, p0, Lcom/ca/mas/core/http/MAGHttpClient$a;->a:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/http/MAGHttpClient$a;->b:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/http/MAGHttpClient$a;->c:Ljava/lang/String;

    return-object v0
.end method
