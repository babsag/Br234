.class public final synthetic Lio/sentry/android/core/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/AppLifecycleIntegration;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/AppLifecycleIntegration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/s;->a:Lio/sentry/android/core/AppLifecycleIntegration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/s;->a:Lio/sentry/android/core/AppLifecycleIntegration;

    invoke-virtual {v0}, Lio/sentry/android/core/AppLifecycleIntegration;->c()V

    return-void
.end method
