.class public final synthetic Lio/sentry/transport/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic a:Lio/sentry/transport/AsyncHttpTransport$c;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/transport/AsyncHttpTransport$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/c;->a:Lio/sentry/transport/AsyncHttpTransport$c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/transport/c;->a:Lio/sentry/transport/AsyncHttpTransport$c;

    check-cast p1, Lio/sentry/hints/DiskFlushNotification;

    invoke-virtual {v0, p1}, Lio/sentry/transport/AsyncHttpTransport$c;->e(Lio/sentry/hints/DiskFlushNotification;)V

    return-void
.end method
