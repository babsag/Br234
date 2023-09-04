.class final Landroidx/camera/core/VideoCapture$e;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field b:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$e;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Landroidx/camera/core/VideoCapture$e;->b:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    return-void
.end method

.method private synthetic a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$e;->b:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic c(Landroidx/camera/core/VideoCapture$OutputFileResults;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$e;->b:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onVideoSaved(Landroidx/camera/core/VideoCapture$OutputFileResults;)V

    return-void
.end method


# virtual methods
.method public synthetic b(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/VideoCapture$e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic d(Landroidx/camera/core/VideoCapture$OutputFileResults;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/VideoCapture$e;->c(Landroidx/camera/core/VideoCapture$OutputFileResults;)V

    return-void
.end method

.method public onError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/q1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/q1;-><init>(Landroidx/camera/core/VideoCapture$e;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "VideoCapture"

    const-string p2, "Unable to post to the supplied executor."

    .line 2
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onVideoSaved(Landroidx/camera/core/VideoCapture$OutputFileResults;)V
    .locals 2
    .param p1    # Landroidx/camera/core/VideoCapture$OutputFileResults;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/r1;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/r1;-><init>(Landroidx/camera/core/VideoCapture$e;Landroidx/camera/core/VideoCapture$OutputFileResults;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "VideoCapture"

    const-string v0, "Unable to post to the supplied executor."

    .line 2
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
