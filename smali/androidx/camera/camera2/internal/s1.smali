.class public final synthetic Landroidx/camera/camera2/internal/s1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/j3;

.field public final synthetic b:Landroidx/camera/camera2/internal/SynchronizedCaptureSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/j3;Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/s1;->a:Landroidx/camera/camera2/internal/j3;

    iput-object p2, p0, Landroidx/camera/camera2/internal/s1;->b:Landroidx/camera/camera2/internal/SynchronizedCaptureSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/s1;->a:Landroidx/camera/camera2/internal/j3;

    iget-object v1, p0, Landroidx/camera/camera2/internal/s1;->b:Landroidx/camera/camera2/internal/SynchronizedCaptureSession;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/j3;->r(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void
.end method
