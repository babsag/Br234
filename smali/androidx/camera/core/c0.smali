.class public final synthetic Landroidx/camera/core/c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/ImageCapture$h;

.field public final synthetic b:Landroidx/camera/core/ImageProxy;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture$h;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/c0;->a:Landroidx/camera/core/ImageCapture$h;

    iput-object p2, p0, Landroidx/camera/core/c0;->b:Landroidx/camera/core/ImageProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/c0;->a:Landroidx/camera/core/ImageCapture$h;

    iget-object v1, p0, Landroidx/camera/core/c0;->b:Landroidx/camera/core/ImageProxy;

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$h;->c(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method
