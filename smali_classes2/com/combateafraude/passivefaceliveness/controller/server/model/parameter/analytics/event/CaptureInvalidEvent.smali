.class public final Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;
.super Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "CaptureInvalidEvent.kt"


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

.field private final reason:Lcaf/io/B;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reason"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcaf/io/l;Lcaf/io/B;)V
    .locals 0
    .param p1    # Lcaf/io/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcaf/io/B;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;->captureMode:Lcaf/io/l;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;->reason:Lcaf/io/B;

    return-void
.end method
