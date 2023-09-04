.class public Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;
.super Lcaf/io/S;
.source "SensorLuminositySettings.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final RECOMMENDED_THRESHOLD:I = 0x2


# instance fields
.field private luminosityThreshold:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "luminosityThreshold"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcaf/io/S;-><init>()V

    .line 2
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;->luminosityThreshold:I

    return-void
.end method


# virtual methods
.method public getLuminosityThreshold()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;->luminosityThreshold:I

    return v0
.end method

.method public setLuminosityThreshold(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;->luminosityThreshold:I

    return-void
.end method
