.class public final Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFailedEvent;
.super Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "CaptureFailedEvent.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorMessage"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final stackTrace:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stackTrace"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFailedEvent;->errorType:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFailedEvent;->errorMessage:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFailedEvent;->stackTrace:Ljava/lang/String;

    return-void
.end method
