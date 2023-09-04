.class public final Lio/sentry/SentryBaseEvent$Serializer;
.super Ljava/lang/Object;
.source "SentryBaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Serializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lio/sentry/SentryBaseEvent;Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;)V
    .locals 2
    .param p1    # Lio/sentry/SentryBaseEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/JsonObjectWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->a(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "event_id"

    .line 2
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->a(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    :cond_0
    const-string v0, "contexts"

    .line 3
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->c(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 4
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->j(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "sdk"

    .line 5
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->j(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/SdkVersion;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 6
    :cond_1
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->l(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/Request;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "request"

    .line 7
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->l(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/Request;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 8
    :cond_2
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->n(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->n(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tags"

    .line 9
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->n(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 10
    :cond_3
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->p(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "release"

    .line 11
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->p(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 12
    :cond_4
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->r(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "environment"

    .line 13
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->r(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 14
    :cond_5
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->t(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "platform"

    .line 15
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->t(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 16
    :cond_6
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->v(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/User;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "user"

    .line 17
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->v(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/User;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 18
    :cond_7
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->x(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "server_name"

    .line 19
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->x(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 20
    :cond_8
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->d(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "dist"

    .line 21
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->d(Lio/sentry/SentryBaseEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 22
    :cond_9
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->f(Lio/sentry/SentryBaseEvent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->f(Lio/sentry/SentryBaseEvent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "breadcrumbs"

    .line 23
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->f(Lio/sentry/SentryBaseEvent;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 24
    :cond_a
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->h(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->h(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "extra"

    .line 25
    invoke-virtual {p2, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object p2

    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->h(Lio/sentry/SentryBaseEvent;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    :cond_b
    return-void
.end method
