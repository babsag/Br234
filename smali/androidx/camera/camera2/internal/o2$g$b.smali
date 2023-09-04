.class Landroidx/camera/camera2/internal/o2$g$b;
.super Ljava/lang/Object;
.source "Camera2CameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/o2$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private b:Z

.field final synthetic c:Landroidx/camera/camera2/internal/o2$g;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/o2$g;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Landroidx/camera/camera2/internal/o2$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/internal/o2$g$b;->c:Landroidx/camera/camera2/internal/o2$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/o2$g$b;->b:Z

    .line 3
    iput-object p2, p0, Landroidx/camera/camera2/internal/o2$g$b;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/o2$g$b;->b:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2$g$b;->c:Landroidx/camera/camera2/internal/o2$g;

    iget-object v0, v0, Landroidx/camera/camera2/internal/o2$g;->f:Landroidx/camera/camera2/internal/o2;

    iget-object v0, v0, Landroidx/camera/camera2/internal/o2;->e:Landroidx/camera/camera2/internal/o2$f;

    sget-object v1, Landroidx/camera/camera2/internal/o2$f;->REOPENING:Landroidx/camera/camera2/internal/o2$f;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 3
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2$g$b;->c:Landroidx/camera/camera2/internal/o2$g;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/o2$g;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2$g$b;->c:Landroidx/camera/camera2/internal/o2$g;

    iget-object v0, v0, Landroidx/camera/camera2/internal/o2$g;->f:Landroidx/camera/camera2/internal/o2;

    invoke-virtual {v0, v2}, Landroidx/camera/camera2/internal/o2;->j0(Z)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2$g$b;->c:Landroidx/camera/camera2/internal/o2$g;

    iget-object v0, v0, Landroidx/camera/camera2/internal/o2$g;->f:Landroidx/camera/camera2/internal/o2;

    invoke-virtual {v0, v2}, Landroidx/camera/camera2/internal/o2;->k0(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/o2$g$b;->b:Z

    return-void
.end method

.method public synthetic c()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/internal/o2$g$b;->b()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2$g$b;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/s;

    invoke-direct {v1, p0}, Landroidx/camera/camera2/internal/s;-><init>(Landroidx/camera/camera2/internal/o2$g$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
