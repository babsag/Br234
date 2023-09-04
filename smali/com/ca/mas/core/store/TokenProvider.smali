.class public interface abstract Lcom/ca/mas/core/store/TokenProvider;
.super Ljava/lang/Object;
.source "TokenProvider.java"


# virtual methods
.method public abstract createPrivateKey(Landroid/content/Context;I)Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract getClientCertificateChain()[Ljava/security/cert/X509Certificate;
.end method

.method public abstract getClientPrivateKey()Ljava/security/PrivateKey;
.end method

.method public abstract getClientPublicKey()Ljava/security/PublicKey;
.end method

.method public abstract getIdToken()Lcom/ca/mas/core/token/IdToken;
.end method

.method public abstract getMagIdentifier()Ljava/lang/String;
.end method

.method public abstract getSecureIdToken()[B
.end method

.method public abstract getUserProfile()Ljava/lang/String;
.end method

.method public abstract isClientCertificateChainAvailable()Z
.end method
