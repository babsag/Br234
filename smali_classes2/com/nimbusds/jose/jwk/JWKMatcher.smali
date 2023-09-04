.class public Lcom/nimbusds/jose/jwk/JWKMatcher;
.super Ljava/lang/Object;
.source "JWKMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
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

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZII)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 2
    invoke-direct/range {v0 .. v10}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    .line 3
    invoke-direct/range {v0 .. v11}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZIILjava/util/Set;Ljava/util/Set;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    .line 4
    invoke-direct/range {v0 .. v13}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 5
    invoke-direct/range {v0 .. v14}, Lcom/nimbusds/jose/jwk/JWKMatcher;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZZIILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/Algorithm;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->a:Ljava/util/Set;

    .line 8
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->b:Ljava/util/Set;

    .line 9
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->c:Ljava/util/Set;

    .line 10
    iput-object p4, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->d:Ljava/util/Set;

    .line 11
    iput-object p5, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->e:Ljava/util/Set;

    .line 12
    iput-boolean p6, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->f:Z

    .line 13
    iput-boolean p7, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->g:Z

    .line 14
    iput-boolean p8, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->h:Z

    .line 15
    iput-boolean p9, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->i:Z

    .line 16
    iput p10, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->j:I

    .line 17
    iput p11, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->k:I

    .line 18
    iput-object p12, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->l:Ljava/util/Set;

    .line 19
    iput-object p13, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->m:Ljava/util/Set;

    .line 20
    iput-object p14, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->n:Ljava/util/Set;

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "*>;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "ANY"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p1, 0x20

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public static forJWEHeader(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;
    .locals 6

    .line 1
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    invoke-direct {v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getKeyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/nimbusds/jose/jwk/KeyUse;

    sget-object v3, Lcom/nimbusds/jose/jwk/KeyUse;->ENCRYPTION:Lcom/nimbusds/jose/jwk/KeyUse;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-object v5, v2, v3

    .line 4
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    new-array v1, v1, [Lcom/nimbusds/jose/Algorithm;

    .line 5
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object p0

    aput-object p0, v1, v4

    aput-object v5, v1, v3

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static forJWSHeader(Lcom/nimbusds/jose/JWSHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_2

    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->HMAC_SHA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    invoke-direct {v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 5
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, v5}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->privateOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    new-array v1, v3, [Lcom/nimbusds/jose/Algorithm;

    aput-object v0, v1, v2

    aput-object v4, v1, v5

    .line 8
    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v4

    .line 10
    :cond_2
    :goto_0
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    invoke-direct {v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    .line 11
    invoke-static {v0}, Lcom/nimbusds/jose/jwk/KeyType;->forAlgorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyType(Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getKeyID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v1

    new-array v6, v3, [Lcom/nimbusds/jose/jwk/KeyUse;

    sget-object v7, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    aput-object v7, v6, v2

    aput-object v4, v6, v5

    .line 13
    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v1

    new-array v3, v3, [Lcom/nimbusds/jose/Algorithm;

    aput-object v0, v3, v2

    aput-object v4, v3, v5

    .line 14
    invoke-virtual {v1, v3}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->algorithms([Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSHeader;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p0

    return-object p0
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
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->d:Ljava/util/Set;

    return-object v0
.end method

.method public getCurves()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->m:Ljava/util/Set;

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
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->e:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyOperations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyOperation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->c:Ljava/util/Set;

    return-object v0
.end method

.method public getKeySizes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->l:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->a:Ljava/util/Set;

    return-object v0
.end method

.method public getKeyUses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/KeyUse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->b:Ljava/util/Set;

    return-object v0
.end method

.method public getMaxKeySize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->k:I

    return v0
.end method

.method public getMaxSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getMaxKeySize()I

    move-result v0

    return v0
.end method

.method public getMinKeySize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->j:I

    return v0
.end method

.method public getMinSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getMinKeySize()I

    move-result v0

    return v0
.end method

.method public getX509CertSHA256Thumbprints()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->n:Ljava/util/Set;

    return-object v0
.end method

.method public hasKeyID()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->g:Z

    return v0
.end method

.method public hasKeyUse()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->f:Z

    return v0
.end method

.method public isPrivateOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->h:Z

    return v0
.end method

.method public isPublicOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->i:Z

    return v0
.end method

.method public matches(Lcom/nimbusds/jose/jwk/JWK;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 3
    :cond_2
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->h:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 4
    :cond_3
    iget-boolean v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->i:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->a:Ljava/util/Set;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->b:Ljava/util/Set;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->c:Ljava/util/Set;

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 9
    :cond_7
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyOperations()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    return v1

    .line 10
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->d:Ljava/util/Set;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->e:Ljava/util/Set;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 12
    :cond_b
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->j:I

    if-lez v0, :cond_c

    .line 13
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->size()I

    move-result v0

    iget v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->j:I

    if-ge v0, v2, :cond_c

    return v1

    .line 14
    :cond_c
    iget v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->k:I

    if-lez v0, :cond_d

    .line 15
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->size()I

    move-result v0

    iget v2, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->k:I

    if-le v0, v2, :cond_d

    return v1

    .line 16
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->l:Ljava/util/Set;

    if-eqz v0, :cond_e

    .line 17
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 18
    :cond_e
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->m:Ljava/util/Set;

    if-eqz v0, :cond_10

    .line 19
    instance-of v2, p1, Lcom/nimbusds/jose/jwk/CurveBasedJWK;

    if-nez v2, :cond_f

    return v1

    .line 20
    :cond_f
    move-object v2, p1

    check-cast v2, Lcom/nimbusds/jose/jwk/CurveBasedJWK;

    .line 21
    invoke-interface {v2}, Lcom/nimbusds/jose/jwk/CurveBasedJWK;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 22
    :cond_10
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->n:Ljava/util/Set;

    if-eqz v0, :cond_11

    .line 23
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->a:Ljava/util/Set;

    const-string v2, "kty"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 3
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->b:Ljava/util/Set;

    const-string v2, "use"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 4
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->c:Ljava/util/Set;

    const-string v2, "key_ops"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 5
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->d:Ljava/util/Set;

    const-string v2, "alg"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 6
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->e:Ljava/util/Set;

    const-string v2, "kid"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 7
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->f:Z

    if-eqz v1, :cond_0

    const-string v1, "has_use=true "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->g:Z

    if-eqz v1, :cond_1

    const-string v1, "has_id=true "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->h:Z

    if-eqz v1, :cond_2

    const-string v1, "private_only=true "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_2
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->i:Z

    if-eqz v1, :cond_3

    const-string v1, "public_only=true "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    iget v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->j:I

    const-string v2, " "

    if-lez v1, :cond_4

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "min_size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->j:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_4
    iget v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->k:I

    if-lez v1, :cond_5

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max_size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->l:Ljava/util/Set;

    const-string v2, "size"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 20
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->m:Ljava/util/Set;

    const-string v2, "crv"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 21
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/JWKMatcher;->n:Ljava/util/Set;

    const-string v2, "x5t#S256"

    invoke-static {v0, v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;)V

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
