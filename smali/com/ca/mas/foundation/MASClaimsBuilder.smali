.class public Lcom/ca/mas/foundation/MASClaimsBuilder;
.super Ljava/lang/Object;
.source "MASClaimsBuilder.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/foundation/MASClaims;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder;->a:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASClaims;->getClaims()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public audience(Ljava/lang/String;)Lcom/ca/mas/foundation/MASClaimsBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "aud"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public audience(Ljava/util/List;)Lcom/ca/mas/foundation/MASClaimsBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ca/mas/foundation/MASClaimsBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder;->a:Ljava/util/Map;

    const-string v1, "aud"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public build()Lcom/ca/mas/foundation/MASClaims;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/MASClaimsBuilder$a;-><init>(Lcom/ca/mas/foundation/MASClaimsBuilder;)V

    return-object v0
.end method

.method public claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/ca/mas/foundation/MASClaimsBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public expirationTime(Ljava/util/Date;)Lcom/ca/mas/foundation/MASClaimsBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder;->a:Ljava/util/Map;

    const-string v1, "exp"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public issueTime(Ljava/util/Date;)Lcom/ca/mas/foundation/MASClaimsBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder;->a:Ljava/util/Map;

    const-string v1, "iat"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public issuer(Ljava/lang/String;)Lcom/ca/mas/foundation/MASClaimsBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder;->a:Ljava/util/Map;

    const-string v1, "iss"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public jwtId(Ljava/lang/String;)Lcom/ca/mas/foundation/MASClaimsBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder;->a:Ljava/util/Map;

    const-string v1, "jti"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public notBeforeTime(Ljava/util/Date;)Lcom/ca/mas/foundation/MASClaimsBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder;->a:Ljava/util/Map;

    const-string v1, "nbf"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public subject(Ljava/lang/String;)Lcom/ca/mas/foundation/MASClaimsBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder;->a:Ljava/util/Map;

    const-string v1, "sub"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
