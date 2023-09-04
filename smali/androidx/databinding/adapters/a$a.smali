.class Landroidx/databinding/adapters/a$a;
.super Landroidx/databinding/ObservableList$OnListChangedCallback;
.source "ObservableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/a;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/databinding/adapters/a;


# direct methods
.method constructor <init>(Landroidx/databinding/adapters/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/databinding/adapters/a$a;->a:Landroidx/databinding/adapters/a;

    invoke-direct {p0}, Landroidx/databinding/ObservableList$OnListChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroidx/databinding/ObservableList;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/databinding/adapters/a$a;->a:Landroidx/databinding/adapters/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(Landroidx/databinding/ObservableList;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/databinding/adapters/a$a;->a:Landroidx/databinding/adapters/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeInserted(Landroidx/databinding/ObservableList;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/databinding/adapters/a$a;->a:Landroidx/databinding/adapters/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeMoved(Landroidx/databinding/ObservableList;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/databinding/adapters/a$a;->a:Landroidx/databinding/adapters/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeRemoved(Landroidx/databinding/ObservableList;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/databinding/adapters/a$a;->a:Landroidx/databinding/adapters/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
