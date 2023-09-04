.class public Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;
.super Ljava/lang/Object;
.source "RemoteJWKSet.java"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/jwk/source/JWKSource<",
        "TC;>;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final DEFAULT_HTTP_CONNECT_TIMEOUT:I = 0x1f4

.field public static final DEFAULT_HTTP_READ_TIMEOUT:I = 0x1f4

.field public static final DEFAULT_HTTP_SIZE_LIMIT:I = 0xc800


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

.field private final c:Lcom/nimbusds/jose/util/ResourceRetriever;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;-><init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;-><init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;Lcom/nimbusds/jose/jwk/source/JWKSetCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;Lcom/nimbusds/jose/jwk/source/JWKSetCache;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 4
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->a:Ljava/net/URL;

    if-eqz p2, :cond_0

    .line 5
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->c:Lcom/nimbusds/jose/util/ResourceRetriever;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/nimbusds/jose/util/DefaultResourceRetriever;

    const p2, 0xc800

    const/16 v0, 0x1f4

    invoke-direct {p1, v0, v0, p2}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(III)V

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->c:Lcom/nimbusds/jose/util/ResourceRetriever;

    :goto_0
    if-eqz p3, :cond_1

    .line 7
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->b:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;

    invoke-direct {p1}, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;-><init>()V

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->b:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    :goto_1
    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWK set URL must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/RemoteKeySourceException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->c:Lcom/nimbusds/jose/util/ResourceRetriever;

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->a:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/nimbusds/jose/util/ResourceRetriever;->retrieveResource(Ljava/net/URL;)Lcom/nimbusds/jose/util/Resource;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Resource;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->b:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    invoke-interface {v1, v0}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->put(Lcom/nimbusds/jose/jwk/JWKSet;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lcom/nimbusds/jose/RemoteKeySourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t parse remote JWK set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/RemoteKeySourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 5
    new-instance v1, Lcom/nimbusds/jose/RemoteKeySourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t retrieve remote JWK set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/RemoteKeySourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static getFirstSpecifiedKeyID(Lcom/nimbusds/jose/jwk/JWKMatcher;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getKeyIDs()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/JWKSelector;",
            "TC;)",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/RemoteKeySourceException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->b:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    invoke-interface {p2}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->get()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->a()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p2

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKSelector;->getMatcher()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->getFirstSpecifiedKeyID(Lcom/nimbusds/jose/jwk/JWKMatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeyByKeyId(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->a()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p2

    if-nez p2, :cond_4

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCachedJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->b:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    invoke-interface {v0}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->get()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object v0

    return-object v0
.end method

.method public getJWKSetCache()Lcom/nimbusds/jose/jwk/source/JWKSetCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->b:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    return-object v0
.end method

.method public getJWKSetURL()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->a:Ljava/net/URL;

    return-object v0
.end method

.method public getResourceRetriever()Lcom/nimbusds/jose/util/ResourceRetriever;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->c:Lcom/nimbusds/jose/util/ResourceRetriever;

    return-object v0
.end method
