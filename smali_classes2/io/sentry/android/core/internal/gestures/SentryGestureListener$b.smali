.class final Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;
.super Ljava/lang/Object;
.source "SentryGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/gestures/SentryGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->b:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->c:F

    .line 5
    iput v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->d:F

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener$a;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic b(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->i(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->j()V

    return-void
.end method

.method static synthetic f(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->c:F

    return p1
.end method

.method static synthetic g(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->d:F

    return p1
.end method

.method static synthetic h(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->k(Landroid/view/View;)V

    return-void
.end method

.method private i(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->c:F

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->d:F

    sub-float/2addr p1, v1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    cmpl-float p1, v0, v3

    if-lez p1, :cond_0

    const-string p1, "right"

    goto :goto_0

    :cond_0
    const-string p1, "left"

    goto :goto_0

    :cond_1
    cmpl-float p1, p1, v3

    if-lez p1, :cond_2

    const-string p1, "down"

    goto :goto_0

    :cond_2
    const-string p1, "up"

    :goto_0
    return-object p1
.end method

.method private j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->c:F

    .line 4
    iput v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->d:F

    return-void
.end method

.method private k(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method
