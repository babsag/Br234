.class public final synthetic Landroidx/camera/camera2/internal/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/o2;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/o2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/b0;->a:Landroidx/camera/camera2/internal/o2;

    iput-boolean p2, p0, Landroidx/camera/camera2/internal/b0;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/b0;->a:Landroidx/camera/camera2/internal/o2;

    iget-boolean v1, p0, Landroidx/camera/camera2/internal/b0;->b:Z

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/o2;->P(Z)V

    return-void
.end method
