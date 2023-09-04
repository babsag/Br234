.class final Lio/sentry/android/core/ActivityFramesTracker$b;
.super Ljava/lang/Object;
.source "ActivityFramesTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/ActivityFramesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lio/sentry/android/core/ActivityFramesTracker$b;->a:I

    .line 4
    iput p2, p0, Lio/sentry/android/core/ActivityFramesTracker$b;->b:I

    .line 5
    iput p3, p0, Lio/sentry/android/core/ActivityFramesTracker$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(IIILio/sentry/android/core/ActivityFramesTracker$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/ActivityFramesTracker$b;-><init>(III)V

    return-void
.end method

.method static synthetic a(Lio/sentry/android/core/ActivityFramesTracker$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/android/core/ActivityFramesTracker$b;->a:I

    return p0
.end method

.method static synthetic b(Lio/sentry/android/core/ActivityFramesTracker$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/android/core/ActivityFramesTracker$b;->b:I

    return p0
.end method

.method static synthetic c(Lio/sentry/android/core/ActivityFramesTracker$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/android/core/ActivityFramesTracker$b;->c:I

    return p0
.end method
