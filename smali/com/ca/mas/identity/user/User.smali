.class public Lcom/ca/mas/identity/user/User;
.super Lcom/ca/mas/foundation/MASUser;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/identity/user/User$X509Cert;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lcom/ca/mas/identity/user/MASMeta;

.field protected mId:Ljava/lang/String;

.field protected mName:Lcom/ca/mas/identity/user/MASName;

.field protected mUserName:Ljava/lang/String;

.field private n:J

.field private o:Lorg/json/JSONObject;

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASEmail;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASPhone;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASIms;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/User$X509Cert;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/foundation/MASUser;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->p:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->q:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->r:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->t:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->s:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->u:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->v:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;

    invoke-direct {v0}, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;-><init>()V

    throw v0
.end method

.method public getAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASAddress;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->p:Ljava/util/List;

    return-object v0
.end method

.method public getAsJSONObject()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->o:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getCardinality()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ca/mas/identity/user/User;->n:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASEmail;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->q:Ljava/util/List;

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->v:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASIms;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->t:Ljava/util/List;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta()Lcom/ca/mas/identity/user/MASMeta;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->m:Lcom/ca/mas/identity/user/MASMeta;

    return-object v0
.end method

.method public getName()Lcom/ca/mas/identity/user/MASName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->mName:Lcom/ca/mas/identity/user/MASName;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASPhone;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->r:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASPhoto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->s:Ljava/util/List;

    return-object v0
.end method

.method public getPreferredLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->o:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getThumbnailImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/identity/user/User;->getPhotoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mas/identity/util/IdentityUtil;->getThumbnail(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getUserById(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;

    invoke-direct {p1}, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;-><init>()V

    throw p1
.end method

.method public getUserMetaData(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/identity/user/UserAttributes;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;

    invoke-direct {p1}, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;-><init>()V

    throw p1
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUsersByFilter(Lcom/ca/mas/identity/common/MASFilteredRequest;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/identity/common/MASFilteredRequest;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;

    invoke-direct {p1}, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;-><init>()V

    throw p1
.end method

.method public isActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/identity/user/User;->k:Z

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentUser()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSessionLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lockSession(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;

    invoke-direct {p1}, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;-><init>()V

    throw p1
.end method

.method public logout(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;

    invoke-direct {p1}, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;-><init>()V

    throw p1
.end method

.method public logout(ZLcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance p1, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;

    invoke-direct {p1}, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;-><init>()V

    throw p1
.end method

.method public populate(Lorg/json/JSONObject;)V
    .locals 8
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
    iput-object p1, p0, Lcom/ca/mas/identity/user/User;->o:Lorg/json/JSONObject;

    const-string v0, "sub"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "preferred_username"

    const-string v1, ""

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->mUserName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->mId:Ljava/lang/String;

    const-string v0, "picture"

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v3, p0, Lcom/ca/mas/identity/user/User;->s:Ljava/util/List;

    new-instance v4, Lcom/ca/mas/identity/user/User$a;

    invoke-direct {v4, p0, v0}, Lcom/ca/mas/identity/user/User$a;-><init>(Lcom/ca/mas/identity/user/User;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "email"

    .line 7
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v3, p0, Lcom/ca/mas/identity/user/User;->q:Ljava/util/List;

    new-instance v4, Lcom/ca/mas/identity/user/User$b;

    invoke-direct {v4, p0, v0}, Lcom/ca/mas/identity/user/User$b;-><init>(Lcom/ca/mas/identity/user/User;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "phone_number"

    .line 9
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v3, p0, Lcom/ca/mas/identity/user/User;->r:Ljava/util/List;

    new-instance v4, Lcom/ca/mas/identity/user/User$c;

    invoke-direct {v4, p0, v0}, Lcom/ca/mas/identity/user/User$c;-><init>(Lcom/ca/mas/identity/user/User;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "given_name"

    .line 11
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "family_name"

    .line 12
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "middle_name"

    .line 13
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    new-instance v4, Lcom/ca/mas/identity/user/User$d;

    invoke-direct {v4, p0, v0, v3, v2}, Lcom/ca/mas/identity/user/User$d;-><init>(Lcom/ca/mas/identity/user/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/ca/mas/identity/user/User;->mName:Lcom/ca/mas/identity/user/MASName;

    const-string v0, "address"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "street_address"

    .line 16
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "locality"

    .line 17
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "region"

    .line 18
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "postal_code"

    .line 19
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "country"

    .line 20
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 21
    new-instance p1, Lcom/ca/mas/identity/user/MASAddress;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/ca/mas/identity/user/MASAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    const-string v0, "id"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->mId:Ljava/lang/String;

    const-string v0, "externalId"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->b:Ljava/lang/String;

    const-string v0, "userName"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->mUserName:Ljava/lang/String;

    const-string v0, "displayName"

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->d:Ljava/lang/String;

    const-string v0, "nickName"

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->c:Ljava/lang/String;

    const-string v0, "profileUrl"

    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->e:Ljava/lang/String;

    const-string v0, "userType"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->f:Ljava/lang/String;

    const-string v0, "title"

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->g:Ljava/lang/String;

    const-string v0, "preferredLanguage"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->h:Ljava/lang/String;

    const-string v0, "locale"

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->i:Ljava/lang/String;

    const-string v0, "timezone"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->j:Ljava/lang/String;

    const-string v0, "password"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/user/User;->l:Ljava/lang/String;

    const-string v0, "active"

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ca/mas/identity/user/User;->k:Z

    const-string v0, "meta"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    new-instance v2, Lcom/ca/mas/identity/user/MASMeta;

    invoke-direct {v2}, Lcom/ca/mas/identity/user/MASMeta;-><init>()V

    iput-object v2, p0, Lcom/ca/mas/identity/user/User;->m:Lcom/ca/mas/identity/user/MASMeta;

    .line 39
    invoke-virtual {v2, v0}, Lcom/ca/mas/identity/user/MASMeta;->populate(Lorg/json/JSONObject;)V

    :cond_5
    const-string v0, "name"

    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    new-instance v2, Lcom/ca/mas/identity/user/MASName;

    invoke-direct {v2}, Lcom/ca/mas/identity/user/MASName;-><init>()V

    iput-object v2, p0, Lcom/ca/mas/identity/user/User;->mName:Lcom/ca/mas/identity/user/MASName;

    .line 43
    invoke-virtual {v2, v0}, Lcom/ca/mas/identity/user/MASName;->populate(Lorg/json/JSONObject;)V

    :cond_6
    const-string v0, "addresses"

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    .line 46
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 47
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 48
    new-instance v4, Lcom/ca/mas/identity/user/MASAddress;

    invoke-direct {v4}, Lcom/ca/mas/identity/user/MASAddress;-><init>()V

    .line 49
    invoke-virtual {v4, v3}, Lcom/ca/mas/identity/user/MASAddress;->populate(Lorg/json/JSONObject;)V

    .line 50
    iget-object v3, p0, Lcom/ca/mas/identity/user/User;->p:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const-string v0, "emails"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    .line 53
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 54
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 55
    new-instance v4, Lcom/ca/mas/identity/user/MASEmail;

    invoke-direct {v4}, Lcom/ca/mas/identity/user/MASEmail;-><init>()V

    .line 56
    invoke-virtual {v4, v3}, Lcom/ca/mas/identity/user/MASEmail;->populate(Lorg/json/JSONObject;)V

    .line 57
    iget-object v3, p0, Lcom/ca/mas/identity/user/User;->q:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const-string v0, "phoneNumbers"

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    .line 60
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 61
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 62
    new-instance v4, Lcom/ca/mas/identity/user/MASPhone;

    invoke-direct {v4}, Lcom/ca/mas/identity/user/MASPhone;-><init>()V

    .line 63
    invoke-virtual {v4, v3}, Lcom/ca/mas/identity/user/IdentityBase;->populate(Lorg/json/JSONObject;)V

    .line 64
    iget-object v3, p0, Lcom/ca/mas/identity/user/User;->r:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    const-string v0, "ims"

    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    .line 67
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 68
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 69
    new-instance v4, Lcom/ca/mas/identity/user/MASIms;

    invoke-direct {v4}, Lcom/ca/mas/identity/user/MASIms;-><init>()V

    .line 70
    invoke-virtual {v4, v3}, Lcom/ca/mas/identity/user/IdentityBase;->populate(Lorg/json/JSONObject;)V

    .line 71
    iget-object v3, p0, Lcom/ca/mas/identity/user/User;->t:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    const-string v0, "photos"

    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v2, 0x0

    .line 74
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 75
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 76
    new-instance v4, Lcom/ca/mas/identity/user/MASPhoto;

    invoke-direct {v4}, Lcom/ca/mas/identity/user/MASPhoto;-><init>()V

    .line 77
    invoke-virtual {v4, v3}, Lcom/ca/mas/identity/user/IdentityBase;->populate(Lorg/json/JSONObject;)V

    .line 78
    iget-object v3, p0, Lcom/ca/mas/identity/user/User;->s:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    const-string v0, "x509Certificates"

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    .line 81
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 82
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 83
    new-instance v4, Lcom/ca/mas/identity/user/User$X509Cert;

    invoke-direct {v4, p0}, Lcom/ca/mas/identity/user/User$X509Cert;-><init>(Lcom/ca/mas/identity/user/User;)V

    .line 84
    invoke-virtual {v4, v3}, Lcom/ca/mas/identity/user/User$X509Cert;->populate(Lorg/json/JSONObject;)V

    .line 85
    iget-object v3, p0, Lcom/ca/mas/identity/user/User;->u:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    const-string v0, "groups"

    .line 86
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 88
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 89
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/ca/mas/foundation/MASGroup;->newInstance()Lcom/ca/mas/foundation/MASGroup;

    move-result-object v2

    .line 91
    invoke-interface {v2, v0}, Lcom/ca/mas/foundation/MASTransformable;->populate(Lorg/json/JSONObject;)V

    .line 92
    iget-object v0, p0, Lcom/ca/mas/identity/user/User;->v:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method public removeSessionLock(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;

    invoke-direct {p1}, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;-><init>()V

    throw p1
.end method

.method public requestUserInfo(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;

    invoke-direct {p1}, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;-><init>()V

    throw p1
.end method

.method public unlockSession(Lcom/ca/mas/foundation/MASSessionUnlockCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASSessionUnlockCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;

    invoke-direct {p1}, Lcom/ca/mas/identity/user/UserNotAuthenticatedException;-><init>()V

    throw p1
.end method
