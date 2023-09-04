.class public Lcom/ca/mas/core/token/IdTokenDef;
.super Ljava/lang/Object;
.source "IdTokenDef.java"


# instance fields
.field private a:[B

.field private b:[B

.field private c:[B


# direct methods
.method constructor <init>(Lcom/ca/mas/core/token/IdToken;)V
    .locals 2
    .param p1    # Lcom/ca/mas/core/token/IdToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/ca/mas/core/token/IdToken;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/ca/mas/core/token/IdTokenDef;->a([B)[[B

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ca/mas/core/token/IdTokenDef;->a:[B

    const/4 v0, 0x1

    .line 5
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ca/mas/core/token/IdTokenDef;->b:[B

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ca/mas/core/token/IdTokenDef;->c:[B

    .line 7
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 8
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/ca/mas/core/token/IdTokenDef;->c:[B

    :cond_0
    return-void
.end method

.method private a([B)[[B
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "[.]"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    array-length v0, p1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    array-length v0, p1

    new-array v3, v0, [[B

    const/4 v4, 0x0

    .line 5
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [B

    aput-object v5, v3, v4

    const/4 v5, 0x1

    .line 6
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [B

    aput-object v6, v3, v5

    .line 7
    aget-object v6, p1, v4

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    aget-object v7, v3, v4

    aget-object v8, p1, v4

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v6, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    aget-object v7, v3, v5

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v6, v4, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v0, v2, :cond_1

    .line 9
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    aput-object v0, v3, v1

    .line 10
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    aget-object v2, v3, v1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v3

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getHeader()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/token/IdTokenDef;->a:[B

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/token/IdTokenDef;->b:[B

    return-object v0
.end method

.method public getPayloadAsJSONObject()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/token/IdTokenDef;->b:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/token/IdTokenDef;->c:[B

    return-object v0
.end method
