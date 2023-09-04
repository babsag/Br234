.class public final synthetic Landroidx/camera/view/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Landroidx/camera/view/CameraController;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/CameraController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/c;->a:Landroidx/camera/view/CameraController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/c;->a:Landroidx/camera/view/CameraController;

    check-cast p1, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0, p1}, Landroidx/camera/view/CameraController;->j(Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
