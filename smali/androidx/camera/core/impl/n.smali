.class public final synthetic Landroidx/camera/core/impl/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/impl/LiveDataObservable;

.field public final synthetic b:Landroidx/camera/core/impl/LiveDataObservable$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/LiveDataObservable;Landroidx/camera/core/impl/LiveDataObservable$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/n;->a:Landroidx/camera/core/impl/LiveDataObservable;

    iput-object p2, p0, Landroidx/camera/core/impl/n;->b:Landroidx/camera/core/impl/LiveDataObservable$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/n;->a:Landroidx/camera/core/impl/LiveDataObservable;

    iget-object v1, p0, Landroidx/camera/core/impl/n;->b:Landroidx/camera/core/impl/LiveDataObservable$a;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/LiveDataObservable;->h(Landroidx/camera/core/impl/LiveDataObservable$a;)V

    return-void
.end method
