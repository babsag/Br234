.class public Landroidx/biometric/BiometricPrompt;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroidx/biometric/BiometricConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricPrompt$PromptInfo;,
        Landroidx/biometric/BiometricPrompt$AuthenticationCallback;,
        Landroidx/biometric/BiometricPrompt$AuthenticationResult;,
        Landroidx/biometric/BiometricPrompt$CryptoObject;
    }
.end annotation


# instance fields
.field final a:Landroidx/fragment/app/FragmentActivity;

.field final b:Ljava/util/concurrent/Executor;

.field final c:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

.field d:Landroidx/biometric/FingerprintDialogFragment;

.field e:Landroidx/biometric/FingerprintHelperFragment;

.field f:Landroidx/biometric/BiometricFragment;

.field final g:Landroid/content/DialogInterface$OnClickListener;

.field private final h:Landroidx/lifecycle/LifecycleObserver;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/biometric/BiometricPrompt$a;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$a;-><init>(Landroidx/biometric/BiometricPrompt;)V

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    new-instance v0, Landroidx/biometric/BiometricPrompt$2;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$2;-><init>(Landroidx/biometric/BiometricPrompt;)V

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt;->h:Landroidx/lifecycle/LifecycleObserver;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 4
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt;->a:Landroidx/fragment/app/FragmentActivity;

    .line 5
    iput-object p2, p0, Landroidx/biometric/BiometricPrompt;->b:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p3, p0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 7
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AuthenticationCallback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FragmentActivity must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 5
    .param p1    # Landroidx/biometric/BiometricPrompt$PromptInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/BiometricPrompt$CryptoObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo;->a()Landroid/os/Bundle;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    .line 4
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Landroidx/biometric/BiometricFragment;->newInstance()Landroidx/biometric/BiometricFragment;

    move-result-object v1

    iput-object v1, p0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    iget-object v2, p0, Landroidx/biometric/BiometricPrompt;->b:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/biometric/BiometricPrompt;->g:Landroid/content/DialogInterface$OnClickListener;

    iget-object v4, p0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/biometric/BiometricFragment;->setCallbacks(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 7
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    invoke-virtual {v1, p2}, Landroidx/biometric/BiometricFragment;->setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    .line 8
    iget-object p2, p0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    invoke-virtual {p2, p1}, Landroidx/biometric/BiometricFragment;->setBundle(Landroid/os/Bundle;)V

    const-string p1, "BiometricFragment"

    .line 9
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_1

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    invoke-virtual {p2, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    if-nez v1, :cond_3

    .line 14
    invoke-static {}, Landroidx/biometric/FingerprintDialogFragment;->newInstance()Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v1

    iput-object v1, p0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    .line 15
    :cond_3
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    iget-object v2, p0, Landroidx/biometric/BiometricPrompt;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2}, Landroidx/biometric/FingerprintDialogFragment;->setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 16
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {v1, p1}, Landroidx/biometric/FingerprintDialogFragment;->setBundle(Landroid/os/Bundle;)V

    .line 17
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    const-string v1, "FingerprintDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    if-nez p1, :cond_4

    .line 19
    invoke-static {}, Landroidx/biometric/FingerprintHelperFragment;->newInstance()Landroidx/biometric/FingerprintHelperFragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    .line 20
    :cond_4
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {p1, v1, v2}, Landroidx/biometric/FingerprintHelperFragment;->setCallback(Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 21
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {p1}, Landroidx/biometric/FingerprintDialogFragment;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 22
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    invoke-virtual {v1, p1}, Landroidx/biometric/FingerprintHelperFragment;->setHandler(Landroid/os/Handler;)V

    .line 23
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    invoke-virtual {v1, p2}, Landroidx/biometric/FingerprintHelperFragment;->setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    const/4 p2, 0x6

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v1, 0x1f4

    .line 25
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string p1, "FingerprintHelperFragment"

    .line 26
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_5

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    .line 28
    invoke-virtual {p2, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 29
    :cond_5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 30
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method


# virtual methods
.method public authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    .locals 1
    .param p1    # Landroidx/biometric/BiometricPrompt$PromptInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Landroidx/biometric/BiometricPrompt;->a(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PromptInfo can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 0
    .param p1    # Landroidx/biometric/BiometricPrompt$PromptInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/BiometricPrompt$CryptoObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/biometric/BiometricPrompt;->a(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CryptoObject can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PromptInfo can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancelAuthentication()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/biometric/BiometricFragment;->cancel()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroidx/biometric/FingerprintHelperFragment;->cancel(I)V

    .line 6
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
