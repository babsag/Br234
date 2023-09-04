.class Lcom/travelunion/flutter_biometrics/a;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "AuthenticationHelper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/travelunion/flutter_biometrics/a$d;,
        Lcom/travelunion/flutter_biometrics/a$c;
    }
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/FragmentActivity;

.field private final b:Lcom/travelunion/flutter_biometrics/a$c;

.field private final c:Lio/flutter/plugin/common/MethodCall;

.field private final d:Landroidx/biometric/BiometricPrompt$PromptInfo;

.field private final e:Lcom/travelunion/flutter_biometrics/a$d;

.field private final f:Landroidx/biometric/BiometricPrompt$CryptoObject;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lio/flutter/plugin/common/MethodCall;Landroidx/biometric/BiometricPrompt$CryptoObject;Lcom/travelunion/flutter_biometrics/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "call",
            "cryptoObject",
            "completionHandler"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/travelunion/flutter_biometrics/a;->a:Landroidx/fragment/app/FragmentActivity;

    .line 15
    iput-object p4, p0, Lcom/travelunion/flutter_biometrics/a;->b:Lcom/travelunion/flutter_biometrics/a$c;

    .line 16
    iput-object p2, p0, Lcom/travelunion/flutter_biometrics/a;->c:Lio/flutter/plugin/common/MethodCall;

    .line 17
    new-instance p1, Lcom/travelunion/flutter_biometrics/a$d;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lcom/travelunion/flutter_biometrics/a$d;-><init>(Lcom/travelunion/flutter_biometrics/a$a;)V

    iput-object p1, p0, Lcom/travelunion/flutter_biometrics/a;->e:Lcom/travelunion/flutter_biometrics/a$d;

    .line 18
    new-instance p1, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    const-string p4, "reason"

    .line 19
    invoke-virtual {p2, p4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p4}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    const-string p4, "title"

    .line 20
    invoke-virtual {p2, p4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p4}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    const-string p4, "hint"

    .line 21
    invoke-virtual {p2, p4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p4}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    const-string p4, "cancel"

    .line 22
    invoke-virtual {p2, p4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/travelunion/flutter_biometrics/a;->d:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 24
    iput-object p3, p0, Lcom/travelunion/flutter_biometrics/a;->f:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lio/flutter/plugin/common/MethodCall;Lcom/travelunion/flutter_biometrics/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "call",
            "completionHandler"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/travelunion/flutter_biometrics/a;->a:Landroidx/fragment/app/FragmentActivity;

    .line 3
    iput-object p3, p0, Lcom/travelunion/flutter_biometrics/a;->b:Lcom/travelunion/flutter_biometrics/a$c;

    .line 4
    iput-object p2, p0, Lcom/travelunion/flutter_biometrics/a;->c:Lio/flutter/plugin/common/MethodCall;

    .line 5
    new-instance p1, Lcom/travelunion/flutter_biometrics/a$d;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/travelunion/flutter_biometrics/a$d;-><init>(Lcom/travelunion/flutter_biometrics/a$a;)V

    iput-object p1, p0, Lcom/travelunion/flutter_biometrics/a;->e:Lcom/travelunion/flutter_biometrics/a$d;

    .line 6
    new-instance p1, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    const-string v0, "reason"

    .line 7
    invoke-virtual {p2, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    const-string v0, "title"

    .line 8
    invoke-virtual {p2, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    const-string v0, "hint"

    .line 9
    invoke-virtual {p2, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    const-string v0, "cancel"

    .line 10
    invoke-virtual {p2, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/travelunion/flutter_biometrics/a;->d:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 12
    iput-object p3, p0, Lcom/travelunion/flutter_biometrics/a;->f:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-void
.end method

.method static synthetic a(Lcom/travelunion/flutter_biometrics/a;)Lcom/travelunion/flutter_biometrics/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/travelunion/flutter_biometrics/a;->b:Lcom/travelunion/flutter_biometrics/a$c;

    return-object p0
.end method

.method static synthetic b(Lcom/travelunion/flutter_biometrics/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/travelunion/flutter_biometrics/a;->f()V

    return-void
.end method

.method static synthetic c(Lcom/travelunion/flutter_biometrics/a;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/travelunion/flutter_biometrics/a;->a:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method private e()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/a;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/travelunion/flutter_biometrics/R$layout;->go_to_setting:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/travelunion/flutter_biometrics/R$id;->fingerprint_required:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    sget v2, Lcom/travelunion/flutter_biometrics/R$id;->go_to_setting_description:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    iget-object v4, p0, Lcom/travelunion/flutter_biometrics/a;->c:Lio/flutter/plugin/common/MethodCall;

    const-string v5, "required"

    invoke-virtual {v4, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/travelunion/flutter_biometrics/a;->c:Lio/flutter/plugin/common/MethodCall;

    const-string v4, "settingsDescription"

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/travelunion/flutter_biometrics/a;->a:Landroidx/fragment/app/FragmentActivity;

    sget v4, Lcom/travelunion/flutter_biometrics/R$style;->AlertDialogCustom:I

    invoke-direct {v1, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 7
    new-instance v2, Lcom/travelunion/flutter_biometrics/a$a;

    invoke-direct {v2, p0}, Lcom/travelunion/flutter_biometrics/a$a;-><init>(Lcom/travelunion/flutter_biometrics/a;)V

    .line 8
    new-instance v4, Lcom/travelunion/flutter_biometrics/a$b;

    invoke-direct {v4, p0}, Lcom/travelunion/flutter_biometrics/a$b;-><init>(Lcom/travelunion/flutter_biometrics/a;)V

    .line 9
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/travelunion/flutter_biometrics/a;->c:Lio/flutter/plugin/common/MethodCall;

    const-string v5, "settings"

    .line 11
    invoke-virtual {v1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/travelunion/flutter_biometrics/a;->c:Lio/flutter/plugin/common/MethodCall;

    const-string v2, "cancel"

    .line 12
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/a;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/a;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 2
    new-instance v0, Landroidx/biometric/BiometricPrompt;

    iget-object v1, p0, Lcom/travelunion/flutter_biometrics/a;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/travelunion/flutter_biometrics/a;->e:Lcom/travelunion/flutter_biometrics/a$d;

    invoke-direct {v0, v1, v2, p0}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 3
    iget-object v1, p0, Lcom/travelunion/flutter_biometrics/a;->f:Landroidx/biometric/BiometricPrompt$CryptoObject;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/travelunion/flutter_biometrics/a;->d:Landroidx/biometric/BiometricPrompt$PromptInfo;

    invoke-virtual {v0, v2, v1}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/travelunion/flutter_biometrics/a;->d:Landroidx/biometric/BiometricPrompt$PromptInfo;

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "bundle"
        }
    .end annotation

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignored"
        }
    .end annotation

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignored"
        }
    .end annotation

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "bundle"
        }
    .end annotation

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errString"
        }
    .end annotation

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x7

    if-eq p1, p2, :cond_3

    const/16 p2, 0x9

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/16 p2, 0xb

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_4

    .line 1
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/a;->b:Lcom/travelunion/flutter_biometrics/a$c;

    invoke-interface {p1}, Lcom/travelunion/flutter_biometrics/a$c;->a()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/a;->b:Lcom/travelunion/flutter_biometrics/a$c;

    invoke-interface {p1}, Lcom/travelunion/flutter_biometrics/a$c;->a()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/travelunion/flutter_biometrics/a;->e()V

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/a;->b:Lcom/travelunion/flutter_biometrics/a$c;

    const-string p2, "locked_out"

    const-string v0, "The operation was canceled because ERROR_LOCKOUT occurred too many times. Biometric authentication is disabled until the user unlocks with strong authentication (PIN/Pattern/Password)"

    invoke-interface {p1, p2, v0}, Lcom/travelunion/flutter_biometrics/a$c;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/a;->b:Lcom/travelunion/flutter_biometrics/a$c;

    const-string p2, "temp_locked_out"

    const-string v0, "The operation was canceled because the API is locked out due to too many attempts. This occurs after 5 failed attempts, and lasts for 30 seconds."

    invoke-interface {p1, p2, v0}, Lcom/travelunion/flutter_biometrics/a$c;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/a;->b:Lcom/travelunion/flutter_biometrics/a$c;

    const-string p2, "not_available"

    const-string v0, "Biometrics is not available on this device."

    invoke-interface {p1, p2, v0}, Lcom/travelunion/flutter_biometrics/a$c;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/travelunion/flutter_biometrics/a;->f()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/travelunion/flutter_biometrics/a;->b:Lcom/travelunion/flutter_biometrics/a$c;

    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/travelunion/flutter_biometrics/a$c;->b(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    .line 2
    invoke-direct {p0}, Lcom/travelunion/flutter_biometrics/a;->f()V

    return-void
.end method
