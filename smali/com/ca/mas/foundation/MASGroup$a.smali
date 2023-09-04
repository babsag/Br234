.class final Lcom/ca/mas/foundation/MASGroup$a;
.super Lcom/ca/mas/foundation/MASGroup;
.source "MASGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASGroup;->newInstance()Lcom/ca/mas/foundation/MASGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:Lcom/ca/mas/identity/group/MASGroupRepository;
    .annotation runtime Lcom/ca/mas/foundation/MASExtension;
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/ca/mas/identity/group/MASOwner;

.field private g:Lcom/ca/mas/identity/user/MASMeta;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/group/MASMember;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/foundation/MASGroup;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->h:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ca/mas/identity/group/MASMember;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mas/identity/group/MASMember;

    .line 2
    invoke-virtual {v1}, Lcom/ca/mas/identity/group/MASMember;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lcom/ca/mas/identity/group/MASMember;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mas/identity/group/MASMember;

    .line 2
    invoke-virtual {v1}, Lcom/ca/mas/identity/group/MASMember;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ca/mas/identity/group/MASMember;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addMember(Lcom/ca/mas/identity/group/MASMember;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/foundation/MASGroup$a;->b(Lcom/ca/mas/identity/group/MASMember;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public delete(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->a:Lcom/ca/mas/identity/group/MASGroupRepository;

    invoke-interface {v0, p0, p1}, Lcom/ca/mas/identity/group/MASGroupRepository;->delete(Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public getAsJSONObject()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "urn:ietf:params:scim:schemas:core:2.0:Group"

    .line 3
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "schemas"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/ca/mas/foundation/MASGroup$a;->e:Ljava/lang/String;

    const-string v2, "displayName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASGroup$a;->getOwner()Lcom/ca/mas/identity/group/MASOwner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/identity/group/MASOwner;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASGroup$a;->getOwner()Lcom/ca/mas/identity/group/MASOwner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/identity/group/MASOwner;->getDisplay()Ljava/lang/String;

    move-result-object v2

    const-string v4, "display"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "owner"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/ca/mas/foundation/MASGroup$a;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ca/mas/identity/group/MASMember;

    .line 12
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 13
    invoke-virtual {v5}, Lcom/ca/mas/identity/group/MASMember;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v5}, Lcom/ca/mas/identity/group/MASMember;->getDisplay()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v5}, Lcom/ca/mas/identity/group/MASMember;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "type"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "members"

    .line 17
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getGroupById(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->a:Lcom/ca/mas/identity/group/MASGroupRepository;

    invoke-interface {v0, p1, p2}, Lcom/ca/mas/identity/group/MASGroupRepository;->getGroupById(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public getGroupMetaData(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/identity/group/GroupAttributes;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->a:Lcom/ca/mas/identity/group/MASGroupRepository;

    invoke-interface {v0, p1}, Lcom/ca/mas/identity/group/MASGroupRepository;->getGroupMetaData(Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupsByFilter(Lcom/ca/mas/identity/common/MASFilteredRequest;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/identity/common/MASFilteredRequest;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->a:Lcom/ca/mas/identity/group/MASGroupRepository;

    invoke-interface {v0, p1, p2}, Lcom/ca/mas/identity/group/MASGroupRepository;->getGroupsByFilter(Lcom/ca/mas/identity/common/MASFilteredRequest;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/group/MASMember;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->h:Ljava/util/List;

    return-object v0
.end method

.method public getMeta()Lcom/ca/mas/identity/user/MASMeta;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->g:Lcom/ca/mas/identity/user/MASMeta;

    return-object v0
.end method

.method public getOwner()Lcom/ca/mas/identity/group/MASOwner;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->f:Lcom/ca/mas/identity/group/MASOwner;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ca/mas/identity/group/MASOwner;

    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->getCurrentUser()Lcom/ca/mas/foundation/MASUser;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ca/mas/identity/group/MASOwner;-><init>(Lcom/ca/mas/foundation/MASUser;)V

    :cond_0
    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public populate(Lorg/json/JSONObject;)V
    .locals 10
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "id"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->b:Ljava/lang/String;

    const-string v0, "displayName"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->e:Ljava/lang/String;

    const-string v0, "value"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/foundation/MASGroup$a;->c:Ljava/lang/String;

    const-string v1, "$ref"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/mas/foundation/MASGroup$a;->d:Ljava/lang/String;

    const-string v2, "owner"

    .line 5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "display"

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v6, Lcom/ca/mas/identity/group/MASOwner;

    invoke-direct {v6, v3, v5, v2}, Lcom/ca/mas/identity/group/MASOwner;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/ca/mas/foundation/MASGroup$a;->f:Lcom/ca/mas/identity/group/MASOwner;

    :cond_0
    const-string v2, "members"

    .line 12
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 15
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 16
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 17
    new-instance v6, Lcom/ca/mas/identity/group/MASMember;

    const-string v7, "type"

    .line 18
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/ca/mas/identity/group/MASMember;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v6}, Lcom/ca/mas/foundation/MASGroup$a;->addMember(Lcom/ca/mas/identity/group/MASMember;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "meta"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/ca/mas/identity/user/MASMeta;

    invoke-direct {v0}, Lcom/ca/mas/identity/user/MASMeta;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->g:Lcom/ca/mas/identity/user/MASMeta;

    .line 26
    invoke-virtual {v0, p1}, Lcom/ca/mas/identity/user/MASMeta;->populate(Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method public removeMember(Lcom/ca/mas/identity/group/MASMember;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/identity/group/MASMember;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ca/mas/foundation/MASGroup$a;->a(Ljava/lang/String;)Lcom/ca/mas/identity/group/MASMember;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public save(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGroup$a;->a:Lcom/ca/mas/identity/group/MASGroupRepository;

    invoke-interface {v0, p0, p1}, Lcom/ca/mas/identity/group/MASGroupRepository;->save(Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASGroup$a;->e:Ljava/lang/String;

    return-void
.end method
