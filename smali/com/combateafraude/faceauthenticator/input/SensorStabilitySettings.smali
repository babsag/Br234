.class public Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;
.super Lcom/combateafraude/faceauthenticator/controller/sensors/SensorCommonSettings;
.source "SensorStabilitySettings.java"


# instance fields
.field private b:J

.field private c:D


# direct methods
.method public constructor <init>(IJD)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorCommonSettings;-><init>(I)V

    .line 2
    iput-wide p2, p0, Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;->b:J

    .line 3
    iput-wide p4, p0, Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;->c:D

    return-void
.end method


# virtual methods
.method public getStabilityStabledMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;->b:J

    return-wide v0
.end method

.method public getStabilityThreshold()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;->c:D

    return-wide v0
.end method

.method public setStabilityStabledMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;->b:J

    return-void
.end method

.method public setStabilityThreshold(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;->c:D

    return-void
.end method
