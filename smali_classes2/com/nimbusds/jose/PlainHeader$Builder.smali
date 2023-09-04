.class public Lcom/nimbusds/jose/PlainHeader$Builder;
.super Ljava/lang/Object;
.source "PlainHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/PlainHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/nimbusds/jose/JOSEObjectType;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/nimbusds/jose/util/Base64URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/PlainHeader;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->a:Lcom/nimbusds/jose/JOSEObjectType;

    .line 4
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCriticalParams()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->c:Ljava/util/Set;

    .line 6
    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getCustomParams()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lcom/nimbusds/jose/PlainHeader;
    .locals 7

    .line 1
    new-instance v6, Lcom/nimbusds/jose/PlainHeader;

    iget-object v1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->a:Lcom/nimbusds/jose/JOSEObjectType;

    iget-object v2, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->c:Ljava/util/Set;

    iget-object v4, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->d:Ljava/util/Map;

    iget-object v5, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->e:Lcom/nimbusds/jose/util/Base64URL;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/PlainHeader;-><init>(Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    return-object v6
.end method

.method public contentType(Ljava/lang/String;)Lcom/nimbusds/jose/PlainHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public criticalParams(Ljava/util/Set;)Lcom/nimbusds/jose/PlainHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nimbusds/jose/PlainHeader$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->c:Ljava/util/Set;

    return-object p0
.end method

.method public customParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/PlainHeader$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/nimbusds/jose/PlainHeader;->getRegisteredParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->d:Ljava/util/Map;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The parameter name \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" matches a registered name"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public customParams(Ljava/util/Map;)Lcom/nimbusds/jose/PlainHeader$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/PlainHeader$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->d:Ljava/util/Map;

    return-object p0
.end method

.method public parsedBase64URL(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/PlainHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->e:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public type(Lcom/nimbusds/jose/JOSEObjectType;)Lcom/nimbusds/jose/PlainHeader$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jose/PlainHeader$Builder;->a:Lcom/nimbusds/jose/JOSEObjectType;

    return-object p0
.end method
