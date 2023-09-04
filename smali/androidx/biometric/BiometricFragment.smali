.class public Landroidx/biometric/BiometricFragment;
.super Landroidx/fragment/app/Fragment;
.source "BiometricFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SyntheticAccessor"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;

.field b:Ljava/util/concurrent/Executor;

.field c:Landroid/content/DialogInterface$OnClickListener;

.field d:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

.field private e:Landroidx/biometric/BiometricPrompt$CryptoObject;

.field private f:Ljava/lang/CharSequence;

.field private g:Z

.field private h:Landroid/hardware/biometrics/BiometricPrompt;

.field private i:Landroid/os/CancellationSignal;

.field private final j:Landroid/os/Handler;

.field private final k:Ljava/util/concurrent/Executor;

.field private final l:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private m:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->j:Landroid/os/Handler;

    .line 3
    new-instance v0, Landroidx/biometric/BiometricFragment$a;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$a;-><init>(Landroidx/biometric/BiometricFragment;)V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->k:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Landroidx/biometric/BiometricFragment$b;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$b;-><init>(Landroidx/biometric/BiometricFragment;)V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->l:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 5
    new-instance v0, Landroidx/biometric/BiometricFragment$c;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$c;-><init>(Landroidx/biometric/BiometricFragment;)V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->m:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Landroidx/biometric/BiometricFragment;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static c(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method

.method static d(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 3
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 6
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 9
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method

.method public static newInstance()Landroidx/biometric/BiometricFragment;
    .locals 1

    .line 1
    new-instance v0, Landroidx/biometric/BiometricFragment;

    invoke-direct {v0}, Landroidx/biometric/BiometricFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/biometric/BiometricFragment;->g:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method protected cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->i:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->b()V

    return-void
.end method

.method protected getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/biometric/BiometricFragment;->g:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->a:Landroid/os/Bundle;

    const-string v1, "negative_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->f:Ljava/lang/CharSequence;

    .line 3
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->a:Landroid/os/Bundle;

    const-string v3, "title"

    .line 4
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->a:Landroid/os/Bundle;

    const-string v3, "subtitle"

    .line 5
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->a:Landroid/os/Bundle;

    const-string v3, "description"

    .line 6
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->a:Landroid/os/Bundle;

    .line 7
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->b:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->h:Landroid/hardware/biometrics/BiometricPrompt;

    .line 9
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->i:Landroid/os/CancellationSignal;

    .line 10
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->e:Landroidx/biometric/BiometricPrompt$CryptoObject;

    if-nez v1, :cond_0

    .line 11
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->h:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->k:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->l:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->h:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroidx/biometric/BiometricFragment;->d(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v1

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->i:Landroid/os/CancellationSignal;

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->k:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->l:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroidx/biometric/BiometricFragment;->g:Z

    .line 14
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/BiometricFragment;->a:Landroid/os/Bundle;

    return-void
.end method

.method protected setCallbacks(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/BiometricFragment;->b:Ljava/util/concurrent/Executor;

    .line 2
    iput-object p2, p0, Landroidx/biometric/BiometricFragment;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput-object p3, p0, Landroidx/biometric/BiometricFragment;->d:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method protected setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/BiometricFragment;->e:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-void
.end method
