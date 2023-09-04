.class public final synthetic Landroidx/camera/camera2/internal/d2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/n3;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/n3;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/d2;->a:Landroidx/camera/camera2/internal/n3;

    iput-boolean p2, p0, Landroidx/camera/camera2/internal/d2;->b:Z

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/d2;->a:Landroidx/camera/camera2/internal/n3;

    iget-boolean v1, p0, Landroidx/camera/camera2/internal/d2;->b:Z

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/n3;->g(ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
