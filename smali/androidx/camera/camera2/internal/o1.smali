.class public final synthetic Landroidx/camera/camera2/internal/o1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/h3$b;

.field public final synthetic b:Landroidx/camera/core/impl/CaptureConfig;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/h3$b;Landroidx/camera/core/impl/CaptureConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/o1;->a:Landroidx/camera/camera2/internal/h3$b;

    iput-object p2, p0, Landroidx/camera/camera2/internal/o1;->b:Landroidx/camera/core/impl/CaptureConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/o1;->a:Landroidx/camera/camera2/internal/h3$b;

    iget-object v1, p0, Landroidx/camera/camera2/internal/o1;->b:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/h3$b;->b(Landroidx/camera/core/impl/CaptureConfig;)V

    return-void
.end method
