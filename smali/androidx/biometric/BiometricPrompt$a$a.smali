.class Landroidx/biometric/BiometricPrompt$a$a;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/BiometricPrompt$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/biometric/BiometricPrompt$a;


# direct methods
.method constructor <init>(Landroidx/biometric/BiometricPrompt$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$a$a;->a:Landroidx/biometric/BiometricPrompt$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$a$a;->a:Landroidx/biometric/BiometricPrompt$a;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt$a;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    .line 3
    invoke-virtual {v0}, Landroidx/biometric/BiometricFragment;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4
    iget-object v2, p0, Landroidx/biometric/BiometricPrompt$a$a;->a:Landroidx/biometric/BiometricPrompt$a;

    iget-object v2, v2, Landroidx/biometric/BiometricPrompt$a;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v2, v2, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v2, v1, v0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$a$a;->a:Landroidx/biometric/BiometricPrompt$a;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt$a;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->f:Landroidx/biometric/BiometricFragment;

    invoke-virtual {v0}, Landroidx/biometric/BiometricFragment;->b()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$a$a;->a:Landroidx/biometric/BiometricPrompt$a;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt$a;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->d:Landroidx/biometric/FingerprintDialogFragment;

    .line 7
    invoke-virtual {v0}, Landroidx/biometric/FingerprintDialogFragment;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 8
    iget-object v2, p0, Landroidx/biometric/BiometricPrompt$a$a;->a:Landroidx/biometric/BiometricPrompt$a;

    iget-object v2, v2, Landroidx/biometric/BiometricPrompt$a;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v2, v2, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v2, v1, v0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$a$a;->a:Landroidx/biometric/BiometricPrompt$a;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt$a;->a:Landroidx/biometric/BiometricPrompt;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->e:Landroidx/biometric/FingerprintHelperFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/biometric/FingerprintHelperFragment;->cancel(I)V

    :goto_0
    return-void
.end method
