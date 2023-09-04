.class public final synthetic Lio/sentry/android/core/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/ActivityFramesTracker;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityFramesTracker;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/d;->a:Lio/sentry/android/core/ActivityFramesTracker;

    iput-object p2, p0, Lio/sentry/android/core/d;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lio/sentry/android/core/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/d;->a:Lio/sentry/android/core/ActivityFramesTracker;

    iget-object v1, p0, Lio/sentry/android/core/d;->b:Ljava/lang/Runnable;

    iget-object v2, p0, Lio/sentry/android/core/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/ActivityFramesTracker;->f(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
