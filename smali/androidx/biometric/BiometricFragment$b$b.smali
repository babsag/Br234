.class Landroidx/biometric/BiometricFragment$b$b;
.super Ljava/lang/Object;
.source "BiometricFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/BiometricFragment$b;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

.field final synthetic b:Landroidx/biometric/BiometricFragment$b;


# direct methods
.method constructor <init>(Landroidx/biometric/BiometricFragment$b;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/BiometricFragment$b$b;->b:Landroidx/biometric/BiometricFragment$b;

    iput-object p2, p0, Landroidx/biometric/BiometricFragment$b$b;->a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment$b$b;->b:Landroidx/biometric/BiometricFragment$b;

    iget-object v0, v0, Landroidx/biometric/BiometricFragment$b;->a:Landroidx/biometric/BiometricFragment;

    iget-object v0, v0, Landroidx/biometric/BiometricFragment;->d:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    new-instance v1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    iget-object v2, p0, Landroidx/biometric/BiometricFragment$b$b;->a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    .line 2
    invoke-virtual {v2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v2

    invoke-static {v2}, Landroidx/biometric/BiometricFragment;->c(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method
