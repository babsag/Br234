.class public final synthetic Landroidx/camera/camera2/internal/b1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/e3;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/e3;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/b1;->a:Landroidx/camera/camera2/internal/e3;

    iput-wide p2, p0, Landroidx/camera/camera2/internal/b1;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/b1;->a:Landroidx/camera/camera2/internal/e3;

    iget-wide v1, p0, Landroidx/camera/camera2/internal/b1;->b:J

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/e3;->D(J)V

    return-void
.end method
