.class Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;
.super Ljava/lang/Object;
.source "FlutterBiometricsPlugin.java"

# interfaces
.implements Lcom/travelunion/flutter_biometrics/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->createKeys(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic b:Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;


# direct methods
.method constructor <init>(Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$result"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;->b:Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;

    iput-object p2, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;->b:Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;

    invoke-static {v0}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->a(Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cryptoObject"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;->b:Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;

    invoke-static {p1}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->a(Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;->b:Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;

    invoke-virtual {p1}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->deleteBiometricKey()Z

    const-string p1, "RSA"

    .line 3
    sget-object v1, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->KEYSTORE:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p1

    .line 4
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    sget-object v2, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->KEY_ALIAS:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "SHA-256"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "PKCS1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    new-instance v2, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v3, 0x800

    sget-object v4, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 10
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;->b:Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;

    invoke-virtual {v1, p1}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->getEncodedPublicKey(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error generating public private keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "create_keys_error"

    invoke-interface {v0, v2, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "error"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;->b:Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;

    invoke-static {v0}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->a(Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
