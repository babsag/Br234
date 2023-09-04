.class public final Lio/sentry/android/core/internal/gestures/SentryGestureListener;
.super Ljava/lang/Object;
.source "SentryGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;
    }
.end annotation

.annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/sentry/IHub;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Z

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lio/sentry/ITransaction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;Z)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->e:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->f:Lio/sentry/ITransaction;

    .line 4
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->g:Ljava/lang/String;

    .line 5
    new-instance v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    invoke-direct {v1, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener$a;)V

    iput-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->a:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->b:Lio/sentry/IHub;

    .line 8
    iput-object p3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 9
    iput-boolean p4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->d:Z

    return-void
.end method

.method static synthetic a(Lio/sentry/android/core/internal/gestures/SentryGestureListener;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->d:Z

    return p0
.end method

.method private b(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    new-instance v1, Lio/sentry/Hint;

    invoke-direct {v1}, Lio/sentry/Hint;-><init>()V

    const-string v2, "android:motionEvent"

    .line 4
    invoke-virtual {v1, v2, p4}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "android:view"

    .line 5
    invoke-virtual {v1, p4, p1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object p4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->b:Lio/sentry/IHub;

    .line 7
    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/i;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p2, p1, v0, p3}, Lio/sentry/Breadcrumb;->userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;

    move-result-object p1

    .line 9
    invoke-interface {p4, p1, v1}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ". No breadcrumb captured."

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity is null in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-interface {v0, v4, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Window is null in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v4, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 11
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecorView is null in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    invoke-interface {v0, v4, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method private f(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic g(Lio/sentry/Scope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V
    .locals 2

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Lio/sentry/Scope;->setTransaction(Lio/sentry/ITransaction;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-interface {p2}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    .line 5
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic i(Lio/sentry/Scope;Lio/sentry/ITransaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->f:Lio/sentry/ITransaction;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/sentry/Scope;->clearTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic k(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/internal/gestures/i;->f(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic l(Lio/sentry/ITransaction;Lio/sentry/Scope;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c(Lio/sentry/Scope;Lio/sentry/ITransaction;)V

    return-void
.end method

.method private synthetic n(Lio/sentry/Scope;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->d(Lio/sentry/Scope;)V

    return-void
.end method

.method private p(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionTracing()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Activity is null, no transaction captured."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    :try_start_0
    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/i;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->e:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 6
    :goto_0
    iget-object v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->f:Lio/sentry/ITransaction;

    if-eqz v4, :cond_5

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->f:Lio/sentry/ITransaction;

    .line 9
    invoke-interface {v3}, Lio/sentry/ISpan;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 10
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 11
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The view with id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has an ongoing transaction assigned. Rescheduling finish"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->f:Lio/sentry/ITransaction;

    invoke-interface {p1}, Lio/sentry/ITransaction;->scheduleFinish()V

    :cond_3
    return-void

    .line 15
    :cond_4
    sget-object v1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-virtual {p0, v1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->q(Lio/sentry/SpanStatus;)V

    .line 16
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui.action."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v2, Lio/sentry/TransactionOptions;

    invoke-direct {v2}, Lio/sentry/TransactionOptions;-><init>()V

    const/4 v3, 0x1

    .line 19
    invoke-virtual {v2, v3}, Lio/sentry/TransactionOptions;->setWaitForChildren(Z)V

    .line 20
    iget-object v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/sentry/TransactionOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 21
    invoke-virtual {v2, v3}, Lio/sentry/TransactionOptions;->setTrimEnd(Z)V

    .line 22
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->b:Lio/sentry/IHub;

    new-instance v4, Lio/sentry/TransactionContext;

    sget-object v5, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    invoke-direct {v4, v0, v5, v1}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;)V

    .line 23
    invoke-interface {v3, v4, v2}, Lio/sentry/IHub;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->b:Lio/sentry/IHub;

    new-instance v2, Lio/sentry/android/core/internal/gestures/a;

    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/internal/gestures/a;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/ITransaction;)V

    invoke-interface {v1, v2}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 25
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->f:Lio/sentry/ITransaction;

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->e:Ljava/lang/ref/WeakReference;

    .line 27
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->g:Ljava/lang/String;

    return-void

    .line 28
    :catch_0
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 29
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "View id cannot be retrieved from Resources, no transaction captured."

    .line 30
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method c(Lio/sentry/Scope;Lio/sentry/ITransaction;)V
    .locals 1
    .param p1    # Lio/sentry/Scope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/ITransaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/android/core/internal/gestures/b;

    invoke-direct {v0, p0, p1, p2}, Lio/sentry/android/core/internal/gestures/b;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/Scope;Lio/sentry/ITransaction;)V

    invoke-virtual {p1, v0}, Lio/sentry/Scope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method d(Lio/sentry/Scope;)V
    .locals 1
    .param p1    # Lio/sentry/Scope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/android/core/internal/gestures/d;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/internal/gestures/d;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/Scope;)V

    invoke-virtual {p1, v0}, Lio/sentry/Scope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method public synthetic h(Lio/sentry/Scope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->g(Lio/sentry/Scope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V

    return-void
.end method

.method public synthetic j(Lio/sentry/Scope;Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->i(Lio/sentry/Scope;Lio/sentry/ITransaction;)V

    return-void
.end method

.method public synthetic m(Lio/sentry/ITransaction;Lio/sentry/Scope;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->l(Lio/sentry/ITransaction;Lio/sentry/Scope;)V

    return-void
.end method

.method public synthetic o(Lio/sentry/Scope;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->n(Lio/sentry/Scope;)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    invoke-static {v1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->e(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;)V

    .line 2
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v1, v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->f(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;F)F

    .line 3
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v1, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->g(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;F)F

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    const-string p2, "swipe"

    invoke-static {p1, p2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->c(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "onScroll"

    .line 1
    invoke-direct {p0, p2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->e(Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    invoke-static {p4}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->b(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    new-instance v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$a;

    invoke-direct {v0, p0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$a;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;)V

    .line 5
    invoke-static {p2, p4, p1, v0}, Lio/sentry/android/core/internal/gestures/i;->a(Landroid/view/View;FFLio/sentry/android/core/internal/gestures/h;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array p4, p3, [Ljava/lang/Object;

    const-string v0, "Unable to find scroll target. No breadcrumb captured."

    .line 8
    invoke-interface {p1, p2, v0, p4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    .line 9
    :cond_1
    iget-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    invoke-static {p2, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->h(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    const-string p2, "scroll"

    invoke-static {p1, p2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->c(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "onSingleTapUp"

    .line 1
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->e(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget-object v4, Lio/sentry/android/core/internal/gestures/e;->a:Lio/sentry/android/core/internal/gestures/e;

    .line 4
    invoke-static {v0, v2, v3, v4}, Lio/sentry/android/core/internal/gestures/i;->a(Landroid/view/View;FFLio/sentry/android/core/internal/gestures/h;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 6
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unable to find click target. No breadcrumb captured."

    .line 7
    invoke-interface {p1, v0, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 8
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "click"

    invoke-direct {p0, v0, v3, v2, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->b(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Landroid/view/MotionEvent;)V

    .line 9
    invoke-direct {p0, v0, v3}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->p(Landroid/view/View;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "onUp"

    .line 1
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->e(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    invoke-static {v1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->a(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    invoke-static {v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->b(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unable to define scroll type. No breadcrumb captured."

    .line 6
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    invoke-static {v0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->d(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    .line 9
    invoke-static {v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->b(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "direction"

    .line 10
    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 11
    invoke-direct {p0, v1, v2, v0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->b(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Landroid/view/MotionEvent;)V

    .line 12
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->b(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->p(Landroid/view/View;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->h:Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;

    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;->e(Lio/sentry/android/core/internal/gestures/SentryGestureListener$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method q(Lio/sentry/SpanStatus;)V
    .locals 1
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->f:Lio/sentry/ITransaction;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->b:Lio/sentry/IHub;

    new-instance v0, Lio/sentry/android/core/internal/gestures/c;

    invoke-direct {v0, p0}, Lio/sentry/android/core/internal/gestures/c;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;)V

    invoke-interface {p1, v0}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->f:Lio/sentry/ITransaction;

    .line 5
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 7
    :cond_1
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->g:Ljava/lang/String;

    return-void
.end method
