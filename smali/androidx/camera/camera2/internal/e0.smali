.class public final synthetic Landroidx/camera/camera2/internal/e0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/q2$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/q2$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/e0;->a:Landroidx/camera/camera2/internal/q2$a;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/e0;->a:Landroidx/camera/camera2/internal/q2$a;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/q2$a;->e(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
