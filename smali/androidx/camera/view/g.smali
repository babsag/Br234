.class public final synthetic Landroidx/camera/view/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Landroidx/camera/view/z;

.field public final synthetic b:Landroidx/camera/core/CameraInfo;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/z;Landroidx/camera/core/CameraInfo;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/g;->a:Landroidx/camera/view/z;

    iput-object p2, p0, Landroidx/camera/view/g;->b:Landroidx/camera/core/CameraInfo;

    iput-object p3, p0, Landroidx/camera/view/g;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/camera/view/g;->a:Landroidx/camera/view/z;

    iget-object v1, p0, Landroidx/camera/view/g;->b:Landroidx/camera/core/CameraInfo;

    iget-object v2, p0, Landroidx/camera/view/g;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/camera/view/z;->h(Landroidx/camera/core/CameraInfo;Ljava/util/List;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
