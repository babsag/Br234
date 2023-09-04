.class public final synthetic Lio/sentry/android/core/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/TransactionFinishedCallback;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/ActivityLifecycleIntegration;

.field public final synthetic b:Ljava/lang/ref/WeakReference;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/j;->a:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iput-object p2, p0, Lio/sentry/android/core/j;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lio/sentry/android/core/j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute(Lio/sentry/ITransaction;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/j;->a:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iget-object v1, p0, Lio/sentry/android/core/j;->b:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lio/sentry/android/core/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->q(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lio/sentry/ITransaction;)V

    return-void
.end method
