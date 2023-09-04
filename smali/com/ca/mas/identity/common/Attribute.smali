.class public Lcom/ca/mas/identity/common/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/common/Attribute;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMutability()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/common/Attribute;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/common/Attribute;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getReturned()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/common/Attribute;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/common/Attribute;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueness()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/common/Attribute;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isCaseExact()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/identity/common/Attribute;->f:Z

    return v0
.end method

.method public isMultiValued()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/identity/common/Attribute;->c:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/identity/common/Attribute;->e:Z

    return v0
.end method

.method public populate(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "name"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/common/Attribute;->a:Ljava/lang/String;

    const-string v0, "type"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/common/Attribute;->b:Ljava/lang/String;

    const-string v0, "multiValued"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ca/mas/identity/common/Attribute;->c:Z

    const-string v0, "description"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/common/Attribute;->d:Ljava/lang/String;

    const-string v0, "required"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ca/mas/identity/common/Attribute;->e:Z

    const-string v0, "caseExact"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ca/mas/identity/common/Attribute;->f:Z

    const-string v0, "mutability"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/common/Attribute;->g:Ljava/lang/String;

    const-string v0, "returned"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/common/Attribute;->h:Ljava/lang/String;

    const-string v0, "uniqueness"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/Attribute;->i:Ljava/lang/String;

    return-void
.end method
