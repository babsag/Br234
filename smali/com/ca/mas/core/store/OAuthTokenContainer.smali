.class public interface abstract Lcom/ca/mas/core/store/OAuthTokenContainer;
.super Ljava/lang/Object;
.source "OAuthTokenContainer.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract clearAll()V
.end method

.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getExpiry()J
.end method

.method public abstract getGrantedScope()Ljava/lang/String;
.end method

.method public abstract getRefreshToken()Ljava/lang/String;
.end method

.method public abstract saveAccessToken(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract takeRefreshToken()Ljava/lang/String;
.end method
