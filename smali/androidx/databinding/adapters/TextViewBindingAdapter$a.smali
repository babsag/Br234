.class Landroidx/databinding/adapters/TextViewBindingAdapter$a;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

.field final synthetic b:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

.field final synthetic c:Landroidx/databinding/InverseBindingListener;

.field final synthetic d:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;


# direct methods
.method constructor <init>(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$a;->a:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    iput-object p2, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$a;->b:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    iput-object p3, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$a;->c:Landroidx/databinding/InverseBindingListener;

    iput-object p4, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$a;->d:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$a;->d:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;->afterTextChanged(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$a;->a:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$a;->b:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$a;->c:Landroidx/databinding/InverseBindingListener;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    :cond_1
    return-void
.end method
