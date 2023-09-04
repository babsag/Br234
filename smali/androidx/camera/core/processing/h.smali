.class public final synthetic Landroidx/camera/core/processing/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/processing/InternalImageProcessor;

.field public final synthetic b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic c:Landroidx/camera/core/ImageProcessor$Request;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/InternalImageProcessor;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ImageProcessor$Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/h;->a:Landroidx/camera/core/processing/InternalImageProcessor;

    iput-object p2, p0, Landroidx/camera/core/processing/h;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p3, p0, Landroidx/camera/core/processing/h;->c:Landroidx/camera/core/ImageProcessor$Request;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/processing/h;->a:Landroidx/camera/core/processing/InternalImageProcessor;

    iget-object v1, p0, Landroidx/camera/core/processing/h;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v2, p0, Landroidx/camera/core/processing/h;->c:Landroidx/camera/core/ImageProcessor$Request;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/processing/InternalImageProcessor;->b(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ImageProcessor$Request;)V

    return-void
.end method
