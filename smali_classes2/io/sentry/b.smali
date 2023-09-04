.class public final synthetic Lio/sentry/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/util/HintUtils$SentryConsumer;


# instance fields
.field public final synthetic a:Lio/sentry/EnvelopeSender;

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/EnvelopeSender;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/b;->a:Lio/sentry/EnvelopeSender;

    iput-object p2, p0, Lio/sentry/b;->b:Ljava/lang/Throwable;

    iput-object p3, p0, Lio/sentry/b;->c:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/b;->a:Lio/sentry/EnvelopeSender;

    iget-object v1, p0, Lio/sentry/b;->b:Ljava/lang/Throwable;

    iget-object v2, p0, Lio/sentry/b;->c:Ljava/io/File;

    check-cast p1, Lio/sentry/hints/Retryable;

    invoke-virtual {v0, v1, v2, p1}, Lio/sentry/EnvelopeSender;->f(Ljava/lang/Throwable;Ljava/io/File;Lio/sentry/hints/Retryable;)V

    return-void
.end method
