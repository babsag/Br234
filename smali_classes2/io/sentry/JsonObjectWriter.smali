.class public final Lio/sentry/JsonObjectWriter;
.super Lio/sentry/vendor/gson/stream/JsonWriter;
.source "JsonObjectWriter.java"


# instance fields
.field private final l:Lio/sentry/JsonObjectSerializer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance p1, Lio/sentry/JsonObjectSerializer;

    invoke-direct {p1, p2}, Lio/sentry/JsonObjectSerializer;-><init>(I)V

    iput-object p1, p0, Lio/sentry/JsonObjectWriter;->l:Lio/sentry/JsonObjectSerializer;

    return-void
.end method


# virtual methods
.method public name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    return-object p0
.end method

.method public bridge synthetic name(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;
    .locals 1
    .param p1    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/JsonObjectWriter;->l:Lio/sentry/JsonObjectSerializer;

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/JsonObjectSerializer;->serialize(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V

    return-object p0
.end method
