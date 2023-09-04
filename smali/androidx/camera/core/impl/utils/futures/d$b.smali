.class Landroidx/camera/core/impl/utils/futures/d$b;
.super Ljava/lang/Object;
.source "ListFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/impl/utils/futures/d;->d(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/camera/core/impl/utils/futures/d;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/utils/futures/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/impl/utils/futures/d$b;->a:Landroidx/camera/core/impl/utils/futures/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/d$b;->a:Landroidx/camera/core/impl/utils/futures/d;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/camera/core/impl/utils/futures/d;->b:Ljava/util/List;

    .line 2
    iput-object v1, v0, Landroidx/camera/core/impl/utils/futures/d;->a:Ljava/util/List;

    return-void
.end method
