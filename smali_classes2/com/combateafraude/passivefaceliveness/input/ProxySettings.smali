.class public Lcom/combateafraude/passivefaceliveness/input/ProxySettings;
.super Ljava/lang/Object;
.source "ProxySettings.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field hostname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hostname"
    .end annotation
.end field

.field mTLSCertificate:Ljava/lang/Integer;

.field mTLSPassword:Ljava/lang/String;

.field password:Ljava/lang/String;

.field port:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "port"
    .end annotation
.end field

.field proxyCertificate:Ljava/lang/Integer;

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->hostname:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->port:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->user:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->password:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->proxyCertificate:Ljava/lang/Integer;

    .line 7
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->mTLSCertificate:Ljava/lang/Integer;

    .line 8
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->mTLSPassword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getMTLSCertificate()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->mTLSCertificate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMTLSPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->mTLSPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->port:I

    return v0
.end method

.method public getProxyCertificate()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->proxyCertificate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->user:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthentication()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->user:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMTLSCertificate()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->mTLSCertificate:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProxyCertificate()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->proxyCertificate:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/ProxySettings;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->user:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->password:Ljava/lang/String;

    return-object p0
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->hostname:Ljava/lang/String;

    return-void
.end method

.method public setMTLSConfig(Ljava/lang/Integer;Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/ProxySettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->mTLSCertificate:Ljava/lang/Integer;

    .line 2
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->mTLSPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->port:I

    return-void
.end method

.method public setProxyCertificate(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/ProxySettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/ProxySettings;->proxyCertificate:Ljava/lang/Integer;

    return-object p0
.end method
