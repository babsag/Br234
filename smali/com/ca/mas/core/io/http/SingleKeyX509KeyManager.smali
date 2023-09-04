.class public Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SingleKeyX509KeyManager.java"


# instance fields
.field private final a:[Ljava/security/cert/X509Certificate;

.field private final b:Ljava/security/PrivateKey;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    const-string v0, "certChain"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "privateKey"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->a:[Ljava/security/cert/X509Certificate;

    .line 6
    iput-object p1, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->b:Ljava/security/PrivateKey;

    const-string p1, "clientCert"

    .line 7
    iput-object p1, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->c:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "certChain is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->c:Ljava/lang/String;

    return-object p1
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->c:Ljava/lang/String;

    return-object p1
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->c:Ljava/lang/String;

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->c:Ljava/lang/String;

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->a:[Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 1
    iget-object p2, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->c:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->b:Ljava/security/PrivateKey;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 1
    iget-object p2, p0, Lcom/ca/mas/core/io/http/SingleKeyX509KeyManager;->c:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-object p1
.end method
