.class public final Lcom/combateafraude/documentdetector/controller/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static a:Lcom/combateafraude/documentdetector/controller/analytics/Analytics;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lcom/combateafraude/documentdetector/controller/server/api/AnalyticsApi;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->Companion:Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/documentdetector/input/ProxySettings;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->c:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string p1, "sdkActivity.applicationContext"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->d:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/combateafraude/documentdetector/controller/server/Server;

    const-class v1, Lcom/combateafraude/documentdetector/controller/server/api/AnalyticsApi;

    const-string v2, "https://api.analytics.combateafraude.com"

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/combateafraude/documentdetector/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;ILandroid/content/Context;Lcom/combateafraude/documentdetector/input/ProxySettings;Z)V

    .line 6
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/server/Server;->getInterface()Lcom/combateafraude/documentdetector/controller/server/api/Api;

    move-result-object p1

    const-string p2, "Server(\n        Analytic\u2026true\n    ).getInterface()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/combateafraude/documentdetector/controller/server/api/AnalyticsApi;

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->e:Lcom/combateafraude/documentdetector/controller/server/api/AnalyticsApi;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/documentdetector/input/ProxySettings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/documentdetector/input/ProxySettings;)V

    return-void
.end method

.method public static final synthetic access$getAnalyticsApi$p(Lcom/combateafraude/documentdetector/controller/analytics/Analytics;)Lcom/combateafraude/documentdetector/controller/server/api/AnalyticsApi;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->e:Lcom/combateafraude/documentdetector/controller/server/api/AnalyticsApi;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/combateafraude/documentdetector/controller/analytics/Analytics;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/combateafraude/documentdetector/controller/analytics/Analytics;
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->a:Lcom/combateafraude/documentdetector/controller/analytics/Analytics;

    return-object v0
.end method

.method public static final synthetic access$getPeopleId$p(Lcom/combateafraude/documentdetector/controller/analytics/Analytics;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getUseAnalytics$p(Lcom/combateafraude/documentdetector/controller/analytics/Analytics;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/combateafraude/documentdetector/controller/analytics/Analytics;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->a:Lcom/combateafraude/documentdetector/controller/analytics/Analytics;

    return-void
.end method

.method public static final logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 1
    .param p0    # Lcom/combateafraude/documentdetector/controller/analytics/event/Event;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->Companion:Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    return-void
.end method
