.class public interface abstract Lcom/ca/mas/core/store/TokenManager;
.super Ljava/lang/Object;
.source "TokenManager.java"

# interfaces
.implements Lcom/ca/mas/core/store/TokenProvider;


# virtual methods
.method public abstract clear()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation
.end method

.method public abstract clearAll()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation
.end method

.method public abstract deleteIdToken()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation
.end method

.method public abstract deleteSecureIdToken()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation
.end method

.method public abstract deleteUserProfile()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation
.end method

.method public abstract getTokenStore()Lcom/ca/mas/core/datasource/DataSource;
.end method

.method public abstract isTokenStoreReady()Z
.end method

.method public abstract saveClientCertificateChain([Ljava/security/cert/X509Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation
.end method

.method public abstract saveIdToken(Lcom/ca/mas/core/token/IdToken;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation
.end method

.method public abstract saveMagIdentifier(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation
.end method

.method public abstract saveSecureIdToken([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation
.end method

.method public abstract saveUserProfile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation
.end method
