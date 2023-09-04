.class public Lcom/ca/mas/identity/user/User$X509Cert;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASTransformable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/identity/user/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "X509Cert"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/ca/mas/identity/user/User;


# direct methods
.method public constructor <init>(Lcom/ca/mas/identity/user/User;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/identity/user/User$X509Cert;->b:Lcom/ca/mas/identity/user/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ca/mas/identity/user/User$X509Cert;->a:Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public populate(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "value"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/user/User$X509Cert;->a:Ljava/lang/String;

    return-void
.end method
