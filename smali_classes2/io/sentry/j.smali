.class public final synthetic Lio/sentry/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/JsonObjectDeserializer$b;


# instance fields
.field public final synthetic a:Lio/sentry/JsonObjectReader;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/JsonObjectReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/j;->a:Lio/sentry/JsonObjectReader;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/j;->a:Lio/sentry/JsonObjectReader;

    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
