.class public final synthetic Landroidx/camera/camera2/internal/compat/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$a;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraManagerCompat$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/u;->a:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$a;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/u;->a:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$a;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$a;->f(Ljava/lang/String;)V

    return-void
.end method
