.class public final synthetic Landroidx/camera/core/r1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/VideoCapture$e;

.field public final synthetic b:Landroidx/camera/core/VideoCapture$OutputFileResults;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/VideoCapture$e;Landroidx/camera/core/VideoCapture$OutputFileResults;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/r1;->a:Landroidx/camera/core/VideoCapture$e;

    iput-object p2, p0, Landroidx/camera/core/r1;->b:Landroidx/camera/core/VideoCapture$OutputFileResults;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/r1;->a:Landroidx/camera/core/VideoCapture$e;

    iget-object v1, p0, Landroidx/camera/core/r1;->b:Landroidx/camera/core/VideoCapture$OutputFileResults;

    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$e;->d(Landroidx/camera/core/VideoCapture$OutputFileResults;)V

    return-void
.end method
