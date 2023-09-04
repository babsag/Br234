.class public Lcom/ca/mas/identity/user/MASEmail;
.super Lcom/ca/mas/identity/user/IdentityBase;
.source "MASEmail.java"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/identity/user/IdentityBase;-><init>()V

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
    invoke-super {p0}, Lcom/ca/mas/identity/user/IdentityBase;->getAsJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/ca/mas/identity/user/MASEmail;->c:Z

    const-string v2, "primary"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/identity/user/MASEmail;->c:Z

    return v0
.end method

.method public populate(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/ca/mas/identity/user/IdentityBase;->populate(Lorg/json/JSONObject;)V

    const-string v0, "primary"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ca/mas/identity/user/MASEmail;->c:Z

    return-void
.end method
