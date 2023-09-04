.class public final Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/MemoryInfoEvent;
.super Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "MemoryInfoEvent.kt"


# instance fields
.field private final d:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "usedMemory"
    .end annotation
.end field

.field private final e:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "freeMemory"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/MemoryInfoEvent;->d:J

    .line 3
    iput-wide p3, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/MemoryInfoEvent;->e:J

    return-void
.end method
