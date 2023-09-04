.class public Lcom/ca/mas/core/security/AndroidKitKatKeyRepository;
.super Lcom/ca/mas/core/security/AndroidJellyBeanMR2KeyRepository;
.source "AndroidKitKatKeyRepository.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x13
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/security/AndroidJellyBeanMR2KeyRepository;-><init>()V

    return-void
.end method


# virtual methods
.method c(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 3

    .line 1
    new-instance v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    invoke-virtual {p2}, Lcom/ca/mas/core/security/GenerateKeyAttribute;->getKeySize()I

    move-result v1

    sget-object v2, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/ca/mas/core/security/AndroidJellyBeanMR2KeyRepository;->c(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    return-object p1
.end method
