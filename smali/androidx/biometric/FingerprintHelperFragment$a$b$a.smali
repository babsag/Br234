.class Landroidx/biometric/FingerprintHelperFragment$a$b$a;
.super Ljava/lang/Object;
.source "FingerprintHelperFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/FingerprintHelperFragment$a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/biometric/FingerprintHelperFragment$a$b;


# direct methods
.method constructor <init>(Landroidx/biometric/FingerprintHelperFragment$a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/FingerprintHelperFragment$a$b$a;->a:Landroidx/biometric/FingerprintHelperFragment$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$a$b$a;->a:Landroidx/biometric/FingerprintHelperFragment$a$b;

    iget-object v1, v0, Landroidx/biometric/FingerprintHelperFragment$a$b;->c:Landroidx/biometric/FingerprintHelperFragment$a;

    iget-object v1, v1, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v1, v1, Landroidx/biometric/FingerprintHelperFragment;->b:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    iget v2, v0, Landroidx/biometric/FingerprintHelperFragment$a$b;->a:I

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment$a$b;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
