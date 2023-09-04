.class public final synthetic Lio/sentry/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic a:Lio/sentry/EnvelopeSender;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/EnvelopeSender;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/d;->a:Lio/sentry/EnvelopeSender;

    iput-object p2, p0, Lio/sentry/d;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/d;->a:Lio/sentry/EnvelopeSender;

    iget-object v1, p0, Lio/sentry/d;->b:Ljava/io/File;

    check-cast p1, Lio/sentry/hints/Retryable;

    invoke-virtual {v0, v1, p1}, Lio/sentry/EnvelopeSender;->h(Ljava/io/File;Lio/sentry/hints/Retryable;)V

    return-void
.end method
