.class public final synthetic Landroidx/camera/core/impl/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/impl/LiveDataObservable$a;

.field public final synthetic b:Landroidx/camera/core/impl/LiveDataObservable$Result;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/LiveDataObservable$a;Landroidx/camera/core/impl/LiveDataObservable$Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/o;->a:Landroidx/camera/core/impl/LiveDataObservable$a;

    iput-object p2, p0, Landroidx/camera/core/impl/o;->b:Landroidx/camera/core/impl/LiveDataObservable$Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/impl/o;->a:Landroidx/camera/core/impl/LiveDataObservable$a;

    iget-object v1, p0, Landroidx/camera/core/impl/o;->b:Landroidx/camera/core/impl/LiveDataObservable$Result;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/LiveDataObservable$a;->c(Landroidx/camera/core/impl/LiveDataObservable$Result;)V

    return-void
.end method
