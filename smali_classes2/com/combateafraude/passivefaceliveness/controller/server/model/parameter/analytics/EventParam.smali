.class public final Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParam;
.super Ljava/lang/Object;
.source "EventParam.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final eventParamInfo:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParamInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final peopleId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "peopleId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcaf/io/t;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParam;->peopleId:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParamInfo;

    invoke-direct {p1, p2, p3}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParamInfo;-><init>(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParam;->eventParamInfo:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParamInfo;

    return-void
.end method
