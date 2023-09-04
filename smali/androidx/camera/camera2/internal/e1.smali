.class public final synthetic Landroidx/camera/camera2/internal/e1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/e3;

.field public final synthetic b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/e3;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/e1;->a:Landroidx/camera/camera2/internal/e3;

    iput-object p2, p0, Landroidx/camera/camera2/internal/e1;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/e1;->a:Landroidx/camera/camera2/internal/e3;

    iget-object v1, p0, Landroidx/camera/camera2/internal/e1;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/e3;->v(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
