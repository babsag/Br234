.class public final Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/EventParam;
.super Ljava/lang/Object;
.source "EventParam.kt"


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "peopleId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/EventParamInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/documentdetector/controller/analytics/event/Event;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/EventParam;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/EventParamInfo;

    invoke-direct {p1, p2, p3}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/EventParamInfo;-><init>(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/EventParam;->b:Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/EventParamInfo;

    return-void
.end method
