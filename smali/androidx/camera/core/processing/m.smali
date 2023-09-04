.class public final synthetic Landroidx/camera/core/processing/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Landroidx/camera/core/processing/SettableSurface;

.field public final synthetic b:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SettableSurface;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/m;->a:Landroidx/camera/core/processing/SettableSurface;

    iput-object p2, p0, Landroidx/camera/core/processing/m;->b:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/processing/m;->a:Landroidx/camera/core/processing/SettableSurface;

    iget-object v1, p0, Landroidx/camera/core/processing/m;->b:Landroid/util/Size;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/processing/SettableSurface;->k(Landroid/util/Size;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
