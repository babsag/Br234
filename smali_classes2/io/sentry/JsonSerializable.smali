.class public interface abstract Lio/sentry/JsonSerializable;
.super Ljava/lang/Object;
.source "JsonSerializable.java"


# virtual methods
.method public abstract serialize(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;)V
    .param p1    # Lio/sentry/JsonObjectWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
