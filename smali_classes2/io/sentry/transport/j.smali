.class public final synthetic Lio/sentry/transport/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/sentry/transport/j;->a:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lio/sentry/transport/j;->a:Z

    check-cast p1, Lio/sentry/hints/Retryable;

    invoke-static {v0, p1}, Lio/sentry/transport/AsyncHttpTransport;->g(ZLio/sentry/hints/Retryable;)V

    return-void
.end method
