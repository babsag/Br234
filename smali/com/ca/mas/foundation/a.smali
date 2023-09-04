.class Lcom/ca/mas/foundation/a;
.super Ljava/lang/Object;
.source "AuthClientDefaults.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getClientCredentialContainer()Lcom/ca/mas/core/store/ClientCredentialContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/store/ClientCredentialContainer;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/a;->a:Ljava/lang/String;

    const-string v0, "template"

    .line 3
    iput-object v0, p0, Lcom/ca/mas/foundation/a;->b:Ljava/lang/String;

    const-string v0, "code"

    .line 4
    iput-object v0, p0, Lcom/ca/mas/foundation/a;->d:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "msso.oauth.scope"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ca/mas/foundation/a;->e:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "msso.authorize.redirect.uri"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/a;->c:Landroid/net/Uri;

    .line 8
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 9
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v0, 0xb

    .line 10
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/a;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MASDevice;->getCurrentDevice()Lcom/ca/mas/foundation/MASDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASDevice;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/a;->e:Ljava/lang/String;

    const-string v1, "msso_client_register "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msso_register "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/foundation/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/a;->f:Ljava/lang/String;

    return-object v0
.end method
