.class Landroidx/biometric/FingerprintHelperFragment$a;
.super Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "FingerprintHelperFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/FingerprintHelperFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/biometric/FingerprintHelperFragment;


# direct methods
.method constructor <init>(Landroidx/biometric/FingerprintHelperFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    invoke-direct {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/biometric/FingerprintHelperFragment$a$a;

    invoke-direct {v1, p0, p1, p2}, Landroidx/biometric/FingerprintHelperFragment$a$a;-><init>(Landroidx/biometric/FingerprintHelperFragment$a;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget v0, v0, Landroidx/biometric/FingerprintHelperFragment;->g:I

    if-nez v0, :cond_3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/biometric/FingerprintHelperFragment$a;->a(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment;->c:Landroid/os/Handler;

    new-instance v1, Landroidx/biometric/FingerprintHelperFragment$a$b;

    invoke-direct {v1, p0, p1, p2}, Landroidx/biometric/FingerprintHelperFragment$a$b;-><init>(Landroidx/biometric/FingerprintHelperFragment$a;ILjava/lang/CharSequence;)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/biometric/FingerprintHelperFragment$a;->a(ILjava/lang/CharSequence;)V

    .line 7
    :cond_3
    :goto_1
    iget-object p1, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    invoke-virtual {p1}, Landroidx/biometric/FingerprintHelperFragment;->a()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v1, v0, Landroidx/biometric/FingerprintHelperFragment;->c:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment;->f:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/biometric/R$string;->fingerprint_not_recognized:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/biometric/FingerprintHelperFragment$a$d;

    invoke-direct {v1, p0}, Landroidx/biometric/FingerprintHelperFragment$a$d;-><init>(Landroidx/biometric/FingerprintHelperFragment$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget-object p1, p1, Landroidx/biometric/FingerprintHelperFragment;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment;->c:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/biometric/FingerprintHelperFragment$a$c;

    invoke-direct {v1, p0, p1}, Landroidx/biometric/FingerprintHelperFragment$a$c;-><init>(Landroidx/biometric/FingerprintHelperFragment$a;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    invoke-virtual {p1}, Landroidx/biometric/FingerprintHelperFragment;->a()V

    return-void
.end method
