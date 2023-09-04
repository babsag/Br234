.class public final synthetic Landroidx/camera/core/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/r2;

.field public final synthetic b:Landroidx/camera/core/ImageProxy;

.field public final synthetic c:Landroid/graphics/Matrix;

.field public final synthetic d:Landroidx/camera/core/ImageProxy;

.field public final synthetic e:Landroid/graphics/Rect;

.field public final synthetic f:Landroidx/camera/core/ImageAnalysis$Analyzer;

.field public final synthetic g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/r2;Landroidx/camera/core/ImageProxy;Landroid/graphics/Matrix;Landroidx/camera/core/ImageProxy;Landroid/graphics/Rect;Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/t;->a:Landroidx/camera/core/r2;

    iput-object p2, p0, Landroidx/camera/core/t;->b:Landroidx/camera/core/ImageProxy;

    iput-object p3, p0, Landroidx/camera/core/t;->c:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroidx/camera/core/t;->d:Landroidx/camera/core/ImageProxy;

    iput-object p5, p0, Landroidx/camera/core/t;->e:Landroid/graphics/Rect;

    iput-object p6, p0, Landroidx/camera/core/t;->f:Landroidx/camera/core/ImageAnalysis$Analyzer;

    iput-object p7, p0, Landroidx/camera/core/t;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroidx/camera/core/t;->a:Landroidx/camera/core/r2;

    iget-object v1, p0, Landroidx/camera/core/t;->b:Landroidx/camera/core/ImageProxy;

    iget-object v2, p0, Landroidx/camera/core/t;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Landroidx/camera/core/t;->d:Landroidx/camera/core/ImageProxy;

    iget-object v4, p0, Landroidx/camera/core/t;->e:Landroid/graphics/Rect;

    iget-object v5, p0, Landroidx/camera/core/t;->f:Landroidx/camera/core/ImageAnalysis$Analyzer;

    iget-object v6, p0, Landroidx/camera/core/t;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/core/r2;->k(Landroidx/camera/core/ImageProxy;Landroid/graphics/Matrix;Landroidx/camera/core/ImageProxy;Landroid/graphics/Rect;Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
