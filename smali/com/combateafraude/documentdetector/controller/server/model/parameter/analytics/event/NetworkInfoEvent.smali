.class public Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;
.super Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "NetworkInfoEvent.java"


# instance fields
.field d:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uploadSpeed"
    .end annotation
.end field

.field e:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadSpeed"
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtype"
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extra"
    .end annotation
.end field

.field i:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signalStrength"
    .end annotation
.end field

.field j:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connectionQuality"
    .end annotation
.end field

.field k:Lcom/combateafraude/documentdetector/controller/utils/Capabilities;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capabilities"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/combateafraude/documentdetector/controller/utils/Capabilities;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->d:I

    .line 3
    iput p2, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->e:I

    .line 4
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->f:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->g:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->h:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->i:I

    .line 8
    iput-object p8, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->k:Lcom/combateafraude/documentdetector/controller/utils/Capabilities;

    .line 9
    iput p7, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->j:I

    return-void
.end method


# virtual methods
.method public getConnectionQuality()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->j:I

    return v0
.end method

.method public getDownloadSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->e:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->d:I

    return v0
.end method
