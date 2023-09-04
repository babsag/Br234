.class public Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;
.super Ljava/lang/Object;
.source "CellTower.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private cellId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cellId"
    .end annotation
.end field

.field private locationAreaCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locationAreaCode"
    .end annotation
.end field

.field private mobileCountryCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobileCountryCode"
    .end annotation
.end field

.field private mobileNetworkCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobileNetworkCode"
    .end annotation
.end field

.field private signalStrength:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signalStrength"
    .end annotation
.end field

.field private timingAdvance:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timingAdvance"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;->cellId:I

    .line 3
    iput p2, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;->locationAreaCode:I

    .line 4
    iput-object p3, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;->mobileCountryCode:Ljava/lang/Integer;

    .line 5
    iput-object p4, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;->mobileNetworkCode:Ljava/lang/Integer;

    .line 6
    iput p5, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;->signalStrength:I

    .line 7
    iput-object p6, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/location/CellTower;->timingAdvance:Ljava/lang/Integer;

    return-void
.end method
