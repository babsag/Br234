.class public final Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;
.super Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "CaptureFinishedEvent.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final captureMode:Lcaf/io/l;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "captureMode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final time:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcaf/io/l;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcaf/io/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;->time:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;->captureMode:Lcaf/io/l;

    return-void
.end method
