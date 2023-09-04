.class public final Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureRequestedEvent;
.super Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "CaptureRequestedEvent.kt"


# instance fields
.field private final d:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "documentDetectorStep"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Lcom/combateafraude/documentdetector/input/CaptureStage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "captureStage"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;Lcom/combateafraude/documentdetector/input/CaptureStage;)V
    .locals 1
    .param p1    # Lcom/combateafraude/documentdetector/controller/utils/SDKMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/combateafraude/documentdetector/input/CaptureStage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureStage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureRequestedEvent;->d:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureRequestedEvent;->e:Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    .line 4
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureRequestedEvent;->f:Lcom/combateafraude/documentdetector/input/CaptureStage;

    return-void
.end method
