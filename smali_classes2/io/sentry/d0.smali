.class public final synthetic Lio/sentry/d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/SentryEnvelopeItem$a;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryEnvelopeItem$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/d0;->a:Lio/sentry/SentryEnvelopeItem$a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/d0;->a:Lio/sentry/SentryEnvelopeItem$a;

    invoke-static {v0}, Lio/sentry/SentryEnvelopeItem;->f(Lio/sentry/SentryEnvelopeItem$a;)[B

    move-result-object v0

    return-object v0
.end method
