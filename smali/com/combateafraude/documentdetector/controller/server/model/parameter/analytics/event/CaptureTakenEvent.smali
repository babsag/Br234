.class public final Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureTakenEvent;
.super Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "CaptureTakenEvent.kt"


# instance fields
.field private final d:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageSize"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p1    # Lcom/combateafraude/documentdetector/controller/utils/SDKMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureTakenEvent;->d:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureTakenEvent;->e:Ljava/lang/Long;

    .line 4
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureTakenEvent;->f:Ljava/lang/Long;

    return-void
.end method
