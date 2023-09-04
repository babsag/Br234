.class public Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;
.super Ljava/lang/Object;
.source "DocumentDetectorCompatiblePlugin.java"

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

.method private b(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)Ljava/util/HashMap;
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
            "Lcom/combateafraude/documentdetector/output/failure/SDKFailure;",
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
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/output/failure/SDKFailure;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/output/failure/SDKFailure;->getCode()I

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
    iget-object v1, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c:Landroid/app/Activity;

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

.method private d(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mDocumentDetectorResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;",
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
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->getCaptures()[Lcom/combateafraude/documentdetector/output/Capture;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 5
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/output/Capture;->getImagePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "imagePath"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/output/Capture;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, "imageUrl"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/output/Capture;->getLabel()Ljava/lang/String;

    move-result-object v7

    const-string v8, "label"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/output/Capture;->getQuality()Ljava/lang/Double;

    move-result-object v5

    const-string v7, "quality"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "captures"

    .line 11
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->getTrackingId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "trackingId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized e(Lio/flutter/plugin/common/MethodCall;)V
    .locals 32
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
    new-instance v3, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    invoke-direct {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;-><init>(Ljava/lang/String;)V

    const-string v2, "peopleId"

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setPersonId(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    const-string v2, "useAnalytics"

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setAnalyticsSettings(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_0
    const-string v2, "expireTime"

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setGetImageUrlExpireTime(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_1
    const-string v2, "documentSteps"

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 12
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 13
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "document"

    .line 14
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/combateafraude/documentdetector/input/Document;->valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v8

    const-string v9, "android"

    .line 15
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    if-eqz v7, :cond_5

    const-string v9, "stepLabelStringResName"

    .line 16
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "string"

    invoke-direct {v1, v9, v10}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "illustrationDrawableResName"

    .line 17
    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "drawable"

    invoke-direct {v1, v10, v11}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "audioRawResName"

    .line 18
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v11, "raw"

    invoke-direct {v1, v7, v11}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 19
    new-instance v11, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    invoke-direct {v11, v8}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;-><init>(Lcom/combateafraude/documentdetector/input/Document;)V

    if-eqz v9, :cond_2

    .line 20
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->setStepLabel(I)Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    :cond_2
    if-eqz v10, :cond_3

    .line 21
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->setIllustration(I)Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    :cond_3
    if-eqz v7, :cond_4

    .line 22
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v11, v7}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->setStepAudio(I)Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    .line 23
    :cond_4
    aput-object v11, v4, v6

    goto :goto_1

    .line 24
    :cond_5
    new-instance v7, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    invoke-direct {v7, v8}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;-><init>(Lcom/combateafraude/documentdetector/input/Document;)V

    aput-object v7, v4, v6

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setDocumentSteps([Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    const-string v2, "showPreview"

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_7

    const-string v4, "show"

    .line 27
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v4, "title"

    .line 28
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    const-string v4, "subtitle"

    .line 29
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    const-string v4, "confirmLabel"

    .line 30
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    const-string v4, "retryLabel"

    .line 31
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 32
    new-instance v2, Lcom/combateafraude/documentdetector/input/PreviewSettings;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/combateafraude/documentdetector/input/PreviewSettings;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setPreviewSettings(Lcom/combateafraude/documentdetector/input/PreviewSettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_7
    const-string v2, "previewSettings"

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_8

    const-string v4, "title"

    .line 35
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    const-string v4, "subTitle"

    .line 36
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    const-string v4, "confirmLabel"

    .line 37
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    const-string v4, "retryLabel"

    .line 38
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    const-string v4, "show"

    .line 39
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    new-instance v2, Lcom/combateafraude/documentdetector/input/PreviewSettings;

    const/4 v7, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/combateafraude/documentdetector/input/PreviewSettings;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setPreviewSettings(Lcom/combateafraude/documentdetector/input/PreviewSettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_8
    const-string v2, "messageSettings"

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_9

    const-string v4, "waitMessage"

    .line 43
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    const-string v4, "fitTheDocumentMessage"

    .line 44
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    const-string v4, "holdItMessage"

    .line 45
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    const-string v4, "verifyingQualityMessage"

    .line 46
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    const-string v4, "lowQualityDocumentMessage"

    .line 47
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    const-string v4, "uploadingImageMessage"

    .line 48
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    const-string v4, "openDocumentWrongMessage"

    .line 49
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    const-string v4, "unsupportedDocumentMessage"

    .line 50
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    const-string v4, "documentNotFoundMessage"

    .line 51
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    const-string v4, "sensorLuminosityMessage"

    .line 52
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Ljava/lang/String;

    const-string v4, "sensorOrientationMessage"

    .line 53
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Ljava/lang/String;

    const-string v4, "sensorStabilityMessage"

    .line 54
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/String;

    const-string v4, "popupDocumentSubtitleMessage"

    .line 55
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/String;

    const-string v4, "positiveButtonMessage"

    .line 56
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Ljava/lang/String;

    .line 57
    sget-object v4, Lcom/combateafraude/documentdetector/input/Document;->RG_FRONT:Lcom/combateafraude/documentdetector/input/Document;

    const-string v6, "wrongDocumentMessage_RG_FRONT"

    .line 58
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessage:Ljava/lang/String;

    .line 59
    sget-object v4, Lcom/combateafraude/documentdetector/input/Document;->RG_BACK:Lcom/combateafraude/documentdetector/input/Document;

    const-string v6, "wrongDocumentMessage_RG_BACK"

    .line 60
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessage:Ljava/lang/String;

    .line 61
    sget-object v4, Lcom/combateafraude/documentdetector/input/Document;->RG_FULL:Lcom/combateafraude/documentdetector/input/Document;

    const-string v6, "wrongDocumentMessage_RG_FULL"

    .line 62
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessage:Ljava/lang/String;

    .line 63
    sget-object v4, Lcom/combateafraude/documentdetector/input/Document;->CNH_FRONT:Lcom/combateafraude/documentdetector/input/Document;

    const-string v6, "wrongDocumentMessage_CNH_FRONT"

    .line 64
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessage:Ljava/lang/String;

    .line 65
    sget-object v4, Lcom/combateafraude/documentdetector/input/Document;->CNH_BACK:Lcom/combateafraude/documentdetector/input/Document;

    const-string v6, "wrongDocumentMessage_CNH_BACK"

    .line 66
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessage:Ljava/lang/String;

    .line 67
    sget-object v4, Lcom/combateafraude/documentdetector/input/Document;->CNH_FULL:Lcom/combateafraude/documentdetector/input/Document;

    const-string v6, "wrongDocumentMessage_CNH_FULL"

    .line 68
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessage:Ljava/lang/String;

    .line 69
    sget-object v4, Lcom/combateafraude/documentdetector/input/Document;->CRLV:Lcom/combateafraude/documentdetector/input/Document;

    const-string v6, "wrongDocumentMessage_CRLV"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessage:Ljava/lang/String;

    .line 70
    sget-object v4, Lcom/combateafraude/documentdetector/input/Document;->RNE_FRONT:Lcom/combateafraude/documentdetector/input/Document;

    const-string v6, "wrongDocumentMessage_RNE_FRONT"

    .line 71
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessage:Ljava/lang/String;

    .line 72
    sget-object v4, Lcom/combateafraude/documentdetector/input/Document;->RNE_BACK:Lcom/combateafraude/documentdetector/input/Document;

    const-string v6, "wrongDocumentMessage_RNE_BACK"

    .line 73
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v4, Lcom/combateafraude/documentdetector/input/Document;->wrongDocumentFoundMessage:Ljava/lang/String;

    .line 74
    new-instance v2, Lcom/combateafraude/documentdetector/input/MessageSettings;

    const-string v21, ""

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    const-string v25, ""

    const-string v26, ""

    const-string v27, ""

    const-string v28, ""

    const-string v29, ""

    const-string v30, ""

    const-string v31, ""

    move-object v6, v2

    invoke-direct/range {v6 .. v31}, Lcom/combateafraude/documentdetector/input/MessageSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setMessageSettings(Lcom/combateafraude/documentdetector/input/MessageSettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_9
    const-string v2, "uploadSettings"

    .line 76
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_12

    .line 77
    new-instance v4, Lcom/combateafraude/documentdetector/input/UploadSettings;

    invoke-direct {v4}, Lcom/combateafraude/documentdetector/input/UploadSettings;-><init>()V

    const-string v6, "activityLayout"

    .line 78
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "layout"

    invoke-direct {v1, v6, v7}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "popUpLayout"

    .line 79
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "layout"

    invoke-direct {v1, v7, v8}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "compress"

    .line 80
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    const-string v9, "fileFormats"

    .line 81
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    const-string v10, "maxFileSize"

    .line 82
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    const-string v11, "intent"

    .line 83
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 84
    invoke-virtual {v4, v8}, Lcom/combateafraude/documentdetector/input/UploadSettings;->setCompress(Ljava/lang/Boolean;)Lcom/combateafraude/documentdetector/input/UploadSettings;

    :cond_a
    if-eqz v2, :cond_b

    .line 85
    invoke-virtual {v4, v2}, Lcom/combateafraude/documentdetector/input/UploadSettings;->setIntent(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/UploadSettings;

    :cond_b
    if-eqz v10, :cond_c

    .line 86
    invoke-virtual {v4, v10}, Lcom/combateafraude/documentdetector/input/UploadSettings;->setMaxFileSize(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/UploadSettings;

    :cond_c
    if-eqz v7, :cond_d

    .line 87
    invoke-virtual {v4, v7}, Lcom/combateafraude/documentdetector/input/UploadSettings;->setPopUpLayout(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/UploadSettings;

    :cond_d
    if-eqz v6, :cond_e

    .line 88
    invoke-virtual {v4, v6}, Lcom/combateafraude/documentdetector/input/UploadSettings;->setActivityLayout(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/UploadSettings;

    :cond_e
    if-eqz v9, :cond_11

    .line 89
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v2, [Lcom/combateafraude/documentdetector/input/FileFormat;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_10

    .line 90
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/combateafraude/documentdetector/input/FileFormat;->valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/FileFormat;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 91
    aput-object v8, v6, v7

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 92
    :cond_10
    invoke-virtual {v4, v6}, Lcom/combateafraude/documentdetector/input/UploadSettings;->setFileFormats([Lcom/combateafraude/documentdetector/input/FileFormat;)Lcom/combateafraude/documentdetector/input/UploadSettings;

    .line 93
    :cond_11
    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setUploadSettings(Lcom/combateafraude/documentdetector/input/UploadSettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_12
    const-string v2, "androidSettings"

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_2c

    const-string v4, "captureStages"

    .line 95
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_1a

    .line 96
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/combateafraude/documentdetector/input/CaptureStage;

    .line 97
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_19

    .line 98
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "durationMillis"

    .line 99
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "wantSensorCheck"

    .line 100
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    if-nez v9, :cond_13

    .line 101
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_13
    const-string v10, "qualitySettings"

    .line 102
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    if-eqz v10, :cond_15

    const-string v11, "threshold"

    .line 103
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    if-nez v10, :cond_14

    const-wide v10, 0x3ffccccccccccccdL    # 1.8

    .line 104
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 105
    :cond_14
    new-instance v11, Lcom/combateafraude/documentdetector/input/QualitySettings;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-direct {v11, v13, v14}, Lcom/combateafraude/documentdetector/input/QualitySettings;-><init>(D)V

    move-object v14, v11

    goto :goto_4

    :cond_15
    const/4 v14, 0x0

    :goto_4
    const-string v10, "detectionSettings"

    .line 106
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    if-eqz v10, :cond_18

    const-string v11, "threshold"

    .line 107
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    if-nez v11, :cond_16

    const-wide v15, 0x3fed1eb851eb851fL    # 0.91

    .line 108
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    :cond_16
    const-string v13, "consecutiveFrames"

    .line 109
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_17

    const/4 v10, 0x5

    .line 110
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 111
    :cond_17
    new-instance v13, Lcom/combateafraude/documentdetector/input/DetectionSettings;

    move-object/from16 v17, v7

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v13, v6, v7, v10}, Lcom/combateafraude/documentdetector/input/DetectionSettings;-><init>(DI)V

    move-object v15, v13

    goto :goto_5

    :cond_18
    move-object/from16 v17, v7

    const/4 v15, 0x0

    :goto_5
    const-string v6, "captureMode"

    .line 112
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/combateafraude/documentdetector/input/CaptureMode;->valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/CaptureMode;

    move-result-object v16

    .line 113
    new-instance v6, Lcom/combateafraude/documentdetector/input/CaptureStage;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move-object v11, v6

    invoke-direct/range {v11 .. v16}, Lcom/combateafraude/documentdetector/input/CaptureStage;-><init>(Ljava/lang/Long;ZLcom/combateafraude/documentdetector/input/QualitySettings;Lcom/combateafraude/documentdetector/input/DetectionSettings;Lcom/combateafraude/documentdetector/input/CaptureMode;)V

    aput-object v6, v17, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, v17

    goto/16 :goto_3

    :cond_19
    move-object v4, v7

    .line 114
    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setCaptureStages([Lcom/combateafraude/documentdetector/input/CaptureStage;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_1a
    const-string v4, "customization"

    .line 115
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_1d

    const-string v5, "styleResIdName"

    .line 116
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "style"

    invoke-direct {v1, v5, v6}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 117
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setStyle(I)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_1b
    const-string v5, "layoutResIdName"

    .line 118
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "layout"

    invoke-direct {v1, v5, v6}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 119
    invoke-virtual {v3, v5}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setLayout(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_1c
    const-string v6, "greenMaskResIdName"

    .line 120
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "drawable"

    invoke-direct {v1, v6, v7}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "whiteMaskResIdName"

    .line 121
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "drawable"

    invoke-direct {v1, v7, v8}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "redMaskResIdName"

    .line 122
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "drawable"

    invoke-direct {v1, v8, v9}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 123
    invoke-virtual {v3, v5}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setLayout(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    .line 124
    invoke-virtual {v3, v6, v7, v8}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setMask(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    const-string v5, "maskType"

    .line 125
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1d

    .line 126
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Mask: "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    invoke-static {v4}, Lcom/combateafraude/documentdetector/input/MaskType;->valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/MaskType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setMask(Lcom/combateafraude/documentdetector/input/MaskType;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_1d
    const-string v4, "enableSwitchCameraButton"

    .line 128
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1e

    const-string v4, "enableSwitchCameraButton"

    .line 129
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 130
    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->enableSwitchCameraButton(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_1e
    const-string v4, "enableGoogleServices"

    .line 131
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1f

    const-string v4, "enableGoogleServices"

    .line 132
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 133
    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->enableGoogleServices(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_1f
    const-string v4, "enableEmulator"

    .line 134
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_20

    const-string v4, "enableEmulator"

    .line 135
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 136
    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setUseEmulator(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_20
    const-string v4, "enableRootDevices"

    .line 137
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_21

    const-string v4, "enableRootDevices"

    .line 138
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 139
    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setUseRoot(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_21
    const-string v4, "useDeveloperMode"

    .line 140
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_22

    const-string v4, "useDeveloperMode"

    .line 141
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 142
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setUseDeveloperMode(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_22
    const-string v4, "useAdb"

    .line 143
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_23

    const-string v4, "useAdb"

    .line 144
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 145
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setUseAdb(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_23
    const-string v4, "useDebug"

    .line 146
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_24

    const-string v4, "useDebug"

    .line 147
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 148
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setUseDebug(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_24
    const-string v4, "resolution"

    .line 149
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_25

    .line 150
    invoke-static {v4}, Lcom/combateafraude/documentdetector/input/Resolution;->valueOf(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/Resolution;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setResolutionSettings(Lcom/combateafraude/documentdetector/input/Resolution;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_25
    const-string v4, "sensorSettings"

    .line 151
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_2c

    const-string v5, "sensorLuminositySettings"

    .line 152
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    if-eqz v5, :cond_26

    const-string v6, "luminosityThreshold"

    .line 153
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_27

    .line 154
    new-instance v6, Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;

    .line 155
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v6, v5}, Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;-><init>(I)V

    .line 156
    invoke-virtual {v3, v6}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setLuminositySensorSettings(Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    goto :goto_6

    :cond_26
    const/4 v5, 0x0

    .line 157
    invoke-virtual {v3, v5}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setLuminositySensorSettings(Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_27
    :goto_6
    const-string v5, "compressQuality"

    .line 158
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_28

    const-string v5, "compressQuality"

    .line 159
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 160
    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setCompressSettings(I)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_28
    const-string v2, "sensorOrientationSettings"

    .line 161
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_29

    const-string v5, "orientationThreshold"

    .line 162
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    if-eqz v2, :cond_2a

    .line 163
    new-instance v5, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;

    .line 164
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;-><init>(D)V

    .line 165
    invoke-virtual {v3, v5}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setOrientationSensorSettings(Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    goto :goto_7

    :cond_29
    const/4 v2, 0x0

    .line 166
    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setOrientationSensorSettings(Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_2a
    :goto_7
    const-string v2, "sensorStabilitySettings"

    .line 167
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_2b

    const-string v4, "stabilityStabledMillis"

    .line 168
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "stabilityThreshold"

    .line 169
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    if-eqz v4, :cond_2c

    if-eqz v2, :cond_2c

    .line 170
    new-instance v5, Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;

    .line 171
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;-><init>(JD)V

    .line 172
    invoke-virtual {v3, v5}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setStabilitySensorSettings(Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    goto :goto_8

    :cond_2b
    const/4 v2, 0x0

    .line 173
    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setStabilitySensorSettings(Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_2c
    :goto_8
    const-string v2, "popup"

    .line 174
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2d

    .line 175
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setPopupSettings(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_2d
    const-string v2, "sound"

    .line 176
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2e

    .line 177
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setAudioSettings(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_2e
    const-string v2, "requestTimeout"

    .line 178
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2f

    .line 179
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setNetworkSettings(I)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_2f
    const-string v2, "autoDetection"

    .line 180
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_30

    .line 181
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setAutoDetection(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    :cond_30
    const-string v2, "showDelay"

    .line 182
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_31

    const-string v4, "delay"

    .line 183
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_31

    const-string v4, "delay"

    .line 184
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2, v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->setCurrentStepDoneDelay(ZI)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;

    .line 186
    :cond_31
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->e:Landroid/content/Context;

    const-class v4, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "DocumentDetector"

    .line 187
    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->build()Lcom/combateafraude/documentdetector/input/DocumentDetector;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 188
    iget-object v2, v1, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c:Landroid/app/Activity;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
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

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    :try_start_0
    const-string p1, "DocumentDetectorResult"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    .line 2
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->wasSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p2, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->d(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->getSdkFailure()Lcom/combateafraude/documentdetector/output/failure/SDKFailure;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->b(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->a()Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;
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

    iput-object v0, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c:Landroid/app/Activity;

    .line 2
    iput-object p1, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

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

    iput-object v0, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->e:Landroid/content/Context;

    .line 2
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "document_detector"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->a:Lio/flutter/plugin/common/MethodChannel;

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
    iput-object v0, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c:Landroid/app/Activity;

    .line 2
    iget-object v1, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {v1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 3
    iput-object v0, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->d:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
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
    iget-object p1, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->a:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 2
    iput-object v0, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->e:Landroid/content/Context;
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
    iput-object p2, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 3
    invoke-direct {p0, p1}, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->e(Lio/flutter/plugin/common/MethodCall;)V

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

    iput-object p1, p0, Lcom/combateafraude/document_detector_compatible/DocumentDetectorCompatiblePlugin;->c:Landroid/app/Activity;
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
