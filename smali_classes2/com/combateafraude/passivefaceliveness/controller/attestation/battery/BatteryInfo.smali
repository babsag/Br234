.class public Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field currentPercentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currentPercentage"
    .end annotation
.end field

.field isCharging:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isCharging"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;->isCharging:Z

    .line 3
    iput p2, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;->currentPercentage:I

    return-void
.end method


# virtual methods
.method public getCurrentPercentage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;->currentPercentage:I

    return v0
.end method

.method public isCharging()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;->isCharging:Z

    return v0
.end method
