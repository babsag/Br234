.class public final Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/MemoryInfoEvent;
.super Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "MemoryInfoEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0010\u0010\u0004\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/MemoryInfoEvent;",
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;",
        "usedMemory",
        "",
        "freeMemory",
        "(JJ)V",
        "FaceAuthenticator_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final c:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "usedMemory"
    .end annotation
.end field

.field private final d:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "freeMemory"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/MemoryInfoEvent;->c:J

    .line 3
    iput-wide p3, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/MemoryInfoEvent;->d:J

    return-void
.end method
