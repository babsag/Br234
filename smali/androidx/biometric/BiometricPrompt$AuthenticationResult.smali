.class public Landroidx/biometric/BiometricPrompt$AuthenticationResult;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private final a:Landroidx/biometric/BiometricPrompt$CryptoObject;


# direct methods
.method constructor <init>(Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$AuthenticationResult;->a:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$AuthenticationResult;->a:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-object v0
.end method
