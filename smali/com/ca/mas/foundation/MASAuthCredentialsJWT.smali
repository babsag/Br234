.class public Lcom/ca/mas/foundation/MASAuthCredentialsJWT;
.super Ljava/lang/Object;
.source "MASAuthCredentialsJWT.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASAuthCredentials;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ca/mas/foundation/MASAuthCredentialsJWT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile a:Lcom/ca/mas/core/token/IdToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT$a;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASAuthCredentialsJWT$a;-><init>()V

    sput-object v0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-class v0, Lcom/ca/mas/core/token/IdToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/token/IdToken;

    iput-object p1, p0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;->a:Lcom/ca/mas/core/token/IdToken;

    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/core/token/IdToken;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;->a:Lcom/ca/mas/core/token/IdToken;

    return-void
.end method


# virtual methods
.method public canRegisterDevice()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;->a:Lcom/ca/mas/core/token/IdToken;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGrantType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;->a:Lcom/ca/mas/core/token/IdToken;

    invoke-virtual {v0}, Lcom/ca/mas/core/token/IdToken;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;->a:Lcom/ca/mas/core/token/IdToken;

    invoke-virtual {v2}, Lcom/ca/mas/core/token/IdToken;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;->a:Lcom/ca/mas/core/token/IdToken;

    invoke-virtual {v1}, Lcom/ca/mas/core/token/IdToken;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "x-authorization-type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;->a:Lcom/ca/mas/core/token/IdToken;

    invoke-virtual {v2}, Lcom/ca/mas/core/token/IdToken;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "assertion"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    const-string v0, "socialLogin"

    return-object v0
.end method

.method public isReusable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;->a:Lcom/ca/mas/core/token/IdToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;->a:Lcom/ca/mas/core/token/IdToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
