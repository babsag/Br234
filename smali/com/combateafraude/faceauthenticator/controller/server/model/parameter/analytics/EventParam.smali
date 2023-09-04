.class public final Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParam;
.super Ljava/lang/Object;
.source "EventParam.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008R\u0010\u0010\t\u001a\u00020\n8\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParam;",
        "",
        "peopleId",
        "",
        "event",
        "Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;",
        "eventOtherInfo",
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;",
        "(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V",
        "eventParamInfo",
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParamInfo;",
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
.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "peopleId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParamInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParam;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParamInfo;

    invoke-direct {p1, p2, p3}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParamInfo;-><init>(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParam;->b:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParamInfo;

    return-void
.end method
