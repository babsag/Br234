.class public Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;
.super Lcaf/io/S;
.source "SensorStabilitySettings.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final RECOMMENDED_STABILITY_STABLED_MILLIS:J = 0x5dcL

.field public static final RECOMMENDED_THRESHOLD:D = 0.7


# instance fields
.field private stabilityStabledMillis:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stabilityStabledMillis"
    .end annotation
.end field

.field private stabilityThreshold:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stabilityThreshold"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcaf/io/S;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;->stabilityStabledMillis:J

    .line 3
    iput-wide p3, p0, Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;->stabilityThreshold:D

    return-void
.end method


# virtual methods
.method public getStabilityStabledMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;->stabilityStabledMillis:J

    return-wide v0
.end method

.method public getStabilityThreshold()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;->stabilityThreshold:D

    return-wide v0
.end method

.method public setStabilityStabledMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;->stabilityStabledMillis:J

    return-void
.end method

.method public setStabilityThreshold(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;->stabilityThreshold:D

    return-void
.end method
