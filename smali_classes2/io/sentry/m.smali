.class public final synthetic Lio/sentry/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic a:Lio/sentry/OutboxSender;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/OutboxSender;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/m;->a:Lio/sentry/OutboxSender;

    iput-object p2, p0, Lio/sentry/m;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/m;->a:Lio/sentry/OutboxSender;

    iget-object v1, p0, Lio/sentry/m;->b:Ljava/io/File;

    check-cast p1, Lio/sentry/hints/Retryable;

    invoke-virtual {v0, v1, p1}, Lio/sentry/OutboxSender;->f(Ljava/io/File;Lio/sentry/hints/Retryable;)V

    return-void
.end method
