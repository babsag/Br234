.class Lcom/google/android/material/textfield/d$h;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/d;->E(Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AutoCompleteTextView;

.field final synthetic b:Lcom/google/android/material/textfield/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/d$h;->b:Lcom/google/android/material/textfield/d;

    iput-object p2, p0, Lcom/google/android/material/textfield/d$h;->a:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/d$h;->b:Lcom/google/android/material/textfield/d;

    invoke-static {p1}, Lcom/google/android/material/textfield/d;->i(Lcom/google/android/material/textfield/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/d$h;->b:Lcom/google/android/material/textfield/d;

    invoke-static {p1, p2}, Lcom/google/android/material/textfield/d;->m(Lcom/google/android/material/textfield/d;Z)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/d$h;->b:Lcom/google/android/material/textfield/d;

    iget-object v0, p0, Lcom/google/android/material/textfield/d$h;->a:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, v0}, Lcom/google/android/material/textfield/d;->o(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    :cond_1
    return p2
.end method
