.class public final Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;
.super Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "CaptureInvalidEvent.kt"


# instance fields
.field private final d:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reason"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quality"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Lcom/combateafraude/documentdetector/input/CaptureStage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "captureStage"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V
    .locals 1
    .param p1    # Lcom/combateafraude/documentdetector/controller/utils/SDKMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/combateafraude/documentdetector/input/CaptureStage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;->d:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;->e:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;->f:Ljava/lang/Double;

    .line 5
    iput-object p4, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;->g:Ljava/lang/Long;

    .line 6
    iput-object p5, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;->h:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;->i:Lcom/combateafraude/documentdetector/input/CaptureStage;

    return-void
.end method
