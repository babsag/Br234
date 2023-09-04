.class Landroidx/biometric/BiometricPrompt$2;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/biometric/BiometricPrompt;


# direct methods
.method constructor <init>(Landroidx/biometric/BiometricPrompt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroidx/biometric/BiometricFragment;->cancel()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/biometric/FingerprintHelperFragment;->cancel(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method onResume()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v1, v0, Landroidx/biometric/BiometricPrompt;->a:Landroidx/fragment/app/FragmentActivity;

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "BiometricFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/biometric/BiometricFragment;

    iput-object v1, v0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    .line 4
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v1, v0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, v0, Landroidx/biometric/BiometricPrompt;->b:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Landroidx/biometric/BiometricPrompt;->g:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/biometric/BiometricFragment;->setCallbacks(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v1, v0, Landroidx/biometric/BiometricPrompt;->a:Landroidx/fragment/app/FragmentActivity;

    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FingerprintDialogFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/biometric/FingerprintDialogFragment;

    iput-object v1, v0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    .line 8
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v1, v0, Landroidx/biometric/BiometricPrompt;->a:Landroidx/fragment/app/FragmentActivity;

    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FingerprintHelperFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/biometric/FingerprintHelperFragment;

    iput-object v1, v0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    .line 10
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v1, v0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    if-eqz v1, :cond_1

    iget-object v2, v0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    if-eqz v2, :cond_1

    .line 11
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0}, Landroidx/biometric/FingerprintDialogFragment;->setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 12
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v1, v0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v2, v0, Landroidx/biometric/BiometricPrompt;->b:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v1, v2, v0}, Landroidx/biometric/FingerprintHelperFragment;->setCallback(Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 13
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v1, v0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {v0}, Landroidx/biometric/FingerprintDialogFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/biometric/FingerprintHelperFragment;->setHandler(Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method
