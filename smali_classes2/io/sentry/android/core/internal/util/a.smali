.class public final synthetic Lio/sentry/android/core/internal/util/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field public final synthetic b:Lio/sentry/android/core/BuildInfoProvider;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/a;->a:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/a;->b:Lio/sentry/android/core/BuildInfoProvider;

    return-void
.end method


# virtual methods
.method public final onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/internal/util/a;->a:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/a;->b:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->d(Lio/sentry/android/core/BuildInfoProvider;Landroid/view/Window;Landroid/view/FrameMetrics;I)V

    return-void
.end method
