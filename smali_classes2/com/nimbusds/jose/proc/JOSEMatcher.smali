.class public Lcom/nimbusds/jose/proc/JOSEMatcher;
.super Ljava/lang/Object;
.source "JOSEMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/proc/JOSEMatcher$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/URI;",
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
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;>;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->a:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->b:Ljava/util/Set;

    .line 4
    iput-object p3, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->c:Ljava/util/Set;

    .line 5
    iput-object p4, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->d:Ljava/util/Set;

    .line 6
    iput-object p5, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getAlgorithms()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->b:Ljava/util/Set;

    return-object v0
.end method

.method public getEncryptionMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->c:Ljava/util/Set;

    return-object v0
.end method

.method public getJOSEClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/JOSEObject;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->a:Ljava/util/Set;

    return-object v0
.end method

.method public getJWKURLs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->d:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyIDs()Ljava/util/Set;
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
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->e:Ljava/util/Set;

    return-object v0
.end method

.method public matches(Lcom/nimbusds/jose/JOSEObject;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->a:Ljava/util/Set;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->b:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nimbusds/jose/JOSEObject;->getHeader()Lcom/nimbusds/jose/Header;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nimbusds/jose/Header;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->c:Ljava/util/Set;

    if-eqz v0, :cond_5

    .line 6
    instance-of v3, p1, Lcom/nimbusds/jose/JWEObject;

    if-nez v3, :cond_4

    return v2

    .line 7
    :cond_4
    move-object v3, p1

    check-cast v3, Lcom/nimbusds/jose/JWEObject;

    .line 8
    invoke-virtual {v3}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->d:Ljava/util/Set;

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 10
    instance-of v0, p1, Lcom/nimbusds/jose/JWSObject;

    if-eqz v0, :cond_6

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/nimbusds/jose/JWSObject;

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSHeader;->getJWKURL()Ljava/net/URI;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_6
    instance-of v0, p1, Lcom/nimbusds/jose/JWEObject;

    if-eqz v0, :cond_7

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/nimbusds/jose/JWEObject;

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEHeader;->getJWKURL()Ljava/net/URI;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v3

    .line 14
    :goto_1
    iget-object v4, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->d:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    .line 15
    :cond_8
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->e:Ljava/util/Set;

    if-eqz v0, :cond_b

    .line 16
    instance-of v0, p1, Lcom/nimbusds/jose/JWSObject;

    if-eqz v0, :cond_9

    .line 17
    check-cast p1, Lcom/nimbusds/jose/JWSObject;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 18
    :cond_9
    instance-of v0, p1, Lcom/nimbusds/jose/JWEObject;

    if-eqz v0, :cond_a

    .line 19
    check-cast p1, Lcom/nimbusds/jose/JWEObject;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getKeyID()Ljava/lang/String;

    move-result-object v3

    .line 20
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/nimbusds/jose/proc/JOSEMatcher;->e:Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v1
.end method
