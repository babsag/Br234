.class public final Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;
.super Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "SdkFinishedEvent.kt"


# instance fields
.field private final d:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdkResult"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "executionTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V
    .locals 0
    .param p1    # Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->d:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    return-void
.end method


# virtual methods
.method public final getExecutionTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->e:J

    return-wide v0
.end method

.method public final setExecutionTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->e:J

    return-void
.end method
