.class public final synthetic Landroidx/camera/core/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/CameraX;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:J

.field public final synthetic d:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraX;Ljava/util/concurrent/Executor;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/i;->a:Landroidx/camera/core/CameraX;

    iput-object p2, p0, Landroidx/camera/core/i;->b:Ljava/util/concurrent/Executor;

    iput-wide p3, p0, Landroidx/camera/core/i;->c:J

    iput-object p5, p0, Landroidx/camera/core/i;->d:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/camera/core/i;->a:Landroidx/camera/core/CameraX;

    iget-object v1, p0, Landroidx/camera/core/i;->b:Ljava/util/concurrent/Executor;

    iget-wide v2, p0, Landroidx/camera/core/i;->c:J

    iget-object v4, p0, Landroidx/camera/core/i;->d:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/camera/core/CameraX;->g(Ljava/util/concurrent/Executor;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
