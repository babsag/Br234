.class public Lcom/combateafraude/documentdetector/input/CaptureStage;
.super Ljava/lang/Object;
.source "CaptureStage.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "durationMillis"
    .end annotation
.end field

.field private b:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wantSensorCheck"
    .end annotation
.end field

.field private c:Lcom/combateafraude/documentdetector/input/QualitySettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "qualitySettings"
    .end annotation
.end field

.field private d:Lcom/combateafraude/documentdetector/input/DetectionSettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detectionSettings"
    .end annotation
.end field

.field private e:Lcom/combateafraude/documentdetector/input/CaptureMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "captureMode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;ZLcom/combateafraude/documentdetector/input/QualitySettings;Lcom/combateafraude/documentdetector/input/DetectionSettings;Lcom/combateafraude/documentdetector/input/CaptureMode;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/combateafraude/documentdetector/input/QualitySettings;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/combateafraude/documentdetector/input/DetectionSettings;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/combateafraude/documentdetector/input/CaptureMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/CaptureStage;->a:Ljava/lang/Long;

    .line 3
    iput-boolean p2, p0, Lcom/combateafraude/documentdetector/input/CaptureStage;->b:Z

    .line 4
    iput-object p3, p0, Lcom/combateafraude/documentdetector/input/CaptureStage;->c:Lcom/combateafraude/documentdetector/input/QualitySettings;

    .line 5
    iput-object p4, p0, Lcom/combateafraude/documentdetector/input/CaptureStage;->d:Lcom/combateafraude/documentdetector/input/DetectionSettings;

    .line 6
    iput-object p5, p0, Lcom/combateafraude/documentdetector/input/CaptureStage;->e:Lcom/combateafraude/documentdetector/input/CaptureMode;

    return-void
.end method


# virtual methods
.method public getCaptureMode()Lcom/combateafraude/documentdetector/input/CaptureMode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/CaptureStage;->e:Lcom/combateafraude/documentdetector/input/CaptureMode;

    return-object v0
.end method

.method public getDetectionSettings()Lcom/combateafraude/documentdetector/input/DetectionSettings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/CaptureStage;->d:Lcom/combateafraude/documentdetector/input/DetectionSettings;

    return-object v0
.end method

.method public getDurationMillis()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/CaptureStage;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public getQualitySettings()Lcom/combateafraude/documentdetector/input/QualitySettings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/CaptureStage;->c:Lcom/combateafraude/documentdetector/input/QualitySettings;

    return-object v0
.end method

.method public isWantSensorCheck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/CaptureStage;->b:Z

    return v0
.end method

.method public setCaptureMode(Lcom/combateafraude/documentdetector/input/CaptureMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/CaptureStage;->e:Lcom/combateafraude/documentdetector/input/CaptureMode;

    return-void
.end method
