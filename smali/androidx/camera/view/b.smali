.class public final synthetic Landroidx/camera/view/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/view/RotationProvider$Listener;


# instance fields
.field public final synthetic a:Landroidx/camera/view/CameraController;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/CameraController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/b;->a:Landroidx/camera/view/CameraController;

    return-void
.end method


# virtual methods
.method public final onRotationChanged(I)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/b;->a:Landroidx/camera/view/CameraController;

    invoke-virtual {v0, p1}, Landroidx/camera/view/CameraController;->l(I)V

    return-void
.end method
