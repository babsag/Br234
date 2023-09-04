.class public final Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB+\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;",
        "",
        "context",
        "Landroid/content/Context;",
        "peopleId",
        "",
        "useAnalytics",
        "",
        "sdkParameter",
        "Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;)V",
        "analyticsApi",
        "Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;",
        "Ljava/lang/Boolean;",
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
.field public static final Companion:Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static a:Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->Companion:Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->d:Ljava/lang/Boolean;

    .line 5
    iput-object p4, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->e:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    .line 6
    new-instance p1, Lcom/combateafraude/faceauthenticator/controller/server/Server;

    .line 7
    invoke-virtual {p4}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getStage()Lcom/combateafraude/faceauthenticator/input/CafStage;

    move-result-object p2

    sget-object p3, Lcom/combateafraude/faceauthenticator/input/UrlType;->ANALYTICS_URL:Lcom/combateafraude/faceauthenticator/input/UrlType;

    invoke-static {p2, p3}, Lcom/combateafraude/faceauthenticator/controller/utils/Enviroment;->getBaseURL(Lcom/combateafraude/faceauthenticator/input/CafStage;Lcom/combateafraude/faceauthenticator/input/UrlType;)Ljava/lang/String;

    move-result-object p2

    .line 8
    const-class p3, Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;

    const/4 p4, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p3, p2, p4, v0}, Lcom/combateafraude/faceauthenticator/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;IZ)V

    .line 9
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/controller/server/Server;->getInterface()Lcom/combateafraude/faceauthenticator/controller/server/api/Api;

    move-result-object p1

    const-string p2, "Server(\n        Analytic\u2026true\n    ).getInterface()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->f:Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;)V

    return-void
.end method

.method public static final synthetic access$getAnalyticsApi$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->f:Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->a:Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    return-object v0
.end method

.method public static final synthetic access$getPeopleId$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getUseAnalytics$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->a:Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    return-void
.end method

.method public static final logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 1
    .param p0    # Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->Companion:Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    return-void
.end method
