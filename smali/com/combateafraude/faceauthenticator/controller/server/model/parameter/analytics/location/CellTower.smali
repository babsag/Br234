.class public Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/CellTower;
.super Ljava/lang/Object;
.source "CellTower.java"


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cellId"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locationAreaCode"
    .end annotation
.end field

.field private c:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobileCountryCode"
    .end annotation
.end field

.field private d:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobileNetworkCode"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signalStrength"
    .end annotation
.end field

.field private f:Ljava/lang/Integer;
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
    iput p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/CellTower;->a:I

    .line 3
    iput p2, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/CellTower;->b:I

    .line 4
    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/CellTower;->c:Ljava/lang/Integer;

    .line 5
    iput-object p4, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/CellTower;->d:Ljava/lang/Integer;

    .line 6
    iput p5, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/CellTower;->e:I

    .line 7
    iput-object p6, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/CellTower;->f:Ljava/lang/Integer;

    return-void
.end method
