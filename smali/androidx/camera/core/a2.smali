.class public final synthetic Landroidx/camera/core/a2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/ImageCapture$i;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture$i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/a2;->a:Landroidx/camera/core/ImageCapture$i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/a2;->a:Landroidx/camera/core/ImageCapture$i;

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$i;->b()V

    return-void
.end method
