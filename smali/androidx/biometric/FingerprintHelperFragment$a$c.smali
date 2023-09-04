.class Landroidx/biometric/FingerprintHelperFragment$a$c;
.super Ljava/lang/Object;
.source "FingerprintHelperFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/FingerprintHelperFragment$a;->onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;

.field final synthetic b:Landroidx/biometric/FingerprintHelperFragment$a;


# direct methods
.method constructor <init>(Landroidx/biometric/FingerprintHelperFragment$a;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/FingerprintHelperFragment$a$c;->b:Landroidx/biometric/FingerprintHelperFragment$a;

    iput-object p2, p0, Landroidx/biometric/FingerprintHelperFragment$a$c;->a:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$a$c;->b:Landroidx/biometric/FingerprintHelperFragment$a;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment;->b:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    new-instance v1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    iget-object v2, p0, Landroidx/biometric/FingerprintHelperFragment$a$c;->a:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;

    .line 2
    invoke-virtual {v2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->getCryptoObject()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object v2

    invoke-static {v2}, Landroidx/biometric/FingerprintHelperFragment;->e(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method
