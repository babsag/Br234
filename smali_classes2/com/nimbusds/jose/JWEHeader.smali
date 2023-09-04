.class public final Lcom/nimbusds/jose/JWEHeader;
.super Lcom/nimbusds/jose/b;
.source "JWEHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/JWEHeader$Builder;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# static fields
.field private static final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final p:Lcom/nimbusds/jose/EncryptionMethod;

.field private final q:Lcom/nimbusds/jose/jwk/JWK;

.field private final r:Lcom/nimbusds/jose/CompressionAlgorithm;

.field private final s:Lcom/nimbusds/jose/util/Base64URL;

.field private final t:Lcom/nimbusds/jose/util/Base64URL;

.field private final u:Lcom/nimbusds/jose/util/Base64URL;

.field private final v:I

.field private final w:Lcom/nimbusds/jose/util/Base64URL;

.field private final x:Lcom/nimbusds/jose/util/Base64URL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "alg"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "enc"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "epk"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "zip"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "jku"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "jwk"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "x5u"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "x5t"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "x5t#S256"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "x5c"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "kid"

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "typ"

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cty"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "crit"

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "apu"

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "apv"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "p2s"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "p2c"

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "iv"

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "authTag"

    .line 21
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/JWEHeader;->o:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/CompressionAlgorithm;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;ILcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/Algorithm;",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            "Lcom/nimbusds/jose/JOSEObjectType;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/jwk/JWK;",
            "Ljava/net/URI;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/nimbusds/jose/jwk/JWK;",
            "Lcom/nimbusds/jose/CompressionAlgorithm;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "I",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/util/Base64URL;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p21

    move-object v14, v13

    move-object/from16 v13, p22

    .line 2
    invoke-direct/range {v0 .. v13}, Lcom/nimbusds/jose/b;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v15, :cond_2

    if-eqz v14, :cond_1

    .line 4
    invoke-virtual/range {p13 .. p13}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ephemeral public key should not be a private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v14

    .line 6
    iput-object v15, v0, Lcom/nimbusds/jose/JWEHeader;->p:Lcom/nimbusds/jose/EncryptionMethod;

    .line 7
    iput-object v1, v0, Lcom/nimbusds/jose/JWEHeader;->q:Lcom/nimbusds/jose/jwk/JWK;

    move-object/from16 v1, p14

    .line 8
    iput-object v1, v0, Lcom/nimbusds/jose/JWEHeader;->r:Lcom/nimbusds/jose/CompressionAlgorithm;

    move-object/from16 v1, p15

    .line 9
    iput-object v1, v0, Lcom/nimbusds/jose/JWEHeader;->s:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v1, p16

    .line 10
    iput-object v1, v0, Lcom/nimbusds/jose/JWEHeader;->t:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v1, p17

    .line 11
    iput-object v1, v0, Lcom/nimbusds/jose/JWEHeader;->u:Lcom/nimbusds/jose/util/Base64URL;

    move/from16 v1, p18

    .line 12
    iput v1, v0, Lcom/nimbusds/jose/JWEHeader;->v:I

    move-object/from16 v1, p19

    .line 13
    iput-object v1, v0, Lcom/nimbusds/jose/JWEHeader;->w:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v1, p20

    .line 14
    iput-object v1, v0, Lcom/nimbusds/jose/JWEHeader;->x:Lcom/nimbusds/jose/util/Base64URL;

    return-void

    :cond_2
    move-object/from16 v0, p0

    .line 15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The encryption method \"enc\" parameter must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v0, p0

    .line 16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The JWE algorithm cannot be \"none\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 1
    invoke-direct/range {v0 .. v22}, Lcom/nimbusds/jose/JWEHeader;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/CompressionAlgorithm;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;ILcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/JWEHeader;)V
    .locals 23

    move-object/from16 v0, p0

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v2

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/Header;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    move-result-object v3

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/Header;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/Header;->getCriticalParams()Ljava/util/Set;

    move-result-object v5

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getJWKURL()Ljava/net/URI;

    move-result-object v6

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getJWK()Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v7

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertURL()Ljava/net/URI;

    move-result-object v8

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v9

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v10

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertChain()Ljava/util/List;

    move-result-object v11

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getKeyID()Ljava/lang/String;

    move-result-object v12

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getEphemeralPublicKey()Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v13

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getCompressionAlgorithm()Lcom/nimbusds/jose/CompressionAlgorithm;

    move-result-object v14

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyUInfo()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v15

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyVInfo()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v16

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Salt()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v17

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Count()I

    move-result v18

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getIV()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v19

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/JWEHeader;->getAuthTag()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v20

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/Header;->getCustomParams()Ljava/util/Map;

    move-result-object v21

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/nimbusds/jose/Header;->getParsedBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v22

    .line 39
    invoke-direct/range {v0 .. v22}, Lcom/nimbusds/jose/JWEHeader;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/CompressionAlgorithm;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;ILcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method private static a(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/EncryptionMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "enc"

    .line 1
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/EncryptionMethod;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object p0

    return-object p0
.end method

.method public static getRegisteredParameterNames()Ljava/util/Set;
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
    sget-object v0, Lcom/nimbusds/jose/JWEHeader;->o:Ljava/util/Set;

    return-object v0
.end method

.method public static parse(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->decodeToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nimbusds/jose/JWEHeader;->parse(Ljava/lang/String;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Lnet/minidev/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nimbusds/jose/JWEHeader;->parse(Lnet/minidev/json/JSONObject;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Lnet/minidev/json/JSONObject;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/nimbusds/jose/JWEHeader;->parse(Lnet/minidev/json/JSONObject;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/JWEHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/nimbusds/jose/JWEHeader;->parse(Lnet/minidev/json/JSONObject;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lnet/minidev/json/JSONObject;Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/nimbusds/jose/Header;->parseAlgorithm(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/Algorithm;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/nimbusds/jose/JWEAlgorithm;

    if-eqz v1, :cond_16

    .line 4
    invoke-static {p0}, Lcom/nimbusds/jose/JWEHeader;->a(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/nimbusds/jose/JWEHeader$Builder;

    check-cast v0, Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-direct {v2, v0, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;)V

    invoke-virtual {v2, p1}, Lcom/nimbusds/jose/JWEHeader$Builder;->parsedBase64URL(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "alg"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "enc"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "typ"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    new-instance v2, Lcom/nimbusds/jose/JOSEObjectType;

    invoke-direct {v2, v1}, Lcom/nimbusds/jose/JOSEObjectType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/nimbusds/jose/JWEHeader$Builder;->type(Lcom/nimbusds/jose/JOSEObjectType;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v2, "cty"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->contentType(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string v2, "crit"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getStringList(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v2}, Lcom/nimbusds/jose/JWEHeader$Builder;->criticalParams(Ljava/util/Set;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string v2, "jku"

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getURI(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->jwkURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string v2, "jwk"

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 20
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONObject(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Lnet/minidev/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {v1}, Lcom/nimbusds/jose/jwk/JWK;->parse(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->jwk(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    const-string v2, "x5u"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 23
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getURI(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    const-string v2, "x5t"

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 25
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_9
    const-string v2, "x5t#S256"

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 27
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    const-string v2, "x5c"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 29
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONArray(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Lnet/minidev/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/X509CertChainUtils;->toBase64List(Lnet/minidev/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    const-string v2, "kid"

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 31
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_c
    const-string v2, "epk"

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 33
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getJSONObject(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Lnet/minidev/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/jwk/JWK;->parse(Lnet/minidev/json/JSONObject;)Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->ephemeralPublicKey(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_d
    const-string v2, "zip"

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 35
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    new-instance v2, Lcom/nimbusds/jose/CompressionAlgorithm;

    invoke-direct {v2, v1}, Lcom/nimbusds/jose/CompressionAlgorithm;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/nimbusds/jose/JWEHeader$Builder;->compressionAlgorithm(Lcom/nimbusds/jose/CompressionAlgorithm;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_e
    const-string v2, "apu"

    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 38
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->agreementPartyUInfo(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    const-string v2, "apv"

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 40
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->agreementPartyVInfo(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_10
    const-string v2, "p2s"

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 42
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->pbes2Salt(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_11
    const-string v2, "p2c"

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 44
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getInt(Lnet/minidev/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->pbes2Count(I)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_12
    const-string v2, "iv"

    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 46
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->iv(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    :cond_13
    const-string v2, "tag"

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 48
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/JSONObjectUtils;->getString(Lnet/minidev/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;->authTag(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    .line 49
    :cond_14
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/nimbusds/jose/JWEHeader$Builder;->customParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/JWEHeader$Builder;

    move-result-object p1

    goto/16 :goto_0

    .line 50
    :cond_15
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader$Builder;->build()Lcom/nimbusds/jose/JWEHeader;

    move-result-object p0

    return-object p0

    .line 51
    :cond_16
    new-instance p0, Ljava/text/ParseException;

    const/4 p1, 0x0

    const-string v0, "The algorithm \"alg\" header parameter must be for encryption"

    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public getAgreementPartyUInfo()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->s:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getAgreementPartyVInfo()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->t:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public bridge synthetic getAlgorithm()Lcom/nimbusds/jose/Algorithm;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/nimbusds/jose/Header;->getAlgorithm()Lcom/nimbusds/jose/Algorithm;

    move-result-object v0

    check-cast v0, Lcom/nimbusds/jose/JWEAlgorithm;

    return-object v0
.end method

.method public getAuthTag()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->x:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getCompressionAlgorithm()Lcom/nimbusds/jose/CompressionAlgorithm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->r:Lcom/nimbusds/jose/CompressionAlgorithm;

    return-object v0
.end method

.method public getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->p:Lcom/nimbusds/jose/EncryptionMethod;

    return-object v0
.end method

.method public getEphemeralPublicKey()Lcom/nimbusds/jose/jwk/JWK;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->q:Lcom/nimbusds/jose/jwk/JWK;

    return-object v0
.end method

.method public getIV()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->w:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getIncludedParams()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/b;->getIncludedParams()Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->p:Lcom/nimbusds/jose/EncryptionMethod;

    if-eqz v1, :cond_0

    const-string v1, "enc"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->q:Lcom/nimbusds/jose/jwk/JWK;

    if-eqz v1, :cond_1

    const-string v1, "epk"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->r:Lcom/nimbusds/jose/CompressionAlgorithm;

    if-eqz v1, :cond_2

    const-string v1, "zip"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->s:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_3

    const-string v1, "apu"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->t:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_4

    const-string v1, "apv"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->u:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_5

    const-string v1, "p2s"

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_5
    iget v1, p0, Lcom/nimbusds/jose/JWEHeader;->v:I

    if-lez v1, :cond_6

    const-string v1, "p2c"

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->w:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_7

    const-string v1, "iv"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->x:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_8

    const-string v1, "tag"

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method

.method public bridge synthetic getJWK()Lcom/nimbusds/jose/jwk/JWK;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/b;->getJWK()Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getJWKURL()Ljava/net/URI;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/b;->getJWKURL()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKeyID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/b;->getKeyID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPBES2Count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nimbusds/jose/JWEHeader;->v:I

    return v0
.end method

.method public getPBES2Salt()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/JWEHeader;->u:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public bridge synthetic getX509CertChain()Ljava/util/List;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/b;->getX509CertChain()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/b;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/b;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getX509CertURL()Ljava/net/URI;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/b;->getX509CertURL()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toJSONObject()Lnet/minidev/json/JSONObject;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/nimbusds/jose/b;->toJSONObject()Lnet/minidev/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->p:Lcom/nimbusds/jose/EncryptionMethod;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->q:Lcom/nimbusds/jose/jwk/JWK;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->toJSONObject()Lnet/minidev/json/JSONObject;

    move-result-object v1

    const-string v2, "epk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->r:Lcom/nimbusds/jose/CompressionAlgorithm;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/nimbusds/jose/CompressionAlgorithm;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zip"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->s:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apu"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->t:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apv"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->u:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "p2s"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_5
    iget v1, p0, Lcom/nimbusds/jose/JWEHeader;->v:I

    if-lez v1, :cond_6

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "p2c"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->w:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iv"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/nimbusds/jose/JWEHeader;->x:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_8

    .line 19
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v0
.end method
