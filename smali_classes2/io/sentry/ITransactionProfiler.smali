.class public interface abstract Lio/sentry/ITransactionProfiler;
.super Ljava/lang/Object;
.source "ITransactionProfiler.java"


# annotations
.annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
.end annotation


# virtual methods
.method public abstract onTransactionFinish(Lio/sentry/ITransaction;)V
    .param p1    # Lio/sentry/ITransaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onTransactionStart(Lio/sentry/ITransaction;)V
    .param p1    # Lio/sentry/ITransaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
