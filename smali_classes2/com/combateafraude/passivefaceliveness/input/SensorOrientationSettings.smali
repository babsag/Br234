.class public Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;
.super Lcaf/io/S;
.source "SensorOrientationSettings.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final RECOMMENDED_THRESHOLD:D = 4.0


# instance fields
.field private orientationThreshold:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orientationThreshold"
    .end annotation
.end field


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcaf/io/S;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;->orientationThreshold:D

    return-void
.end method


# virtual methods
.method public getOrientationThreshold()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;->orientationThreshold:D

    return-wide v0
.end method

.method public setOrientationThreshold(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;->orientationThreshold:D

    return-void
.end method
