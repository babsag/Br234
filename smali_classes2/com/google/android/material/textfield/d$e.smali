.class Lcom/google/android/material/textfield/d$e;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextAttached(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/d;->e(Lcom/google/android/material/textfield/d;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/d;->p(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/d;->q(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/d;->r(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1}, Lcom/google/android/material/textfield/d;->s(Lcom/google/android/material/textfield/d;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    iget-object v1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1}, Lcom/google/android/material/textfield/d;->s(Lcom/google/android/material/textfield/d;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/material/textfield/d$e;->a:Lcom/google/android/material/textfield/d;

    invoke-static {v1}, Lcom/google/android/material/textfield/d;->t(Lcom/google/android/material/textfield/d;)Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method
