.class public final synthetic Landroidx/camera/core/processing/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/processing/y;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/y;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/n;->a:Landroidx/camera/core/processing/y;

    iput-object p2, p0, Landroidx/camera/core/processing/n;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/processing/n;->a:Landroidx/camera/core/processing/y;

    iget-object v1, p0, Landroidx/camera/core/processing/n;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/y;->f(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
