.class public Lcom/nimbusds/jose/proc/SingleKeyJWSKeySelector;
.super Ljava/lang/Object;
.source "SingleKeyJWSKeySelector.java"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWSKeySelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/proc/JWSKeySelector<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/nimbusds/jose/JWSAlgorithm;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Key;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/nimbusds/jose/proc/SingleKeyJWSKeySelector;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/nimbusds/jose/proc/SingleKeyJWSKeySelector;->b:Lcom/nimbusds/jose/JWSAlgorithm;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The expected JWS algorithm cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public selectJWSKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSHeader;",
            "TC;)",
            "Ljava/util/List<",
            "+",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/nimbusds/jose/proc/SingleKeyJWSKeySelector;->b:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/nimbusds/jose/proc/SingleKeyJWSKeySelector;->a:Ljava/util/List;

    return-object p1
.end method
