.class public final synthetic Landroidx/camera/camera2/internal/d1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/e3;

.field public final synthetic b:Landroidx/camera/core/FocusMeteringAction;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/e3;Landroidx/camera/core/FocusMeteringAction;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/d1;->a:Landroidx/camera/camera2/internal/e3;

    iput-object p2, p0, Landroidx/camera/camera2/internal/d1;->b:Landroidx/camera/core/FocusMeteringAction;

    iput-wide p3, p0, Landroidx/camera/camera2/internal/d1;->c:J

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/d1;->a:Landroidx/camera/camera2/internal/e3;

    iget-object v1, p0, Landroidx/camera/camera2/internal/d1;->b:Landroidx/camera/core/FocusMeteringAction;

    iget-wide v2, p0, Landroidx/camera/camera2/internal/d1;->c:J

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/camera/camera2/internal/e3;->N(Landroidx/camera/core/FocusMeteringAction;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
