.class public Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;
.super Ljava/lang/Object;
.source "FlutterBiometricsPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field protected static KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field protected static KEY_ALIAS:Ljava/lang/String; = "biometric_key"


# instance fields
.field private final a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrar"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method

.method static synthetic a(Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrar"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "flutter_biometrics"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;

    invoke-direct {v1, p0}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method


# virtual methods
.method protected availableBiometricTypes(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    const-string v4, "android.hardware.fingerprint"

    .line 6
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "fingerprint"

    .line 7
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v4, 0x1d

    if-lt v3, v4, :cond_3

    const-string v3, "android.hardware.biometrics.face"

    .line 8
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "faceId"

    .line 9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v3, "android.hardware.biometrics.iris"

    .line 10
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "iris"

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "no_activity"

    const-string v2, "local_auth plugin requires a foreground activity"

    .line 13
    invoke-interface {p1, v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no_biometrics_available"

    invoke-interface {p1, v2, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected createKeys(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p1, "auth_in_progress"

    const-string v0, "Authentication in progress"

    .line 2
    invoke-interface {p2, p1, v0, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v4, v0, Landroidx/fragment/app/FragmentActivity;

    if-nez v4, :cond_3

    .line 6
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "no_fragment_activity"

    const-string v0, "local_auth plugin requires activity to be a FragmentActivity."

    .line 7
    invoke-interface {p2, p1, v0, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 8
    :cond_3
    new-instance v1, Lcom/travelunion/flutter_biometrics/a;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    new-instance v2, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;

    invoke-direct {v2, p0, p2}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$a;-><init>(Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-direct {v1, v0, p1, v2}, Lcom/travelunion/flutter_biometrics/a;-><init>(Landroidx/fragment/app/FragmentActivity;Lio/flutter/plugin/common/MethodCall;Lcom/travelunion/flutter_biometrics/a$c;)V

    .line 9
    invoke-virtual {v1}, Lcom/travelunion/flutter_biometrics/a;->d()V

    return-void

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "no_activity"

    const-string v0, "local_auth plugin requires a foreground activity"

    .line 11
    invoke-interface {p2, p1, v0, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method protected deleteBiometricKey()Z
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->KEYSTORE:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 3
    sget-object v1, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->KEY_ALIAS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getEncodedPublicKey(Ljava/security/KeyPair;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyPair"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r"

    const-string v1, ""

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "createKeys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->createKeys(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "sign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->sign(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v0, "availableBiometricTypes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0, p2}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->availableBiometricTypes(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_0
    return-void
.end method

.method protected sign(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p1, "auth_in_progress"

    const-string v0, "Authentication in progress"

    .line 2
    invoke-interface {p2, p1, v0, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    instance-of v4, v0, Landroidx/fragment/app/FragmentActivity;

    if-nez v4, :cond_3

    .line 6
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "no_fragment_activity"

    const-string v0, "local_auth plugin requires activity to be a FragmentActivity."

    .line 7
    invoke-interface {p2, p1, v0, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const-string v4, "payload"

    .line 8
    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 9
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "payload_not_provided"

    const-string v0, "You need to provide payload to sign"

    .line 10
    invoke-interface {p2, p1, v0, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    :try_start_0
    const-string v4, "AndroidKeyStore"

    .line 11
    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 12
    invoke-virtual {v4, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 13
    sget-object v5, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->KEY_ALIAS:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljava/security/PrivateKey;

    const-string v5, "SHA256withRSA"

    .line 14
    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 15
    invoke-virtual {v5, v4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 16
    new-instance v4, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {v4, v5}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    .line 17
    new-instance v5, Lcom/travelunion/flutter_biometrics/a;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    new-instance v6, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;

    invoke-direct {v6, p0, p1, p2}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;-><init>(Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-direct {v5, v0, p1, v4, v6}, Lcom/travelunion/flutter_biometrics/a;-><init>(Landroidx/fragment/app/FragmentActivity;Lio/flutter/plugin/common/MethodCall;Landroidx/biometric/BiometricPrompt$CryptoObject;Lcom/travelunion/flutter_biometrics/a$c;)V

    .line 18
    invoke-virtual {v5}, Lcom/travelunion/flutter_biometrics/a;->d()V
    :try_end_0
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error retrieving keys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sign_error_key"

    invoke-interface {p2, v0, p1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 21
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Biometric keys are invalidated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "biometrics_invalidated"

    invoke-interface {p2, v0, p1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void

    .line 23
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "no_activity"

    const-string v0, "local_auth plugin requires a foreground activity"

    .line 24
    invoke-interface {p2, p1, v0, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method
