.class public final Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParamInfo;
.super Ljava/lang/Object;
.source "EventParamInfo.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final eventOtherInfo:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "otherInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 1
    .param p1    # Lcaf/io/t;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParamInfo;->eventOtherInfo:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcaf/io/t;->c()Lcaf/io/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcaf/io/u;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParamInfo;->type:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcaf/io/t;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParamInfo;->name:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcaf/io/t;->a()Ljava/lang/String;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParamInfo;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getEventOtherInfo()Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParamInfo;->eventOtherInfo:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;

    return-object v0
.end method
