.class Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;
.super Ljava/lang/Object;
.source "FlutterBiometricsPlugin.java"

# interfaces
.implements Lcom/travelunion/flutter_biometrics/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->sign(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/common/MethodCall;

.field final synthetic b:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic c:Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;


# direct methods
.method constructor <init>(Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$call",
            "val$result"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;->c:Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;

    iput-object p2, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;->a:Lio/flutter/plugin/common/MethodCall;

    iput-object p3, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;->c:Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;

    invoke-static {v0}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->a(Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cryptoObject"
        }
    .end annotation

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;->c:Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;

    invoke-static {v1}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->a(Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;->a:Lio/flutter/plugin/common/MethodCall;

    const-string v2, "payload"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 4
    invoke-virtual {p1, v1}, Ljava/security/Signature;->update([B)V

    .line 5
    invoke-virtual {p1}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    .line 6
    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\r"

    .line 7
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error generating signing payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "sign_error"

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
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;->c:Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;

    invoke-static {v0}, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;->a(Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/FlutterBiometricsPlugin$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
