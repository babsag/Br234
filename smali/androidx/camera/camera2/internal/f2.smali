.class public final synthetic Landroidx/camera/camera2/internal/f2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/o3;

.field public final synthetic b:Landroidx/camera/core/ZoomState;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/o3;Landroidx/camera/core/ZoomState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/f2;->a:Landroidx/camera/camera2/internal/o3;

    iput-object p2, p0, Landroidx/camera/camera2/internal/f2;->b:Landroidx/camera/core/ZoomState;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/f2;->a:Landroidx/camera/camera2/internal/o3;

    iget-object v1, p0, Landroidx/camera/camera2/internal/f2;->b:Landroidx/camera/core/ZoomState;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/o3;->o(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
