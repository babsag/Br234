.class public Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;
.super Lcom/combateafraude/documentdetector/controller/sensors/SensorCommonSettings;
.source "SensorLuminositySettings.java"


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "luminosityThreshold"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/sensors/SensorCommonSettings;-><init>()V

    .line 2
    iput p1, p0, Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;->a:I

    return-void
.end method


# virtual methods
.method public getLuminosityThreshold()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;->a:I

    return v0
.end method

.method public setLuminosityThreshold(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;->a:I

    return-void
.end method
