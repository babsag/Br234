.class final Lio/sentry/transport/ReusableCountLatch$a;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ReusableCountLatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/ReusableCountLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setState(I)V

    return-void
.end method

.method static synthetic a(Lio/sentry/transport/ReusableCountLatch$a;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/transport/ReusableCountLatch$a;->e()I

    move-result p0

    return p0
.end method

.method static synthetic b(Lio/sentry/transport/ReusableCountLatch$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/transport/ReusableCountLatch$a;->d()V

    return-void
.end method

.method static synthetic c(Lio/sentry/transport/ReusableCountLatch$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/transport/ReusableCountLatch$a;->f()V

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->releaseShared(I)Z

    return-void
.end method

.method private e()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    return v0
.end method

.method private f()V
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method public tryAcquireShared(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public tryReleaseShared(I)Z
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 2
    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
