.class public final synthetic Landroidx/camera/core/l0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/ImageCapture$i$c;


# instance fields
.field public final synthetic a:Landroidx/camera/core/internal/YuvToJpegProcessor;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/internal/YuvToJpegProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/l0;->a:Landroidx/camera/core/internal/YuvToJpegProcessor;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/camera/core/ImageCapture$h;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/l0;->a:Landroidx/camera/core/internal/YuvToJpegProcessor;

    invoke-static {v0, p1}, Landroidx/camera/core/ImageCapture;->u(Landroidx/camera/core/internal/YuvToJpegProcessor;Landroidx/camera/core/ImageCapture$h;)V

    return-void
.end method
