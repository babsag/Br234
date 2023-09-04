.class public abstract Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;
.super Ljava/lang/Object;
.source "EventOtherInfo.kt"


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SDK_NAME"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SDK_VERSION"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sessionId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.combateafraude.documentdetector"

    .line 2
    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;->a:Ljava/lang/String;

    const-string v0, "6.39.6"

    .line 3
    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;->b:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/combateafraude/documentdetector/controller/utils/Session;->sessionId:Ljava/lang/String;

    const-string v1, "sessionId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getSdkName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;->c:Ljava/lang/String;

    return-object v0
.end method
