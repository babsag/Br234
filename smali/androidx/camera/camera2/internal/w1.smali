.class public final synthetic Landroidx/camera/camera2/internal/w1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/j3;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/j3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/w1;->a:Landroidx/camera/camera2/internal/j3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/w1;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/j3;->n()V

    return-void
.end method
