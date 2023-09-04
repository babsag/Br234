.class Lcom/ca/mas/core/request/internal/AuthenticateRequest$a;
.super Ljava/lang/Object;
.source "AuthenticateRequest.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/request/internal/AuthenticateRequest;->send(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/request/internal/AuthenticateRequest;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/request/internal/AuthenticateRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/request/internal/AuthenticateRequest$a;->a:Lcom/ca/mas/core/request/internal/AuthenticateRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Lcom/ca/mas/foundation/MASResponseBody;
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
