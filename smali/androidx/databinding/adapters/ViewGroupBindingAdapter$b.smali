.class Landroidx/databinding/adapters/ViewGroupBindingAdapter$b;
.super Ljava/lang/Object;
.source "ViewGroupBindingAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/ViewGroupBindingAdapter;->setListener(Landroid/view/ViewGroup;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;

.field final synthetic b:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;

.field final synthetic c:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;


# direct methods
.method constructor <init>(Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$b;->a:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;

    iput-object p2, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$b;->b:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;

    iput-object p3, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$b;->c:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$b;->b:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$b;->c:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$b;->a:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
