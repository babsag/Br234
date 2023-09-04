.class public final synthetic Landroidx/camera/camera2/internal/g0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/q2$c;

.field public final synthetic b:Landroidx/camera/core/impl/CaptureConfig$Builder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/q2$c;Landroidx/camera/core/impl/CaptureConfig$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/g0;->a:Landroidx/camera/camera2/internal/q2$c;

    iput-object p2, p0, Landroidx/camera/camera2/internal/g0;->b:Landroidx/camera/core/impl/CaptureConfig$Builder;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/g0;->a:Landroidx/camera/camera2/internal/q2$c;

    iget-object v1, p0, Landroidx/camera/camera2/internal/g0;->b:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/q2$c;->m(Landroidx/camera/core/impl/CaptureConfig$Builder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
