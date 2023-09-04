.class public final Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;
.super Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "CaptureFinishedEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0002X\u0083\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;",
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;",
        "time",
        "",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "FaceAuthenticator_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final c:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;->c:Ljava/lang/Long;

    return-void
.end method
