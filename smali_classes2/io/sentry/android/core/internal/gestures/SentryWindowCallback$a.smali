.class Lio/sentry/android/core/internal/gestures/SentryWindowCallback$a;
.super Ljava/lang/Object;
.source "SentryWindowCallback.java"

# interfaces
.implements Lio/sentry/android/core/internal/gestures/SentryWindowCallback$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/internal/gestures/SentryWindowCallback;-><init>(Landroid/view/Window$Callback;Landroid/content/Context;Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/SentryOptions;)V
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
.method public synthetic a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/core/internal/gestures/f;->a(Lio/sentry/android/core/internal/gestures/SentryWindowCallback$b;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    return-object p1
.end method
