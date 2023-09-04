.class public Landroidx/biometric/FingerprintDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "FingerprintDialogFragment.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/FingerprintDialogFragment$c;
    }
.end annotation


# static fields
.field protected static final DISPLAYED_FOR_500_MS:I = 0x6

.field protected static final HIDE_DIALOG_DELAY:I = 0x7d0

.field protected static final MSG_DISMISS_DIALOG_AUTHENTICATED:I = 0x5

.field protected static final MSG_DISMISS_DIALOG_ERROR:I = 0x3

.field protected static final MSG_RESET_MESSAGE:I = 0x4

.field protected static final MSG_SHOW_ERROR:I = 0x2

.field protected static final MSG_SHOW_HELP:I = 0x1


# instance fields
.field private a:Landroidx/biometric/FingerprintDialogFragment$c;

.field private b:Landroid/os/Bundle;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/content/Context;

.field private i:Landroid/app/Dialog;

.field j:Landroid/content/DialogInterface$OnClickListener;

.field protected mDismissInstantly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Landroidx/biometric/FingerprintDialogFragment$c;

    invoke-direct {v0, p0}, Landroidx/biometric/FingerprintDialogFragment$c;-><init>(Landroidx/biometric/FingerprintDialogFragment;)V

    iput-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->a:Landroidx/biometric/FingerprintDialogFragment$c;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mDismissInstantly:Z

    return-void
.end method

.method private b(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 1
    sget p1, Landroidx/biometric/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 2
    sget p1, Landroidx/biometric/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    .line 3
    sget p1, Landroidx/biometric/R$drawable;->fingerprint_dialog_error_to_fp:I

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 4
    sget p1, Landroidx/biometric/R$drawable;->fingerprint_dialog_error_to_fp:I

    .line 5
    :goto_0
    iget-object p2, p0, Landroidx/biometric/FingerprintDialogFragment;->h:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(I)I
    .locals 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private h(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    return v1

    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    return v1

    :cond_2
    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    :cond_3
    return v0
.end method

.method private i(I)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 2
    iget v0, p0, Landroidx/biometric/FingerprintDialogFragment;->e:I

    invoke-direct {p0, v0, p1}, Landroidx/biometric/FingerprintDialogFragment;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Landroidx/biometric/FingerprintDialogFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_2

    .line 5
    iget v0, p0, Landroidx/biometric/FingerprintDialogFragment;->e:I

    invoke-direct {p0, v0, p1}, Landroidx/biometric/FingerprintDialogFragment;->h(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 7
    :cond_2
    iput p1, p0, Landroidx/biometric/FingerprintDialogFragment;->e:I

    :cond_3
    return-void
.end method

.method public static newInstance()Landroidx/biometric/FingerprintDialogFragment;
    .locals 1

    .line 1
    new-instance v0, Landroidx/biometric/FingerprintDialogFragment;

    invoke-direct {v0}, Landroidx/biometric/FingerprintDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroid/widget/TextView;

    iget v1, p0, Landroidx/biometric/FingerprintDialogFragment;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroid/widget/TextView;

    sget v1, Landroidx/biometric/R$string;->fingerprint_error_lockout:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->a:Landroidx/biometric/FingerprintDialogFragment$c;

    new-instance v1, Landroidx/biometric/FingerprintDialogFragment$b;

    invoke-direct {v1, p0}, Landroidx/biometric/FingerprintDialogFragment$b;-><init>(Landroidx/biometric/FingerprintDialogFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mDismissInstantly:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/FingerprintDialogFragment;->a()V

    :goto_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/biometric/FingerprintDialogFragment;->mDismissInstantly:Z

    return-void
.end method

.method e()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/biometric/FingerprintDialogFragment;->i(I)V

    .line 2
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroid/widget/TextView;

    iget v1, p0, Landroidx/biometric/FingerprintDialogFragment;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->h:Landroid/content/Context;

    sget v2, Landroidx/biometric/R$string;->fingerprint_dialog_touch_sensor:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method f(ILjava/lang/CharSequence;)V
    .locals 2

    const/4 p1, 0x2

    .line 1
    invoke-direct {p0, p1}, Landroidx/biometric/FingerprintDialogFragment;->i(I)V

    .line 2
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->a:Landroidx/biometric/FingerprintDialogFragment$c;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroid/widget/TextView;

    iget v0, p0, Landroidx/biometric/FingerprintDialogFragment;->c:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->a:Landroidx/biometric/FingerprintDialogFragment$c;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method g(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Landroidx/biometric/FingerprintDialogFragment;->i(I)V

    .line 2
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->a:Landroidx/biometric/FingerprintDialogFragment$c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroid/widget/TextView;

    iget v2, p0, Landroidx/biometric/FingerprintDialogFragment;->c:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->a:Landroidx/biometric/FingerprintDialogFragment$c;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->a:Landroidx/biometric/FingerprintDialogFragment$c;

    return-object v0
.end method

.method protected getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->b:Landroid/os/Bundle;

    const-string v1, "negative_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "FingerprintHelperFragment"

    .line 3
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/biometric/FingerprintHelperFragment;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroidx/biometric/FingerprintHelperFragment;->cancel(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->h:Landroid/content/Context;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const p1, 0x1010543

    .line 4
    invoke-direct {p0, p1}, Landroidx/biometric/FingerprintDialogFragment;->c(I)I

    move-result p1

    iput p1, p0, Landroidx/biometric/FingerprintDialogFragment;->c:I

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Landroidx/biometric/R$color;->biometric_error_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Landroidx/biometric/FingerprintDialogFragment;->c:I

    :goto_0
    const p1, 0x1010038

    .line 6
    invoke-direct {p0, p1}, Landroidx/biometric/FingerprintDialogFragment;->c(I)I

    move-result p1

    iput p1, p0, Landroidx/biometric/FingerprintDialogFragment;->d:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->b:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, "SavedBundle"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->b:Landroid/os/Bundle;

    .line 3
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->b:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/biometric/R$layout;->fingerprint_dialog_layout:I

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7
    sget v1, Landroidx/biometric/R$id;->fingerprint_subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8
    sget v2, Landroidx/biometric/R$id;->fingerprint_description:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    iget-object v3, p0, Landroidx/biometric/FingerprintDialogFragment;->b:Landroid/os/Bundle;

    const-string v4, "subtitle"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_0
    iget-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->b:Landroid/os/Bundle;

    const-string v3, "description"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :goto_1
    sget v1, Landroidx/biometric/R$id;->fingerprint_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->f:Landroid/widget/ImageView;

    .line 20
    sget v1, Landroidx/biometric/R$id;->fingerprint_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroid/widget/TextView;

    .line 21
    iget-object v1, p0, Landroidx/biometric/FingerprintDialogFragment;->b:Landroid/os/Bundle;

    const-string v2, "negative_text"

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 23
    new-instance v2, Landroidx/biometric/FingerprintDialogFragment$a;

    invoke-direct {v2, p0}, Landroidx/biometric/FingerprintDialogFragment$a;-><init>(Landroidx/biometric/FingerprintDialogFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 24
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 25
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->i:Landroid/app/Dialog;

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->a:Landroidx/biometric/FingerprintDialogFragment$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/biometric/FingerprintDialogFragment;->e:I

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Landroidx/biometric/FingerprintDialogFragment;->i(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment;->b:Landroid/os/Bundle;

    const-string v1, "SavedBundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->b:Landroid/os/Bundle;

    return-void
.end method

.method protected setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->j:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method
