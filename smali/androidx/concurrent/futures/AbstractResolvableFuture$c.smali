.class final Landroidx/concurrent/futures/AbstractResolvableFuture$c;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final a:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

.field static final b:Landroidx/concurrent/futures/AbstractResolvableFuture$c;


# instance fields
.field final c:Z

.field final d:Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 3
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->a:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 5
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->a:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    :goto_0
    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->c:Z

    .line 3
    iput-object p2, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$c;->d:Ljava/lang/Throwable;

    return-void
.end method
