.class Landroidx/biometric/BiometricFragment$b$a;
.super Ljava/lang/Object;
.source "BiometricFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/BiometricFragment$b;->onAuthenticationError(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:I

.field final synthetic c:Landroidx/biometric/BiometricFragment$b;


# direct methods
.method constructor <init>(Landroidx/biometric/BiometricFragment$b;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/BiometricFragment$b$a;->c:Landroidx/biometric/BiometricFragment$b;

    iput-object p2, p0, Landroidx/biometric/BiometricFragment$b$a;->a:Ljava/lang/CharSequence;

    iput p3, p0, Landroidx/biometric/BiometricFragment$b$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment$b$a;->a:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/biometric/BiometricFragment$b$a;->c:Landroidx/biometric/BiometricFragment$b;

    iget-object v1, v1, Landroidx/biometric/BiometricFragment$b;->a:Landroidx/biometric/BiometricFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/biometric/BiometricFragment$b$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/biometric/BiometricFragment$b$a;->c:Landroidx/biometric/BiometricFragment$b;

    iget-object v1, v1, Landroidx/biometric/BiometricFragment$b;->a:Landroidx/biometric/BiometricFragment;

    iget-object v1, v1, Landroidx/biometric/BiometricFragment;->d:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    iget v2, p0, Landroidx/biometric/BiometricFragment$b$a;->b:I

    .line 4
    invoke-virtual {v1, v2, v0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
