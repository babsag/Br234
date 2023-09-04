.class public Lcom/ca/mas/foundation/JWKPreLoadListener;
.super Ljava/lang/Object;
.source "JWKPreLoadListener.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASLifecycleListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticated()V
    .locals 0

    return-void
.end method

.method public onDeRegistered()V
    .locals 0

    return-void
.end method

.method public onDeviceRegistered()V
    .locals 0

    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ca/mas/core/token/JWTRS256Validator;

    invoke-direct {v0}, Lcom/ca/mas/core/token/JWTRS256Validator;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/ca/mas/core/token/JWTRS256Validator;->loadJWKS(Lcom/ca/mas/core/MASCallbackFuture;)V

    return-void
.end method
