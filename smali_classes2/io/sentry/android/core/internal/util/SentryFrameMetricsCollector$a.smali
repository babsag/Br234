.class Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$a;
.super Ljava/lang/Object;
.source "SentryFrameMetricsCollector.java"

# interfaces
.implements Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/BuildInfoProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic addOnFrameMetricsAvailableListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/android/core/internal/util/c;->a(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic removeOnFrameMetricsAvailableListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/android/core/internal/util/c;->b(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    return-void
.end method
