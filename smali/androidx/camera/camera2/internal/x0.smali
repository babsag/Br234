.class public final synthetic Landroidx/camera/camera2/internal/x0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/ExposureControl;

.field public final synthetic b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/ExposureControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/x0;->a:Landroidx/camera/camera2/internal/ExposureControl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/x0;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput p3, p0, Landroidx/camera/camera2/internal/x0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/x0;->a:Landroidx/camera/camera2/internal/ExposureControl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/x0;->b:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget v2, p0, Landroidx/camera/camera2/internal/x0;->c:I

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/ExposureControl;->f(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;I)V

    return-void
.end method
