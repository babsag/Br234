.class public abstract Lbr/com/topaz/heartbeat/StartCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static lock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private alreadyReturned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lbr/com/topaz/heartbeat/StartCallback;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/StartCallback;->alreadyReturned:Z

    return-void
.end method


# virtual methods
.method public final innerOnFailure(I)V
    .locals 1

    sget-object v0, Lbr/com/topaz/heartbeat/StartCallback;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/StartCallback;->alreadyReturned:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lbr/com/topaz/heartbeat/StartCallback;->onFailure(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbr/com/topaz/heartbeat/StartCallback;->alreadyReturned:Z

    :cond_0
    sget-object p1, Lbr/com/topaz/heartbeat/StartCallback;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final innerOnSuccess(I)V
    .locals 1

    sget-object v0, Lbr/com/topaz/heartbeat/StartCallback;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/StartCallback;->alreadyReturned:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lbr/com/topaz/heartbeat/StartCallback;->onSuccess(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbr/com/topaz/heartbeat/StartCallback;->alreadyReturned:Z

    :cond_0
    sget-object p1, Lbr/com/topaz/heartbeat/StartCallback;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public abstract onFailure(I)V
.end method

.method public abstract onSuccess(I)V
.end method
