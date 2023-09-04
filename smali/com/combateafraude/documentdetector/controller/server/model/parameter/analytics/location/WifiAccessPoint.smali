.class public Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/WifiAccessPoint;
.super Ljava/lang/Object;
.source "WifiAccessPoint.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "macAddress"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signalStrength"
    .end annotation
.end field

.field private c:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel"
    .end annotation
.end field

.field private d:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signalToNoiseRatio"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/WifiAccessPoint;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/WifiAccessPoint;->b:I

    .line 4
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/WifiAccessPoint;->c:Ljava/lang/Integer;

    .line 5
    iput-object p4, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/location/WifiAccessPoint;->d:Ljava/lang/Integer;

    return-void
.end method
