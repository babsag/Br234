.class public final Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkStartedEvent;
.super Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "SdkStartedEvent.kt"


# instance fields
.field private final d:Lcom/combateafraude/documentdetector/input/DocumentDetector;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "builder"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/combateafraude/documentdetector/input/DocumentDetector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/combateafraude/documentdetector/input/DocumentDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkStartedEvent;->d:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkStartedEvent;->e:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkStartedEvent;->f:Ljava/lang/String;

    return-void
.end method
