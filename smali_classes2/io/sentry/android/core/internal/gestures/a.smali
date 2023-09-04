.class public final synthetic Lio/sentry/android/core/internal/gestures/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

.field public final synthetic b:Lio/sentry/ITransaction;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/a;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/a;->b:Lio/sentry/ITransaction;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/Scope;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/a;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/a;->b:Lio/sentry/ITransaction;

    invoke-virtual {v0, v1, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->m(Lio/sentry/ITransaction;Lio/sentry/Scope;)V

    return-void
.end method
