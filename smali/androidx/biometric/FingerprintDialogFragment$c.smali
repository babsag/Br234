.class final Landroidx/biometric/FingerprintDialogFragment$c;
.super Landroid/os/Handler;
.source "FingerprintDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/FingerprintDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/biometric/FingerprintDialogFragment;


# direct methods
.method constructor <init>(Landroidx/biometric/FingerprintDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$c;->a:Landroidx/biometric/FingerprintDialogFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$c;->a:Landroidx/biometric/FingerprintDialogFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/biometric/FingerprintDialogFragment;->mDismissInstantly:Z

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$c;->a:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$c;->a:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {p1}, Landroidx/biometric/FingerprintDialogFragment;->e()V

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$c;->a:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {p1}, Landroidx/biometric/FingerprintDialogFragment;->d()V

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment$c;->a:Landroidx/biometric/FingerprintDialogFragment;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Landroidx/biometric/FingerprintDialogFragment;->f(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :pswitch_5
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment$c;->a:Landroidx/biometric/FingerprintDialogFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/biometric/FingerprintDialogFragment;->g(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
