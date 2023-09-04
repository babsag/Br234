.class interface abstract Lcom/travelunion/flutter_biometrics/a$c;
.super Ljava/lang/Object;
.source "AuthenticationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/travelunion/flutter_biometrics/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "c"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cryptoObject"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/String;Ljava/lang/String;)V
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
.end method
