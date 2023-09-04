.class public final Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;
.super Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "SdkFinishedEvent.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private executionTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "executionTime"
    .end annotation
.end field

.field private final passiveFaceLivenessResult:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdkResult"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V
    .locals 0
    .param p1    # Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->passiveFaceLivenessResult:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    return-void
.end method


# virtual methods
.method public final getExecutionTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->executionTime:J

    return-wide v0
.end method

.method public final setExecutionTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->executionTime:J

    return-void
.end method
