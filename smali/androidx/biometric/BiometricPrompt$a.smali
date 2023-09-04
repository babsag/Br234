.class Landroidx/biometric/BiometricPrompt$a;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$a;->a:Landroidx/biometric/BiometricPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt$a;->a:Landroidx/biometric/BiometricPrompt;

    iget-object p1, p1, Landroidx/biometric/BiometricPrompt;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Landroidx/biometric/BiometricPrompt$a$a;

    invoke-direct {p2, p0}, Landroidx/biometric/BiometricPrompt$a$a;-><init>(Landroidx/biometric/BiometricPrompt$a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
