.class public abstract Lcom/ca/mas/core/security/KeyStoreRepository;
.super Ljava/lang/Object;
.source "KeyStoreRepository.java"


# static fields
.field private static final a:Lcom/ca/mas/core/security/KeyStoreRepository;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    sput-boolean v1, Lcom/ca/mas/core/security/KeyStoreRepository;->b:Z

    .line 3
    new-instance v0, Lcom/ca/mas/core/security/AndroidNKeyRepository;

    invoke-direct {v0}, Lcom/ca/mas/core/security/AndroidNKeyRepository;-><init>()V

    sput-object v0, Lcom/ca/mas/core/security/KeyStoreRepository;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    goto :goto_0

    .line 4
    :pswitch_0
    sput-boolean v1, Lcom/ca/mas/core/security/KeyStoreRepository;->b:Z

    .line 5
    new-instance v0, Lcom/ca/mas/core/security/AndroidNKeyRepository;

    invoke-direct {v0}, Lcom/ca/mas/core/security/AndroidNKeyRepository;-><init>()V

    sput-object v0, Lcom/ca/mas/core/security/KeyStoreRepository;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    goto :goto_0

    .line 6
    :pswitch_1
    sput-boolean v1, Lcom/ca/mas/core/security/KeyStoreRepository;->b:Z

    .line 7
    new-instance v0, Lcom/ca/mas/core/security/AndroidMKeyRepository;

    invoke-direct {v0}, Lcom/ca/mas/core/security/AndroidMKeyRepository;-><init>()V

    sput-object v0, Lcom/ca/mas/core/security/KeyStoreRepository;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    goto :goto_0

    .line 8
    :pswitch_2
    sput-boolean v1, Lcom/ca/mas/core/security/KeyStoreRepository;->b:Z

    .line 9
    new-instance v0, Lcom/ca/mas/core/security/AndroidKitKatKeyRepository;

    invoke-direct {v0}, Lcom/ca/mas/core/security/AndroidKitKatKeyRepository;-><init>()V

    sput-object v0, Lcom/ca/mas/core/security/KeyStoreRepository;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    goto :goto_0

    .line 10
    :pswitch_3
    sput-boolean v1, Lcom/ca/mas/core/security/KeyStoreRepository;->b:Z

    .line 11
    new-instance v0, Lcom/ca/mas/core/security/AndroidJellyBeanMR2KeyRepository;

    invoke-direct {v0}, Lcom/ca/mas/core/security/AndroidJellyBeanMR2KeyRepository;-><init>()V

    sput-object v0, Lcom/ca/mas/core/security/KeyStoreRepository;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lcom/ca/mas/core/security/KeyStoreRepository;->b:Z

    .line 13
    new-instance v0, Lcom/ca/mas/core/security/AndroidJellyBeanKeyRepository;

    invoke-direct {v0}, Lcom/ca/mas/core/security/AndroidJellyBeanKeyRepository;-><init>()V

    sput-object v0, Lcom/ca/mas/core/security/KeyStoreRepository;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyStoreRepository()Lcom/ca/mas/core/security/KeyStoreRepository;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/security/KeyStoreRepository;->a:Lcom/ca/mas/core/security/KeyStoreRepository;

    return-object v0
.end method

.method public static isPinRequired()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ca/mas/core/security/KeyStoreRepository;->b:Z

    return v0
.end method


# virtual methods
.method public abstract createPrivateKey(Ljava/lang/String;Lcom/ca/mas/core/security/GenerateKeyAttribute;)Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract deleteCertificateChain(Ljava/lang/String;)V
.end method

.method public abstract deleteKey(Ljava/lang/String;)V
.end method

.method public abstract generateCertificateSigningRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public abstract getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract getPrivateKey(Ljava/lang/String;)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract getPublicKey(Ljava/lang/String;)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract saveCertificateChain(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation
.end method
