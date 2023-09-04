.class public interface abstract Lcom/ca/mas/core/policy/MssoAssertion;
.super Ljava/lang/Object;
.source "MssoAssertion.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract init(Lcom/ca/mas/core/context/MssoContext;Landroid/content/Context;)V
    .param p1    # Lcom/ca/mas/core/context/MssoContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract processRequest(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGStateException;,
            Lcom/ca/mas/core/error/MAGException;,
            Lcom/ca/mas/core/error/MAGServerException;
        }
    .end annotation
.end method

.method public abstract processResponse(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/foundation/MASResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGStateException;,
            Lcom/ca/mas/core/error/MAGException;,
            Lcom/ca/mas/core/error/MAGServerException;
        }
    .end annotation
.end method
