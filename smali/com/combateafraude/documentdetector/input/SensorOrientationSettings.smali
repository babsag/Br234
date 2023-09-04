.class public Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;
.super Lcom/combateafraude/documentdetector/controller/sensors/SensorCommonSettings;
.source "SensorOrientationSettings.java"


# instance fields
.field private a:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orientationThreshold"
    .end annotation
.end field


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/sensors/SensorCommonSettings;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;->a:D

    return-void
.end method


# virtual methods
.method public getOrientationThreshold()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;->a:D

    return-wide v0
.end method

.method public setOrientationThreshold(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;->a:D

    return-void
.end method
