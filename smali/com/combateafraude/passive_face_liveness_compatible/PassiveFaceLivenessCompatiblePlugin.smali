.class public Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;
.super Ljava/lang/Object;
.source "PassiveFaceLivenessCompatiblePlugin.java"

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

.method private b(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)Ljava/util/HashMap;
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
            "Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;",
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
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
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
    iget-object v1, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->c:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->c:Landroid/app/Activity;

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

.method private d(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPassiveFaceLivenessResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;",
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
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->getImagePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imagePath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->getCapturePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "capturePath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageUrl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->getSignedResponse()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signedResponse"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->getTrackingId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackingId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->getLensFacing()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "lensFacing"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized e(Lio/flutter/plugin/common/MethodCall;)V
    .locals 24
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

    move-object/from16 v1, p0

    monitor-enter p0

    move-object/from16 v0, p1

    .line 1
    :try_start_0
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "mobileToken"

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    new-instance v3, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    invoke-direct {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;-><init>(Ljava/lang/String;)V

    const-string v2, "peopleId"

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "peopleId"

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setPersonId(Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_0
    const-string v2, "personName"

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "personName"

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setPersonName(Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_1
    const-string v2, "personCPF"

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "personCPF"

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setPersonCPF(Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_2
    const-string v2, "useAnalytics"

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setAnalyticsSettings(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_3
    const-string v2, "showPreview"

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_4

    const-string v4, "title"

    .line 16
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    const-string v4, "subTitle"

    .line 17
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    const-string v4, "confirmLabel"

    .line 18
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    const-string v4, "retryLabel"

    .line 19
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    const-string v4, "show"

    .line 20
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 21
    new-instance v2, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setPreviewSettings(Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_4
    const-string v2, "previewSettings"

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_5

    const-string v4, "title"

    .line 24
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    const-string v4, "subTitle"

    .line 25
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    const-string v4, "confirmLabel"

    .line 26
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    const-string v4, "retryLabel"

    .line 27
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    const-string v4, "show"

    .line 28
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 29
    new-instance v2, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setPreviewSettings(Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_5
    const-string v2, "messageSettings"

    .line 31
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_6

    const-string v4, "stepName"

    .line 32
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    const-string v4, "waitMessage"

    .line 33
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    const-string v4, "faceNotFoundMessage"

    .line 34
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    const-string v4, "faceTooFarMessage"

    .line 35
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    const-string v4, "faceTooCloseMessage"

    .line 36
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    const-string v4, "faceNotFittedMessage"

    .line 37
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    const-string v4, "multipleFaceDetectedMessage"

    .line 38
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    const-string v4, "verifyingLivenessMessage"

    .line 39
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    const-string v4, "holdItMessage"

    .line 40
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    const-string v4, "invalidFaceMessage"

    .line 41
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    const-string v4, "eyesClosedMessage"

    .line 42
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Ljava/lang/String;

    const-string v4, "notCenterXMessage"

    .line 43
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Ljava/lang/String;

    const-string v4, "notCenterYMessage"

    .line 44
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/String;

    const-string v4, "notCenterZMessage"

    .line 45
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/String;

    const-string v4, "sensorLuminosityMessage"

    .line 46
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Ljava/lang/String;

    const-string v4, "sensorOrientationMessage"

    .line 47
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Ljava/lang/String;

    const-string v4, "sensorStabilityMessage"

    .line 48
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, Ljava/lang/String;

    const-string v4, "captureProcessingErrorMessage"

    .line 49
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Ljava/lang/String;

    .line 50
    new-instance v2, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-object v5, v2

    invoke-direct/range {v5 .. v23}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setMessageSettings(Lcom/combateafraude/passivefaceliveness/input/MessageSettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_6
    const-string v2, "androidSettings"

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_14

    const-string v4, "customization"

    .line 53
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_8

    const-string v5, "styleResIdName"

    .line 54
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "style"

    invoke-direct {v1, v5, v6}, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 55
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setStyle(I)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_7
    const-string v5, "layoutResIdName"

    .line 56
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "layout"

    invoke-direct {v1, v5, v6}, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "greenMaskResIdName"

    .line 57
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "drawable"

    invoke-direct {v1, v6, v7}, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "whiteMaskResIdName"

    .line 58
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "drawable"

    invoke-direct {v1, v7, v8}, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "redMaskResIdName"

    .line 59
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "drawable"

    invoke-direct {v1, v8, v9}, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 60
    invoke-virtual {v3, v5}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setLayout(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    .line 61
    invoke-virtual {v3, v6, v7, v8}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setMask(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    const-string v5, "maskType"

    .line 62
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 63
    invoke-static {v4}, Lcom/combateafraude/passivefaceliveness/input/MaskType;->valueOf(Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/MaskType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setMask(Lcom/combateafraude/passivefaceliveness/input/MaskType;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_8
    const-string v4, "sensorSettings"

    .line 64
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_b

    const-string v5, "sensorStabilitySettings"

    .line 65
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    if-eqz v5, :cond_9

    const-string v6, "stabilityStabledMillis"

    .line 66
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const-string v7, "stabilityThreshold"

    .line 67
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    .line 68
    new-instance v7, Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;

    .line 69
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v8, v6

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v7, v8, v9, v5, v6}, Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;-><init>(JD)V

    .line 70
    invoke-virtual {v3, v7}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setStabilitySensorSettings(Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    goto :goto_0

    :cond_9
    const/4 v5, 0x0

    .line 71
    invoke-virtual {v3, v5}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setStabilitySensorSettings(Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_a
    :goto_0
    const-string v5, "sensorOrientationAndroid"

    .line 72
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_b

    const-string v5, "orientationThreshold"

    .line 73
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    if-eqz v4, :cond_b

    .line 74
    new-instance v5, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;

    .line 75
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;-><init>(D)V

    invoke-virtual {v3, v5}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setOrientationSensorSettings(Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_b
    const-string v4, "showButtonTime"

    .line 76
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v4, "showButtonTime"

    .line 77
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 78
    invoke-virtual {v3, v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setShowButtonTime(I)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_c
    const-string v4, "enableSwitchCameraButton"

    .line 79
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string v4, "enableSwitchCameraButton"

    .line 80
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 81
    invoke-virtual {v3, v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->enableSwitchCameraButton(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_d
    const-string v4, "enableGoogleServices"

    .line 82
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e

    const-string v4, "enableGoogleServices"

    .line 83
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 84
    invoke-virtual {v3, v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->enableGoogleServices(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_e
    const-string v4, "enableEmulator"

    .line 85
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f

    const-string v4, "enableEmulator"

    .line 86
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 87
    invoke-virtual {v3, v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setUseEmulator(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_f
    const-string v4, "enableRootDevices"

    .line 88
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_10

    const-string v4, "enableRootDevices"

    .line 89
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 90
    invoke-virtual {v3, v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setUseRoot(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_10
    const-string v4, "enableBrightnessIncrease"

    .line 91
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_11

    const-string v4, "enableBrightnessIncrease"

    .line 92
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 93
    invoke-virtual {v3, v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->enableBrightnessIncrease(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_11
    const-string v4, "useDeveloperMode"

    .line 94
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    const-string v4, "useDeveloperMode"

    .line 95
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 96
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setUseDeveloperMode(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_12
    const-string v4, "useAdb"

    .line 97
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_13

    const-string v4, "useAdb"

    .line 98
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 99
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setUseAdb(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_13
    const-string v4, "useDebug"

    .line 100
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_14

    const-string v4, "useDebug"

    .line 101
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 102
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setUseDebug(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_14
    const-string v2, "videoCapture"

    .line 103
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_16

    const-string v4, "use"

    .line 104
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "time"

    .line 105
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v4, :cond_16

    if-eqz v2, :cond_15

    .line 106
    new-instance v4, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v4, v2}, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setCaptureSettings(Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    goto :goto_1

    .line 107
    :cond_15
    new-instance v2, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;

    invoke-direct {v2}, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;-><init>()V

    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setCaptureSettings(Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_16
    :goto_1
    const-string v2, "imageCapture"

    .line 108
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_18

    const-string v4, "use"

    .line 109
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "afterPictureMillis"

    .line 110
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v6, "beforePictureMillis"

    .line 111
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v4, :cond_18

    if-eqz v5, :cond_17

    if-eqz v2, :cond_17

    .line 112
    new-instance v4, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;

    .line 113
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v7, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setCaptureSettings(Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    goto :goto_2

    .line 114
    :cond_17
    new-instance v2, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;

    invoke-direct {v2}, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;-><init>()V

    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setCaptureSettings(Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_18
    :goto_2
    const-string v2, "enableSound"

    .line 115
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_19

    .line 116
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setAudioSettings(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_19
    const-string v2, "sound"

    .line 117
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "raw"

    invoke-direct {v1, v2, v4}, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 118
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setAudioSettings(I)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_1a
    const-string v2, "showDelay"

    .line 119
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1b

    const-string v4, "delay"

    .line 120
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1b

    const-string v4, "delay"

    .line 121
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 122
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2, v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setCurrentStepDoneDelay(ZI)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_1b
    const-string v2, "stage"

    .line 123
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 124
    invoke-static {v2}, Lcom/combateafraude/passivefaceliveness/input/CafStage;->valueOf(Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/CafStage;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setStage(Lcom/combateafraude/passivefaceliveness/input/CafStage;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    :cond_1c
    const-string v2, "requestTimeout"

    .line 125
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setNetworkSettings(I)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    .line 127
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->e:Landroid/content/Context;

    const-class v4, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    sget-object v2, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->PARAMETER_NAME:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->build()Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 129
    iget-object v2, v1, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->c:Landroid/app/Activity;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    :try_start_0
    const-string p1, "PassiveFaceLivenessResult"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    .line 2
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->wasSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p2, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->d(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->getSdkFailure()Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->b(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->a()Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;
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

    iput-object v0, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->c:Landroid/app/Activity;

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

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

    iput-object v0, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->e:Landroid/content/Context;

    .line 2
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "passive_face_liveness"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->a:Lio/flutter/plugin/common/MethodChannel;

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
    iput-object v0, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->c:Landroid/app/Activity;

    .line 2
    iget-object v1, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {v1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 3
    iput-object v0, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
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
    iget-object p1, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->a:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 2
    iput-object v0, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->e:Landroid/content/Context;
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
    iput-object p2, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 3
    invoke-direct {p0, p1}, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->e(Lio/flutter/plugin/common/MethodCall;)V

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

    iput-object p1, p0, Lcom/combateafraude/passive_face_liveness_compatible/PassiveFaceLivenessCompatiblePlugin;->c:Landroid/app/Activity;
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
