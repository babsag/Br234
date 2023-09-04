.class Landroidx/biometric/FingerprintHelperFragment$a$a;
.super Ljava/lang/Object;
.source "FingerprintHelperFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/FingerprintHelperFragment$a;->a(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Landroidx/biometric/FingerprintHelperFragment$a;


# direct methods
.method constructor <init>(Landroidx/biometric/FingerprintHelperFragment$a;ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/biometric/FingerprintHelperFragment$a$a;->c:Landroidx/biometric/FingerprintHelperFragment$a;

    iput p2, p0, Landroidx/biometric/FingerprintHelperFragment$a$a;->a:I

    iput-object p3, p0, Landroidx/biometric/FingerprintHelperFragment$a$a;->b:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$a$a;->c:Landroidx/biometric/FingerprintHelperFragment$a;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment$a;->a:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment;->b:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    iget v1, p0, Landroidx/biometric/FingerprintHelperFragment$a$a;->a:I

    iget-object v2, p0, Landroidx/biometric/FingerprintHelperFragment$a$a;->b:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {v0, v1, v2}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
