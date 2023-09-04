.class public final Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/MemoryInfoEvent;
.super Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "MemoryInfoEvent.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final freeMemory:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "freeMemory"
    .end annotation
.end field

.field private final usedMemory:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "usedMemory"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/MemoryInfoEvent;->usedMemory:J

    .line 3
    iput-wide p3, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/MemoryInfoEvent;->freeMemory:J

    return-void
.end method
