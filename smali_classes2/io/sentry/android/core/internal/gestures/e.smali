.class public final synthetic Lio/sentry/android/core/internal/gestures/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/android/core/internal/gestures/h;


# static fields
.field public static final synthetic a:Lio/sentry/android/core/internal/gestures/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/core/internal/gestures/e;

    invoke-direct {v0}, Lio/sentry/android/core/internal/gestures/e;-><init>()V

    sput-object v0, Lio/sentry/android/core/internal/gestures/e;->a:Lio/sentry/android/core/internal/gestures/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Z
    .locals 1

    invoke-static {p0}, Lio/sentry/android/core/internal/gestures/g;->a(Lio/sentry/android/core/internal/gestures/h;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->k(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
