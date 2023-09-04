.class public Lcaf/io/f;
.super Ljava/lang/Object;
.source "AudioHelper.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/app/Activity;

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcaf/io/f;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcaf/io/f;->c:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcaf/io/f;->d:Landroid/media/MediaPlayer;

    .line 5
    iput-object p1, p0, Lcaf/io/f;->b:Landroid/app/Activity;

    return-void
.end method

.method private synthetic b(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcaf/io/f;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcaf/io/f;->c:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcaf/io/f;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 6
    iget-object v0, p0, Lcaf/io/f;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcaf/io/f;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcaf/io/f;->d:Landroid/media/MediaPlayer;

    .line 7
    invoke-direct {p0}, Lcaf/io/f;->c()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcaf/io/f;->d:Landroid/media/MediaPlayer;

    .line 9
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/f;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcaf/io/d1;

    invoke-direct {v1, p0}, Lcaf/io/d1;-><init>(Lcaf/io/f;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3
    iget-object v0, p0, Lcaf/io/f;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method private synthetic d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/f;->c:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcaf/io/f;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcaf/io/f;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcaf/io/f;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcaf/io/f;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcaf/io/f;->d:Landroid/media/MediaPlayer;

    .line 5
    :cond_0
    invoke-direct {p0}, Lcaf/io/f;->c()V

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic e(Lcaf/io/f;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcaf/io/f;->b(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic f(Lcaf/io/f;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcaf/io/f;->d(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcaf/io/f;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5
    iget-object v0, p0, Lcaf/io/f;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcaf/io/f;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcaf/io/f;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcaf/io/e1;

    invoke-direct {v1, p0, p1}, Lcaf/io/e1;-><init>(Lcaf/io/f;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
