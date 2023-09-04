.class public interface abstract Lcom/ca/mas/core/MobileSso;
.super Ljava/lang/Object;
.source "MobileSso.java"


# virtual methods
.method public abstract authenticate(Lcom/ca/mas/foundation/MASAuthCredentials;Lcom/ca/mas/core/MAGResultReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASAuthCredentials;",
            "Lcom/ca/mas/core/MAGResultReceiver<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract authorize(Ljava/lang/String;Landroid/os/ResultReceiver;)V
.end method

.method public abstract cancelAllRequests(Landroid/os/Bundle;)V
.end method

.method public abstract cancelRequest(JLandroid/os/Bundle;)V
.end method

.method public abstract destroyAllPersistentTokens()V
.end method

.method public abstract getAuthenticationProvider()Lcom/ca/mas/core/service/AuthenticationProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isDeviceRegistered()Z
.end method

.method public abstract isLogin()Z
.end method

.method public abstract processPendingRequests()V
.end method

.method public abstract processRequest(Lcom/ca/mas/foundation/MASRequest;Landroid/os/ResultReceiver;)J
.end method

.method public abstract removeDeviceRegistration()V
.end method
