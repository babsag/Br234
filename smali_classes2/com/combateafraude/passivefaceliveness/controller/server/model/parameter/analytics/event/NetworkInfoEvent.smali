.class public Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;
.super Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "NetworkInfoEvent.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field capabilities:Lcom/combateafraude/passivefaceliveness/controller/utils/a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capabilities"
    .end annotation
.end field

.field connectionQuality:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connectionQuality"
    .end annotation
.end field

.field downloadSpeed:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadSpeed"
    .end annotation
.end field

.field extra:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extra"
    .end annotation
.end field

.field signalStrength:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signalStrength"
    .end annotation
.end field

.field subtype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtype"
    .end annotation
.end field

.field type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field uploadSpeed:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uploadSpeed"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/combateafraude/passivefaceliveness/controller/utils/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->uploadSpeed:I

    .line 3
    iput p2, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->downloadSpeed:I

    .line 4
    iput-object p3, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->type:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->subtype:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->extra:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->signalStrength:I

    .line 8
    iput-object p8, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->capabilities:Lcom/combateafraude/passivefaceliveness/controller/utils/a;

    .line 9
    iput p7, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->connectionQuality:I

    return-void
.end method


# virtual methods
.method public getConnectionQuality()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->connectionQuality:I

    return v0
.end method

.method public getDownloadSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->downloadSpeed:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;->uploadSpeed:I

    return v0
.end method
