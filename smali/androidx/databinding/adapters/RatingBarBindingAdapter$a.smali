.class Landroidx/databinding/adapters/RatingBarBindingAdapter$a;
.super Ljava/lang/Object;
.source "RatingBarBindingAdapter.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/RatingBarBindingAdapter;->setListeners(Landroid/widget/RatingBar;Landroid/widget/RatingBar$OnRatingBarChangeListener;Landroidx/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field final synthetic b:Landroidx/databinding/InverseBindingListener;


# direct methods
.method constructor <init>(Landroid/widget/RatingBar$OnRatingBarChangeListener;Landroidx/databinding/InverseBindingListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/databinding/adapters/RatingBarBindingAdapter$a;->a:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    iput-object p2, p0, Landroidx/databinding/adapters/RatingBarBindingAdapter$a;->b:Landroidx/databinding/InverseBindingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/databinding/adapters/RatingBarBindingAdapter$a;->a:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/databinding/adapters/RatingBarBindingAdapter$a;->b:Landroidx/databinding/InverseBindingListener;

    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    return-void
.end method
