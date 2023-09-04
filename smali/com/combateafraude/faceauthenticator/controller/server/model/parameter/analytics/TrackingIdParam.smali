.class public final Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam;
.super Ljava/lang/Object;
.source "TrackingIdParam.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u00020\u00088\u0002X\u0083D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam;",
        "",
        "contextOtherInfo",
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;",
        "(Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;)V",
        "getContextOtherInfo",
        "()Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;",
        "source",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "otherInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceProject"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam;->Companion:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;)V
    .locals 1
    .param p1    # Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "contextOtherInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam;->a:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;

    const-string p1, "android"

    .line 2
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContextOtherInfo()Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam;->a:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;

    return-object v0
.end method
