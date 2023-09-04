.class public final synthetic Lio/sentry/transport/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic a:Lio/sentry/transport/AsyncHttpTransport$c;

.field public final synthetic b:Lio/sentry/transport/TransportResult;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/transport/AsyncHttpTransport$c;Lio/sentry/transport/TransportResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/g;->a:Lio/sentry/transport/AsyncHttpTransport$c;

    iput-object p2, p0, Lio/sentry/transport/g;->b:Lio/sentry/transport/TransportResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/transport/g;->a:Lio/sentry/transport/AsyncHttpTransport$c;

    iget-object v1, p0, Lio/sentry/transport/g;->b:Lio/sentry/transport/TransportResult;

    check-cast p1, Lio/sentry/hints/SubmissionResult;

    invoke-virtual {v0, v1, p1}, Lio/sentry/transport/AsyncHttpTransport$c;->o(Lio/sentry/transport/TransportResult;Lio/sentry/hints/SubmissionResult;)V

    return-void
.end method
