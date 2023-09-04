.class public Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;
.super Ljava/lang/Object;
.source "DefaultJWKSetCache.java"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSetCache;


# static fields
.field public static final DEFAULT_LIFESPAN_MINUTES:J = 0x5L


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/TimeUnit;

.field private c:J

.field private d:Lcom/nimbusds/jose/jwk/JWKSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-direct {p0, v1, v2, v0}, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->c:J

    .line 4
    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->a:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A time unit must be specified for non-negative lifespans"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->b:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public get()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->d:Lcom/nimbusds/jose/jwk/JWKSet;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->d:Lcom/nimbusds/jose/jwk/JWKSet;

    return-object v0
.end method

.method public getLifespan(Ljava/util/concurrent/TimeUnit;)J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p1, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPutTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->c:J

    return-wide v0
.end method

.method public isExpired()Z
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->a:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->c:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->a:J

    iget-object v7, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Lcom/nimbusds/jose/jwk/JWKSet;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->d:Lcom/nimbusds/jose/jwk/JWKSet;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->c:J

    :goto_0
    return-void
.end method
