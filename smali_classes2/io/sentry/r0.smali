.class public final synthetic Lio/sentry/r0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic a:Lio/sentry/SentryTracer;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryTracer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/r0;->a:Lio/sentry/SentryTracer;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/Scope;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/r0;->a:Lio/sentry/SentryTracer;

    invoke-virtual {v0, p1}, Lio/sentry/SentryTracer;->l(Lio/sentry/Scope;)V

    return-void
.end method
