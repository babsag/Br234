.class public abstract Lcom/ca/mas/foundation/MASMultiFactorAuthenticator;
.super Ljava/lang/Object;
.source "MASMultiFactorAuthenticator.java"

# interfaces
.implements Lcom/ca/mas/core/ResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ca/mas/foundation/MASMultiFactorHandler;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ca/mas/core/ResponseInterceptor;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMultiFactorHandler(JLcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASResponse;)Lcom/ca/mas/foundation/MASMultiFactorHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/ca/mas/foundation/MASRequest;",
            "Lcom/ca/mas/foundation/MASResponse<",
            "*>;)TT;"
        }
    .end annotation
.end method

.method public intercept(JLcom/ca/mas/foundation/MASRequest;Landroid/os/Bundle;Lcom/ca/mas/foundation/MASResponse;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/ca/mas/foundation/MASRequest;",
            "Landroid/os/Bundle;",
            "Lcom/ca/mas/foundation/MASResponse<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_1

    invoke-interface {p5}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/ca/mas/foundation/MASMultiFactorAuthenticator;->getMultiFactorHandler(JLcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASResponse;)Lcom/ca/mas/foundation/MASMultiFactorHandler;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    const-string p2, "com.ca.mas.core.service.req.extra.additional.headers"

    .line 3
    invoke-virtual {p4, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/ca/mas/foundation/MASMultiFactorHandler;->a(Ljava/util/Map;)V

    .line 4
    :cond_2
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0, p2, p3, p5, p1}, Lcom/ca/mas/foundation/MASMultiFactorAuthenticator;->onMultiFactorAuthenticationRequest(Landroid/content/Context;Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASResponse;Lcom/ca/mas/foundation/MASMultiFactorHandler;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method protected abstract onMultiFactorAuthenticationRequest(Landroid/content/Context;Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASResponse;Lcom/ca/mas/foundation/MASMultiFactorHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ca/mas/foundation/MASRequest;",
            "Lcom/ca/mas/foundation/MASResponse<",
            "*>;TT;)V"
        }
    .end annotation
.end method
