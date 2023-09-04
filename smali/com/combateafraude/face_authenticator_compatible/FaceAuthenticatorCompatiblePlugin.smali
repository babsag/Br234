.class public Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;
.super Ljava/lang/Object;
.source "FaceAuthenticatorCompatiblePlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# instance fields
.field private a:Lio/flutter/plugin/common/MethodChannel;

.field private b:Lio/flutter/plugin/common/MethodChannel$Result;

.field private c:Landroid/app/Activity;

.field private d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "success"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private b(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkFailure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceName",
            "resourceType"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private d(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mFaceAuthenticatorResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->isAuthenticated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "authenticated"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->getSignedResponse()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signedResponse"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->getTrackingId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackingId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->getLensFacing()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "lensFacing"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized e(Lio/flutter/plugin/common/MethodCall;)V
    .locals 12
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "call"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "mobileToken"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "peopleId"

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    new-instance v2, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    invoke-direct {v2, v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setPeopleId(Ljava/lang/String;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    const-string v0, "useAnalytics"

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setAnalyticsSettings(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_0
    const-string v0, "androidSettings"

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_b

    const-string v1, "customization"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_2

    const-string v3, "styleResIdName"

    .line 10
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "style"

    invoke-direct {p0, v3, v4}, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setStyle(I)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_1
    const-string v3, "layoutResIdName"

    .line 12
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "layout"

    invoke-direct {p0, v3, v4}, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "greenMaskResIdName"

    .line 13
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "drawable"

    invoke-direct {p0, v4, v5}, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "whiteMaskResIdName"

    .line 14
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "drawable"

    invoke-direct {p0, v5, v6}, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "redMaskResIdName"

    .line 15
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "drawable"

    invoke-direct {p0, v1, v6}, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 16
    invoke-virtual {v2, v3}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setLayout(Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    .line 17
    invoke-virtual {v2, v4, v5, v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setMask(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_2
    const-string v1, "sensorSettings"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_4

    const-string v3, "sensorStabilitySettings"

    .line 19
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_3

    const-string v3, "messageResourceIdName"

    .line 20
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "string"

    invoke-direct {p0, v3, v4}, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "stabilityStabledMillis"

    .line 21
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "stabilityThreshold"

    .line 22
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 23
    new-instance v11, Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v7, v3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;-><init>(IJD)V

    invoke-virtual {v2, v11}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setStabilitySensorSettings(Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v2, v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setStabilitySensorSettings(Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_4
    :goto_0
    const-string v1, "enableEmulator"

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "enableEmulator"

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 27
    invoke-virtual {v2, v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setUseEmulator(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_5
    const-string v1, "enableRootDevices"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "enableRootDevices"

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 30
    invoke-virtual {v2, v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setUseRoot(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_6
    const-string v1, "useDeveloperMode"

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "useDeveloperMode"

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setUseDeveloperMode(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_7
    const-string v1, "useAdb"

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "useAdb"

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setUseAdb(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_8
    const-string v1, "useDebug"

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "useDebug"

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setUseDebug(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_9
    const-string v1, "enableBrightnessIncrease"

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v1, "enableBrightnessIncrease"

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 42
    invoke-virtual {v2, v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->enableBrightnessIncrease(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_a
    const-string v1, "enableSwitchCameraButton"

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v1, "enableSwitchCameraButton"

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 45
    invoke-virtual {v2, v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->enableSwitchCameraButton(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_b
    const-string v0, "videoCapture"

    .line 46
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_d

    const-string v1, "use"

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v3, "time"

    .line 48
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v1, :cond_d

    if-eqz v0, :cond_c

    .line 49
    new-instance v1, Lcom/combateafraude/faceauthenticator/input/VideoCapture;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/combateafraude/faceauthenticator/input/VideoCapture;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setCaptureSettings(Lcom/combateafraude/faceauthenticator/input/CaptureSettings;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    goto :goto_1

    .line 50
    :cond_c
    new-instance v0, Lcom/combateafraude/faceauthenticator/input/VideoCapture;

    invoke-direct {v0}, Lcom/combateafraude/faceauthenticator/input/VideoCapture;-><init>()V

    invoke-virtual {v2, v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setCaptureSettings(Lcom/combateafraude/faceauthenticator/input/CaptureSettings;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_d
    :goto_1
    const-string v0, "imageCapture"

    .line 51
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_f

    const-string v1, "use"

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v3, "afterPictureMillis"

    .line 53
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string v4, "beforePictureMillis"

    .line 54
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v1, :cond_f

    if-eqz v3, :cond_e

    if-eqz v0, :cond_e

    .line 55
    new-instance v1, Lcom/combateafraude/faceauthenticator/input/ImageCapture;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/combateafraude/faceauthenticator/input/ImageCapture;-><init>(JJ)V

    invoke-virtual {v2, v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setCaptureSettings(Lcom/combateafraude/faceauthenticator/input/CaptureSettings;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    goto :goto_2

    .line 56
    :cond_e
    new-instance v0, Lcom/combateafraude/faceauthenticator/input/ImageCapture;

    invoke-direct {v0}, Lcom/combateafraude/faceauthenticator/input/ImageCapture;-><init>()V

    invoke-virtual {v2, v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setCaptureSettings(Lcom/combateafraude/faceauthenticator/input/CaptureSettings;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_f
    :goto_2
    const-string v0, "enableSound"

    .line 57
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setAudioSettings(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_10
    const-string v0, "sound"

    .line 59
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "raw"

    invoke-direct {p0, v0, v1}, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setAudioSettings(I)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_11
    const-string v0, "requestTimeout"

    .line 61
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setNetworkSettings(I)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    .line 63
    :cond_12
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->e:Landroid/content/Context;

    const-class v3, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "FaceAuthenticator"

    .line 64
    invoke-virtual {v2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->build()Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c:Landroid/app/Activity;

    const/16 v3, 0x3eb

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "useOpenEyeValidation"

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    const-string v1, "openEyesThreshold"

    .line 67
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-eqz p1, :cond_13

    .line 68
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0, p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setEyesClosedSettings(ZLjava/lang/Double;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    goto :goto_3

    .line 69
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->setEyesClosedSettings(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_14
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    :try_start_0
    const-string p1, "FaceAuthenticatorResult"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    .line 2
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->wasSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p2, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->d(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->getSdkFailure()Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->b(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->a()Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 12
    monitor-exit p0

    return p1
.end method

.method public declared-synchronized onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c:Landroid/app/Activity;

    .line 2
    iput-object p1, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 3
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flutterPluginBinding"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->e:Landroid/content/Context;

    .line 2
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "face_authenticator"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->a:Lio/flutter/plugin/common/MethodChannel;

    .line 3
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDetachedFromActivity()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c:Landroid/app/Activity;

    .line 2
    iget-object v1, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {v1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 3
    iput-object v0, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDetachedFromActivityForConfigChanges()V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->a:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 2
    iput-object v0, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->e:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p2, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 3
    invoke-direct {p0, p1}, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->e(Lio/flutter/plugin/common/MethodCall;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/face_authenticator_compatible/FaceAuthenticatorCompatiblePlugin;->c:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
