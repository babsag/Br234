.class Lcom/ca/mas/foundation/MASTokenRequest$a;
.super Ljava/lang/Object;
.source "MASTokenRequest.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASTokenRequest;->send(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ca/mas/foundation/MASResponse<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/context/MssoContext;

.field final synthetic b:Lcom/ca/mas/foundation/MASTokenRequest;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASTokenRequest;Lcom/ca/mas/core/context/MssoContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASTokenRequest$a;->b:Lcom/ca/mas/foundation/MASTokenRequest;

    iput-object p2, p0, Lcom/ca/mas/foundation/MASTokenRequest$a;->a:Lcom/ca/mas/core/context/MssoContext;

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
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASTokenRequest$a$a;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/MASTokenRequest$a$a;-><init>(Lcom/ca/mas/foundation/MASTokenRequest$a;)V

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
