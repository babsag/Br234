.class public interface abstract Lio/sentry/transport/ITransport;
.super Ljava/lang/Object;
.source "ITransport.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract flush(J)V
.end method

.method public abstract send(Lio/sentry/SentryEnvelope;)V
    .param p1    # Lio/sentry/SentryEnvelope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract send(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .param p1    # Lio/sentry/SentryEnvelope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/Hint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
