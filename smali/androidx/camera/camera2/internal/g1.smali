.class public final synthetic Landroidx/camera/camera2/internal/g1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/e3;

.field public final synthetic b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic c:Landroidx/camera/core/FocusMeteringAction;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/e3;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/g1;->a:Landroidx/camera/camera2/internal/e3;

    iput-object p2, p0, Landroidx/camera/camera2/internal/g1;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p3, p0, Landroidx/camera/camera2/internal/g1;->c:Landroidx/camera/core/FocusMeteringAction;

    iput-wide p4, p0, Landroidx/camera/camera2/internal/g1;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/camera/camera2/internal/g1;->a:Landroidx/camera/camera2/internal/e3;

    iget-object v1, p0, Landroidx/camera/camera2/internal/g1;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v2, p0, Landroidx/camera/camera2/internal/g1;->c:Landroidx/camera/core/FocusMeteringAction;

    iget-wide v3, p0, Landroidx/camera/camera2/internal/g1;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/camera/camera2/internal/e3;->L(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;J)V

    return-void
.end method
