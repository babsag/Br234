.class public final Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;
.super Ljava/lang/Object;
.source "AuthenticatedCipherText.java"


# annotations
.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# instance fields
.field private final a:[B

.field private final b:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->a:[B

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p0, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->b:[B

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The authentication tag must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The cipher text must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAuthenticationTag()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->b:[B

    return-object v0
.end method

.method public getCipherText()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;->a:[B

    return-object v0
.end method
