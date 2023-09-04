.class Landroidx/camera/camera2/internal/e3;
.super Ljava/lang/Object;
.source "FocusMeteringControl.java"


# annotations
.annotation build Landroidx/annotation/OptIn;
    markerClass = {
        Landroidx/camera/camera2/interop/ExperimentalCamera2Interop;
    }
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final a:[Landroid/hardware/camera2/params/MeteringRectangle;


# instance fields
.field private final b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile e:Z

.field private volatile f:Landroid/util/Rational;

.field private final g:Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:Z

.field i:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private j:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field l:J

.field m:Z

.field n:Z

.field private o:I

.field private p:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

.field private q:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

.field private r:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private s:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private t:[Landroid/hardware/camera2/params/MeteringRectangle;

.field u:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation
.end field

.field v:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 1
    sput-object v0, Landroidx/camera/camera2/internal/e3;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Quirks;)V
    .locals 4
    .param p1    # Landroidx/camera/camera2/internal/Camera2CameraControlImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/impl/Quirks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/e3;->e:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroidx/camera/camera2/internal/e3;->f:Landroid/util/Rational;

    .line 4
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/e3;->h:Z

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Landroidx/camera/camera2/internal/e3;->i:Ljava/lang/Integer;

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Landroidx/camera/camera2/internal/e3;->l:J

    .line 7
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/e3;->m:Z

    .line 8
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/e3;->n:Z

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Landroidx/camera/camera2/internal/e3;->o:I

    .line 10
    iput-object v1, p0, Landroidx/camera/camera2/internal/e3;->p:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 11
    iput-object v1, p0, Landroidx/camera/camera2/internal/e3;->q:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 12
    sget-object v0, Landroidx/camera/camera2/internal/e3;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Landroidx/camera/camera2/internal/e3;->r:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 13
    iput-object v0, p0, Landroidx/camera/camera2/internal/e3;->s:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 14
    iput-object v0, p0, Landroidx/camera/camera2/internal/e3;->t:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 15
    iput-object v1, p0, Landroidx/camera/camera2/internal/e3;->u:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 16
    iput-object v1, p0, Landroidx/camera/camera2/internal/e3;->v:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 17
    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 18
    iput-object p3, p0, Landroidx/camera/camera2/internal/e3;->c:Ljava/util/concurrent/Executor;

    .line 19
    iput-object p2, p0, Landroidx/camera/camera2/internal/e3;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    new-instance p1, Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;

    invoke-direct {p1, p4}, Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;-><init>(Landroidx/camera/core/impl/Quirks;)V

    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->g:Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;

    return-void
.end method

.method private synthetic A(ZJLandroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p4, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->S()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->i:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 5
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/e3;->n:Z

    .line 6
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/e3;->m:Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 8
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/e3;->n:Z

    .line 9
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/e3;->m:Z

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/e3;->n:Z

    .line 11
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/e3;->m:Z

    .line 12
    :cond_3
    :goto_1
    iget-boolean p1, p0, Landroidx/camera/camera2/internal/e3;->m:Z

    if-eqz p1, :cond_4

    .line 13
    invoke-static {p4, p2, p3}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->q(Landroid/hardware/camera2/TotalCaptureResult;J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    iget-boolean p1, p0, Landroidx/camera/camera2/internal/e3;->n:Z

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/e3;->g(Z)V

    return v3

    .line 15
    :cond_4
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->i:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 16
    iput-object v0, p0, Landroidx/camera/camera2/internal/e3;->i:Ljava/lang/Integer;

    :cond_5
    return v2
.end method

.method private synthetic C(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroidx/camera/camera2/internal/e3;->l:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/e3;->n:Z

    .line 3
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/e3;->g(Z)V

    :cond_0
    return-void
.end method

.method private synthetic E(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/b1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/camera2/internal/b1;-><init>(Landroidx/camera/camera2/internal/e3;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic G(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroidx/camera/camera2/internal/e3;->l:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/e3;->e()V

    :cond_0
    return-void
.end method

.method private synthetic I(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/i1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/camera2/internal/i1;-><init>(Landroidx/camera/camera2/internal/e3;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic K(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/internal/e3;->V(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;J)V

    return-void
.end method

.method private synthetic M(Landroidx/camera/core/FocusMeteringAction;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->c:Ljava/util/concurrent/Executor;

    new-instance v7, Landroidx/camera/camera2/internal/g1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/g1;-><init>(Landroidx/camera/camera2/internal/e3;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;J)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "startFocusAndMetering"

    return-object p1
.end method

.method private static O(III)I
    .locals 0

    .line 1
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private S()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->r:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->k:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/camera/camera2/internal/e3;->k:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->v:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 3
    iput-object v1, p0, Landroidx/camera/camera2/internal/e3;->v:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/camera/camera2/internal/e3;->j:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private j([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Landroidx/camera/core/FocusMeteringAction;J)V
    .locals 2
    .param p1    # [Landroid/hardware/camera2/params/MeteringRectangle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/hardware/camera2/params/MeteringRectangle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Landroid/hardware/camera2/params/MeteringRectangle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/e3;->p:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->J(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 2
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->i()V

    .line 3
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->f()V

    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->r:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5
    iput-object p2, p0, Landroidx/camera/camera2/internal/e3;->s:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 6
    iput-object p3, p0, Landroidx/camera/camera2/internal/e3;->t:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 7
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->S()Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 8
    iput-boolean p2, p0, Landroidx/camera/camera2/internal/e3;->h:Z

    .line 9
    iput-boolean p3, p0, Landroidx/camera/camera2/internal/e3;->m:Z

    .line 10
    iput-boolean p3, p0, Landroidx/camera/camera2/internal/e3;->n:Z

    .line 11
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->Q()J

    move-result-wide v0

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/internal/e3;->X(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Z)V

    goto :goto_0

    .line 13
    :cond_0
    iput-boolean p3, p0, Landroidx/camera/camera2/internal/e3;->h:Z

    .line 14
    iput-boolean p2, p0, Landroidx/camera/camera2/internal/e3;->m:Z

    .line 15
    iput-boolean p3, p0, Landroidx/camera/camera2/internal/e3;->n:Z

    .line 16
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->Q()J

    move-result-wide v0

    .line 17
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->i:Ljava/lang/Integer;

    .line 18
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->r()Z

    move-result p1

    .line 19
    new-instance p2, Landroidx/camera/camera2/internal/h1;

    invoke-direct {p2, p0, p1, v0, v1}, Landroidx/camera/camera2/internal/h1;-><init>(Landroidx/camera/camera2/internal/e3;ZJ)V

    iput-object p2, p0, Landroidx/camera/camera2/internal/e3;->p:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 20
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->a(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 21
    iget-wide p1, p0, Landroidx/camera/camera2/internal/e3;->l:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/camera/camera2/internal/e3;->l:J

    .line 22
    new-instance p3, Landroidx/camera/camera2/internal/c1;

    invoke-direct {p3, p0, p1, p2}, Landroidx/camera/camera2/internal/c1;-><init>(Landroidx/camera/camera2/internal/e3;J)V

    .line 23
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->d:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p3, p5, p6, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/camera2/internal/e3;->k:Ljava/util/concurrent/ScheduledFuture;

    .line 24
    invoke-virtual {p4}, Landroidx/camera/core/FocusMeteringAction;->isAutoCancelEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 25
    new-instance p3, Landroidx/camera/camera2/internal/f1;

    invoke-direct {p3, p0, p1, p2}, Landroidx/camera/camera2/internal/f1;-><init>(Landroidx/camera/camera2/internal/e3;J)V

    .line 26
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    invoke-virtual {p4}, Landroidx/camera/core/FocusMeteringAction;->getAutoCancelDurationInMillis()J

    move-result-wide p4

    .line 28
    invoke-interface {p1, p3, p4, p5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->j:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/e3;->p:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->J(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->u:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    invoke-direct {v1, p1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->u:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_0
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/e3;->q:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->J(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->v:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    invoke-direct {v1, p1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->v:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_0
    return-void
.end method

.method private n()Landroid/util/Rational;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->f:Landroid/util/Rational;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->f:Landroid/util/Rational;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->e()Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Rational;-><init>(II)V

    return-object v1
.end method

.method private static o(Landroidx/camera/core/MeteringPoint;Landroid/util/Rational;Landroid/util/Rational;ILandroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;)Landroid/graphics/PointF;
    .locals 6
    .param p0    # Landroidx/camera/core/MeteringPoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getSurfaceAspectRatio()Landroid/util/Rational;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getSurfaceAspectRatio()Landroid/util/Rational;

    move-result-object p2

    .line 3
    :cond_0
    invoke-virtual {p4, p0, p3}, Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;->getCorrectedPoint(Landroidx/camera/core/MeteringPoint;I)Landroid/graphics/PointF;

    move-result-object p0

    .line 4
    invoke-virtual {p2, p1}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 5
    invoke-virtual {p2, p1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-lez p3, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide p2

    .line 7
    invoke-virtual {p1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    div-double/2addr p2, v4

    double-to-float p1, p2

    float-to-double p2, p1

    sub-double/2addr p2, v2

    div-double/2addr p2, v0

    double-to-float p2, p2

    .line 8
    iget p3, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p3

    div-float/2addr p4, p1

    mul-float p2, p2, p4

    iput p2, p0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    .line 10
    invoke-virtual {p2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide p1

    div-double/2addr v4, p1

    double-to-float p1, v4

    float-to-double p2, p1

    sub-double/2addr p2, v2

    div-double/2addr p2, v0

    double-to-float p2, p2

    .line 11
    iget p3, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p3

    div-float/2addr p4, p1

    mul-float p2, p2, p4

    iput p2, p0, Landroid/graphics/PointF;->x:F

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static p(Landroidx/camera/core/MeteringPoint;Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 5

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    float-to-int p1, v1

    .line 3
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getSize()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 4
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getSize()F

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float p0, p0, v2

    float-to-int p0, p0

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    div-int/lit8 p0, p0, 0x2

    sub-int v4, p1, p0

    add-int/2addr v0, v1

    add-int/2addr p1, p0

    invoke-direct {v2, v3, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    iget p0, v2, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p0, p1, v0}, Landroidx/camera/camera2/internal/e3;->O(III)I

    move-result p0

    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 7
    iget p0, v2, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p0, p1, v0}, Landroidx/camera/camera2/internal/e3;->O(III)I

    move-result p0

    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 8
    iget p0, v2, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p0, p1, v0}, Landroidx/camera/camera2/internal/e3;->O(III)I

    move-result p0

    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 9
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/internal/e3;->O(III)I

    move-result p0

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 10
    new-instance p0, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 p1, 0x3e8

    invoke-direct {p0, v2, p1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object p0
.end method

.method private q(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/MeteringPoint;",
            ">;I",
            "Landroid/util/Rational;",
            "Landroid/graphics/Rect;",
            "I)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Landroid/util/Rational;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 4
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/MeteringPoint;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v2}, Landroidx/camera/camera2/internal/e3;->t(Landroidx/camera/core/MeteringPoint;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget-object v3, p0, Landroidx/camera/camera2/internal/e3;->g:Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;

    invoke-static {v2, v1, p3, p5, v3}, Landroidx/camera/camera2/internal/e3;->o(Landroidx/camera/core/MeteringPoint;Landroid/util/Rational;Landroid/util/Rational;ILandroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;)Landroid/graphics/PointF;

    move-result-object v3

    .line 9
    invoke-static {v2, v3, p4}, Landroidx/camera/camera2/internal/e3;->p(Landroidx/camera/core/MeteringPoint;Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_5
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 13
    :cond_6
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->k(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static t(Landroidx/camera/core/MeteringPoint;)Z
    .locals 3
    .param p0    # Landroidx/camera/core/MeteringPoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getX()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getY()F

    move-result p0

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic u(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/e3;->d(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method private synthetic w(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/e1;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/e1;-><init>(Landroidx/camera/camera2/internal/e3;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "cancelFocusAndMetering"

    return-object p1
.end method

.method private synthetic y(IJLandroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p4, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 3
    invoke-static {p4, p2, p3}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->q(Landroid/hardware/camera2/TotalCaptureResult;J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->h()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public synthetic B(ZJLandroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/internal/e3;->A(ZJLandroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method

.method public synthetic D(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/e3;->C(J)V

    return-void
.end method

.method public synthetic F(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/e3;->E(J)V

    return-void
.end method

.method public synthetic H(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/e3;->G(J)V

    return-void
.end method

.method public synthetic J(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/e3;->I(J)V

    return-void
.end method

.method public synthetic L(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/internal/e3;->K(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;J)V

    return-void
.end method

.method public synthetic N(Landroidx/camera/core/FocusMeteringAction;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/internal/e3;->M(Landroidx/camera/core/FocusMeteringAction;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method P(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/e3;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/e3;->e:Z

    .line 3
    iget-boolean p1, p0, Landroidx/camera/camera2/internal/e3;->e:Z

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/e3;->e()V

    :cond_1
    return-void
.end method

.method public Q(Landroid/util/Rational;)V
    .locals 0
    .param p1    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->f:Landroid/util/Rational;

    return-void
.end method

.method R(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/camera/camera2/internal/e3;->o:I

    return-void
.end method

.method T(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Landroidx/camera/core/FocusMeteringAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/FocusMeteringAction;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x1388

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Landroidx/camera/camera2/internal/e3;->U(Landroidx/camera/core/FocusMeteringAction;J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method U(Landroidx/camera/core/FocusMeteringAction;J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # Landroidx/camera/core/FocusMeteringAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/FocusMeteringAction;",
            "J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/camera2/internal/d1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/internal/d1;-><init>(Landroidx/camera/camera2/internal/e3;Landroidx/camera/core/FocusMeteringAction;J)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method V(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;J)V
    .locals 10
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/FocusMeteringAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;",
            "Landroidx/camera/core/FocusMeteringAction;",
            "J)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/e3;->e:Z

    if-nez v0, :cond_0

    .line 2
    new-instance p2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string p3, "Camera is not active."

    invoke-direct {p2, p3}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->e()Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->n()Landroid/util/Rational;

    move-result-object v7

    .line 5
    invoke-virtual {p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAf()Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 6
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->g()I

    move-result v3

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v7

    move-object v5, v0

    .line 7
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/e3;->q(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object v8

    .line 8
    invoke-virtual {p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAe()Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 9
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->f()I

    move-result v3

    const/4 v6, 0x2

    move-object v1, p0

    .line 10
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/e3;->q(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object v9

    .line 11
    invoke-virtual {p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAwb()Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 12
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->h()I

    move-result v3

    const/4 v6, 0x4

    move-object v1, p0

    .line 13
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/e3;->q(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "None of the specified AF/AE/AWB MeteringPoints is supported on this camera."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void

    :cond_1
    const-string v1, "Cancelled by another startFocusAndMetering()"

    .line 16
    invoke-direct {p0, v1}, Landroidx/camera/camera2/internal/e3;->k(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, v1}, Landroidx/camera/camera2/internal/e3;->l(Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->i()V

    .line 19
    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->u:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 20
    sget-object p1, Landroidx/camera/camera2/internal/e3;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 21
    invoke-interface {v8, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 22
    invoke-interface {v9, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-object v2, p0

    move-object v6, p2

    move-wide v7, p3

    .line 24
    invoke-direct/range {v2 .. v8}, Landroidx/camera/camera2/internal/e3;->j([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Landroidx/camera/core/FocusMeteringAction;J)V

    return-void
.end method

.method W(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 4
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/e3;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v1, "Camera is not active."

    invoke-direct {v0, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 4
    iget v1, p0, Landroidx/camera/camera2/internal/e3;->o:I

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 6
    new-instance v2, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 7
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9
    invoke-virtual {v2, v3, v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 10
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 11
    new-instance v1, Landroidx/camera/camera2/internal/e3$b;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/e3$b;-><init>(Landroidx/camera/camera2/internal/e3;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 12
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->O(Ljava/util/List;)V

    return-void
.end method

.method X(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Z)V
    .locals 5
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/impl/CameraCaptureResult;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/e3;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    new-instance p2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v0, "Camera is not active."

    invoke-direct {p2, v0}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 4
    iget v1, p0, Landroidx/camera/camera2/internal/e3;->o:I

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 6
    new-instance v2, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 7
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 9
    invoke-virtual {v2, v3, v4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    if-eqz p2, :cond_2

    .line 10
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 11
    invoke-virtual {v3, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->j(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 12
    invoke-virtual {v2, p2, v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 13
    :cond_2
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 14
    new-instance p2, Landroidx/camera/camera2/internal/e3$a;

    invoke-direct {p2, p0, p1}, Landroidx/camera/camera2/internal/e3$a;-><init>(Landroidx/camera/camera2/internal/e3;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {v0, p2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 15
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->O(Ljava/util/List;)V

    return-void
.end method

.method a(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .locals 3
    .param p1    # Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/e3;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/e3;->m()I

    move-result v0

    .line 3
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 4
    invoke-virtual {v2, v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->k(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 6
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->r:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v1, v0

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->s:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v1, v0

    if-eqz v1, :cond_2

    .line 9
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 10
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->t:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v1, v0

    if-eqz v1, :cond_3

    .line 11
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    :cond_3
    return-void
.end method

.method b(ZZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/e3;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 4
    iget v1, p0, Landroidx/camera/camera2/internal/e3;->o:I

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 5
    new-instance v1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 6
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8
    invoke-virtual {v1, p1, v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 9
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt p1, v3, :cond_2

    if-eqz p2, :cond_2

    .line 10
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 12
    invoke-virtual {v1, p1, p2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 13
    :cond_2
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 14
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->O(Ljava/util/List;)V

    return-void
.end method

.method c()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/camera2/internal/a1;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/a1;-><init>(Landroidx/camera/camera2/internal/e3;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method d(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 3
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Cancelled by another cancelFocusAndMetering()"

    .line 1
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/e3;->l(Ljava/lang/String;)V

    const-string v0, "Cancelled by cancelFocusAndMetering()"

    .line 2
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/e3;->k(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->v:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 4
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->i()V

    .line 5
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->f()V

    .line 6
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->S()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/internal/e3;->b(ZZ)V

    .line 8
    :cond_0
    sget-object p1, Landroidx/camera/camera2/internal/e3;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->r:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 9
    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->s:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 10
    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->t:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 11
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/e3;->h:Z

    .line 12
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->Q()J

    move-result-wide v0

    .line 13
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->v:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/e3;->m()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->k(I)I

    move-result p1

    .line 15
    new-instance v2, Landroidx/camera/camera2/internal/z0;

    invoke-direct {v2, p0, p1, v0, v1}, Landroidx/camera/camera2/internal/z0;-><init>(Landroidx/camera/camera2/internal/e3;IJ)V

    iput-object v2, p0, Landroidx/camera/camera2/internal/e3;->q:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 16
    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1, v2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->a(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    :cond_1
    return-void
.end method

.method e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/e3;->d(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method g(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->f()V

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->u:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Landroidx/camera/core/FocusMeteringResult;->create(Z)Landroidx/camera/core/FocusMeteringResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/internal/e3;->u:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_0
    return-void
.end method

.method m()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/e3;->o:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    return v1
.end method

.method s(Landroidx/camera/core/FocusMeteringAction;)Z
    .locals 10
    .param p1    # Landroidx/camera/core/FocusMeteringAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->e()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Landroidx/camera/camera2/internal/e3;->n()Landroid/util/Rational;

    move-result-object v7

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAf()Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 4
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->g()I

    move-result v3

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v7

    move-object v5, v0

    .line 5
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/e3;->q(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object v8

    .line 6
    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAe()Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 7
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->f()I

    move-result v3

    const/4 v6, 0x2

    move-object v1, p0

    .line 8
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/e3;->q(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object v9

    .line 9
    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAwb()Ljava/util/List;

    move-result-object v2

    iget-object p1, p0, Landroidx/camera/camera2/internal/e3;->b:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 10
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->h()I

    move-result v3

    const/4 v6, 0x4

    .line 11
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/e3;->q(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public synthetic v(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/e3;->u(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public synthetic x(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/e3;->w(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic z(IJLandroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/internal/e3;->y(IJLandroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
