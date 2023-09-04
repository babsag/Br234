.class public final synthetic Lio/sentry/transport/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryNullableConsumer;


# instance fields
.field public final synthetic a:Lio/sentry/transport/AsyncHttpTransport$c;

.field public final synthetic b:Lio/sentry/SentryEnvelope;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/transport/AsyncHttpTransport$c;Lio/sentry/SentryEnvelope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/b;->a:Lio/sentry/transport/AsyncHttpTransport$c;

    iput-object p2, p0, Lio/sentry/transport/b;->b:Lio/sentry/SentryEnvelope;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/transport/b;->a:Lio/sentry/transport/AsyncHttpTransport$c;

    iget-object v1, p0, Lio/sentry/transport/b;->b:Lio/sentry/SentryEnvelope;

    invoke-virtual {v0, v1, p1}, Lio/sentry/transport/AsyncHttpTransport$c;->g(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)V

    return-void
.end method
