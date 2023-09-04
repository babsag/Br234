.class Lio/sentry/android/core/internal/gestures/SentryGestureListener$a;
.super Ljava/lang/Object;
.source "SentryGestureListener.java"

# interfaces
.implements Lio/sentry/android/core/internal/gestures/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/internal/gestures/SentryGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/sentry/android/core/internal/gestures/SentryGestureListener;


# direct methods
.method constructor <init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$a;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$a;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    invoke-static {v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->a(Lio/sentry/android/core/internal/gestures/SentryGestureListener;)Z

    move-result v0

    invoke-static {p1, v0}, Lio/sentry/android/core/internal/gestures/i;->e(Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method
