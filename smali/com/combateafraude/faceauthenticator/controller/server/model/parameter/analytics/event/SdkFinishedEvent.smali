.class public final Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;
.super Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;
.source "SdkFinishedEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;",
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;",
        "faceAuthenticatorResult",
        "Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;",
        "(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;)V",
        "executionTime",
        "",
        "getExecutionTime",
        "()J",
        "setExecutionTime",
        "(J)V",
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
.field private final c:Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdkResult"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "executionTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;)V
    .locals 0
    .param p1    # Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->c:Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    return-void
.end method


# virtual methods
.method public final getExecutionTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->d:J

    return-wide v0
.end method

.method public final setExecutionTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->d:J

    return-void
.end method
