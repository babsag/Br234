.class public Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;
.super Ljava/lang/Object;
.source "DefaultJWTClaimsVerifier.java"

# interfaces
.implements Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;
.implements Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;
.implements Lcom/nimbusds/jwt/proc/ClockSkewAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
        "TC;>;",
        "Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;",
        "Lcom/nimbusds/jwt/proc/ClockSkewAware;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final DEFAULT_MAX_CLOCK_SKEW_SECONDS:I = 0x3c


# instance fields
.field private a:I

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/nimbusds/jwt/JWTClaimsSet;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;-><init>(Ljava/util/Set;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;-><init>(Ljava/util/Set;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;-><init>(Ljava/util/Set;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 5
    iput v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->b:Ljava/util/Set;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p2, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;

    invoke-direct {p2}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/nimbusds/jwt/JWTClaimsSet$Builder;->build()Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->c:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 8
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "aud"

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p3, :cond_3

    .line 11
    invoke-interface {v1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->d:Ljava/util/Set;

    if-eqz p4, :cond_4

    .line 13
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getAcceptedAudienceValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->b:Ljava/util/Set;

    return-object v0
.end method

.method public getExactMatchClaims()Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->c:Lcom/nimbusds/jwt/JWTClaimsSet;

    return-object v0
.end method

.method public getMaxClockSkew()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->a:I

    return v0
.end method

.method public getProhibitedClaims()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->e:Ljava/util/Set;

    return-object v0
.end method

.method public getRequiredClaims()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->d:Ljava/util/Set;

    return-object v0
.end method

.method public setMaxClockSkew(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->a:I

    return-void
.end method

.method public verify(Lcom/nimbusds/jwt/JWTClaimsSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->verify(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)V

    return-void
.end method

.method public verify(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->b:Ljava/util/Set;

    if-eqz p2, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getAudience()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JWT audience rejected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->b:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    const-string p2, "JWT missing required audience"

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->d:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 11
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 12
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_6
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 16
    :cond_7
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JWT has prohibited claims: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_8
    iget-object p2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->c:Lcom/nimbusds/jwt/JWTClaimsSet;

    invoke-virtual {p2}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v0}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaim(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->c:Lcom/nimbusds/jwt/JWTClaimsSet;

    invoke-virtual {v2, v0}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaim(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    .line 20
    :cond_9
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JWT \""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" claim doesn\'t match expected value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_a
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getExpirationTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 23
    iget v1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->a:I

    int-to-long v1, v1

    invoke-static {v0, p2, v1, v2}, Lcom/nimbusds/jwt/util/DateUtils;->isAfter(Ljava/util/Date;Ljava/util/Date;J)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    .line 24
    :cond_b
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    const-string p2, "Expired JWT"

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_c
    :goto_3
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getNotBeforeTime()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 26
    iget v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->a:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Lcom/nimbusds/jwt/util/DateUtils;->isBefore(Ljava/util/Date;Ljava/util/Date;J)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    .line 27
    :cond_d
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    const-string p2, "JWT before use time"

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_4
    return-void

    .line 28
    :cond_f
    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;->d:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 30
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JWT missing required claims: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
