.class public final synthetic Landroidx/camera/camera2/internal/i2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/r3;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/r3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/i2;->a:Landroidx/camera/camera2/internal/r3;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/i2;->a:Landroidx/camera/camera2/internal/r3;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/r3;->e(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method
