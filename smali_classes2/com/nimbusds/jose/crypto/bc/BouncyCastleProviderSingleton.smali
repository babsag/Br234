.class public final Lcom/nimbusds/jose/crypto/bc/BouncyCastleProviderSingleton;
.super Ljava/lang/Object;
.source "BouncyCastleProviderSingleton.java"


# static fields
.field private static a:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleProviderSingleton;->a:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/crypto/bc/BouncyCastleProviderSingleton;->a:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    return-object v0
.end method
