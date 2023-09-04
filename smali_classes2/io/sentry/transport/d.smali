.class public final synthetic Lio/sentry/transport/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryHintFallback;


# instance fields
.field public final synthetic a:Lio/sentry/transport/AsyncHttpTransport$c;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/transport/AsyncHttpTransport$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/d;->a:Lio/sentry/transport/AsyncHttpTransport$c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/transport/d;->a:Lio/sentry/transport/AsyncHttpTransport$c;

    invoke-virtual {v0, p1, p2}, Lio/sentry/transport/AsyncHttpTransport$c;->m(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
