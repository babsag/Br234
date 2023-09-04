.class public Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"


# instance fields
.field private a:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "homeMobileCountryCode"
    .end annotation
.end field

.field private b:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "homeMobileNetworkCode"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radioType"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "carrier"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "considerIp"
    .end annotation
.end field

.field private f:[Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/CellTower;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cellTowers"
    .end annotation
.end field

.field private g:[Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/WifiAccessPoint;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wifiAccessPoints"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/CellTower;[Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/WifiAccessPoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/LocationInfo;->a:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/LocationInfo;->b:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/LocationInfo;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/LocationInfo;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/LocationInfo;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/LocationInfo;->f:[Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/CellTower;

    .line 8
    iput-object p7, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/LocationInfo;->g:[Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/WifiAccessPoint;

    return-void
.end method
