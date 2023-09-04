.class Lcom/ca/mas/foundation/MASClaimsBuilder$a;
.super Ljava/lang/Object;
.source "MASClaimsBuilder.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASClaims;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASClaimsBuilder;->build()Lcom/ca/mas/foundation/MASClaims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/ca/mas/foundation/MASClaimsBuilder;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASClaimsBuilder;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->a:J

    return-void
.end method


# virtual methods
.method public getAudience()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "aud"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ca/mas/foundation/MASConfiguration;->getCurrentConfiguration()Lcom/ca/mas/foundation/MASConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASConfiguration;->getGatewayHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClaims()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "exp"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->a:J

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/nimbusds/jwt/util/DateUtils;->fromSecondsSinceEpoch(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getIssuedAt()Ljava/util/Date;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "iat"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->a:J

    invoke-static {v0, v1}, Lcom/nimbusds/jwt/util/DateUtils;->fromSecondsSinceEpoch(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "iss"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ca/mas/core/store/TokenProvider;->getMagIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 4
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/core/store/StorageProvider;->getClientCredentialContainer()Lcom/ca/mas/core/store/ClientCredentialContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/ca/mas/core/store/ClientCredentialContainer;->getClientId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "device://%s/%s"

    .line 5
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJwtId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "jti"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "nbf"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "sub"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASClaimsBuilder$a;->b:Lcom/ca/mas/foundation/MASClaimsBuilder;

    invoke-static {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->a(Lcom/ca/mas/foundation/MASClaimsBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->getCurrentUser()Lcom/ca/mas/foundation/MASUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->getCurrentUser()Lcom/ca/mas/foundation/MASUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/identity/user/ScimUser;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getClientCredentialContainer()Lcom/ca/mas/core/store/ClientCredentialContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
