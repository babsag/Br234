.class public final synthetic Lio/sentry/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Scope$a;


# instance fields
.field public final synthetic a:Lio/sentry/SentryClient;

.field public final synthetic b:Lio/sentry/SentryEvent;

.field public final synthetic c:Lio/sentry/Hint;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryClient;Lio/sentry/SentryEvent;Lio/sentry/Hint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/w;->a:Lio/sentry/SentryClient;

    iput-object p2, p0, Lio/sentry/w;->b:Lio/sentry/SentryEvent;

    iput-object p3, p0, Lio/sentry/w;->c:Lio/sentry/Hint;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/Session;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/w;->a:Lio/sentry/SentryClient;

    iget-object v1, p0, Lio/sentry/w;->b:Lio/sentry/SentryEvent;

    iget-object v2, p0, Lio/sentry/w;->c:Lio/sentry/Hint;

    invoke-virtual {v0, v1, v2, p1}, Lio/sentry/SentryClient;->k(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/Session;)V

    return-void
.end method
