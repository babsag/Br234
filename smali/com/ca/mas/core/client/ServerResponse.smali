.class public Lcom/ca/mas/core/client/ServerResponse;
.super Ljava/lang/Object;
.source "ServerResponse.java"


# instance fields
.field protected errorCode:I

.field protected final json:Ljava/lang/String;

.field protected final parsed:Lorg/json/JSONObject;

.field protected status:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/ca/mas/core/client/ServerResponse;->errorCode:I

    .line 4
    iput p1, p0, Lcom/ca/mas/core/client/ServerResponse;->status:I

    const-string p1, "json"

    .line 5
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/ca/mas/core/client/ServerResponse;->json:Ljava/lang/String;

    .line 7
    new-instance p1, Lorg/json/JSONTokener;

    invoke-direct {p1, p3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    instance-of p2, p1, Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 9
    check-cast p1, Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/ca/mas/core/client/ServerResponse;->parsed:Lorg/json/JSONObject;

    return-void

    .line 10
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "JSON response did not contain a JSON object"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "JSON response parsed to NULL"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/ca/mas/core/client/ServerResponse;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/client/ServerResponse;->errorCode:I

    return v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/client/ServerResponse;->json:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/client/ServerResponse;->status:I

    return v0
.end method

.method public isError()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/core/client/ServerResponse;->errorCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
