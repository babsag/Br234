.class public final synthetic Landroidx/core/view/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic a:Landroidx/core/view/MenuHostHelper;

.field public final synthetic b:Landroidx/core/view/MenuProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/MenuHostHelper;Landroidx/core/view/MenuProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/c;->a:Landroidx/core/view/MenuHostHelper;

    iput-object p2, p0, Landroidx/core/view/c;->b:Landroidx/core/view/MenuProvider;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/c;->a:Landroidx/core/view/MenuHostHelper;

    iget-object v1, p0, Landroidx/core/view/c;->b:Landroidx/core/view/MenuProvider;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/core/view/MenuHostHelper;->b(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
