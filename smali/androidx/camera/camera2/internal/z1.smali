.class public final synthetic Landroidx/camera/camera2/internal/z1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/compat/workaround/ForceCloseCaptureSession$OnConfigured;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/k3;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/z1;->a:Landroidx/camera/camera2/internal/k3;

    return-void
.end method


# virtual methods
.method public final run(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/z1;->a:Landroidx/camera/camera2/internal/k3;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/k3;->B(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void
.end method
