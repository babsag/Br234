.class public final Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;
.super Ljava/lang/Object;
.source "Analytics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u001c\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J/\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0002\u0010\u001bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "instance",
        "Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;",
        "trackingId",
        "getTrackingId",
        "()Ljava/lang/String;",
        "log",
        "",
        "eventParam",
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParam;",
        "logEvent",
        "event",
        "Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;",
        "eventOtherInfo",
        "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;",
        "start",
        "context",
        "Landroid/content/Context;",
        "peopleId",
        "useAnalytics",
        "",
        "sdkParameter",
        "Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;)V",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;-><init>()V

    return-void
.end method

.method private static final a(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;

    invoke-direct {v0}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;-><init>()V

    .line 2
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getContext$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/ApplicationGetter;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->setAppPackageName(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getContext$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Landroid/content/Context;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 6
    :goto_1
    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/PowerGetter;->get(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->setPowerSaveMode(Ljava/lang/Boolean;)V

    .line 8
    new-instance v1, Lcom/scottyab/rootbeer/RootBeer;

    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getContext$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Landroid/content/Context;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-direct {v1, v3}, Lcom/scottyab/rootbeer/RootBeer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/scottyab/rootbeer/RootBeer;->isRooted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->setRooted(Z)V

    .line 9
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getUseAnalytics$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 10
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getContext$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Landroid/content/Context;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v2

    .line 11
    :goto_4
    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/ApplicationGetter;->getAll(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "getAll(\n                \u2026                        )"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->setInstalledApps([Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getContext$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Landroid/content/Context;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v2

    .line 14
    :goto_5
    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/LocationGetter;->get(Landroid/content/Context;)Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/LocationInfo;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;->setLocationInfo(Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/location/LocationInfo;)V

    .line 16
    :cond_6
    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam;

    invoke-direct {v1, v0}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam;-><init>(Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/ContextOtherInfo;)V

    .line 17
    :try_start_0
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getAnalyticsApi$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;->requestTrackingId(Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/TrackingIdParam;)Lretrofit2/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 18
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :cond_7
    move-object v0, v2

    :goto_6
    const-string v1, "tracking_id"

    if-eqz v0, :cond_8

    .line 19
    :try_start_1
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/combateafraude/faceauthenticator/controller/server/model/response/TrackingIdResponse;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/TrackingIdResponse;->getTrackingId()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_8
    move-object v3, v2

    .line 20
    :goto_7
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getContext$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Landroid/content/Context;

    move-result-object v4

    goto :goto_8

    :cond_9
    move-object v4, v2

    .line 21
    :goto_8
    invoke-static {v1, v3, v4}, Lcom/combateafraude/faceauthenticator/controller/preferences/PreferencesHelper;->savePref(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    if-eqz v0, :cond_b

    .line 22
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/faceauthenticator/controller/server/model/response/TrackingIdResponse;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/TrackingIdResponse;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 23
    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->Companion:Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;

    .line 24
    new-instance v3, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParam;

    .line 25
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-static {v4}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getPeopleId$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Ljava/lang/String;

    move-result-object v2

    .line 26
    :cond_a
    invoke-direct {v3, v2, p0, p1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParam;-><init>(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :try_start_2
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-static {p0}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getAnalyticsApi$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, v0, v3}, Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;->addEvent(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParam;)Lretrofit2/Call;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 29
    new-instance p1, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion$log$1;

    invoke-direct {p1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion$log$1;-><init>()V

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_9
    return-void
.end method

.method public static synthetic b(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;->a(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    return-void
.end method


# virtual methods
.method public final getTrackingId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getContext$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Landroid/content/Context;

    move-result-object v1

    :cond_1
    const-string v0, "tracking_id"

    .line 3
    invoke-static {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/preferences/PreferencesHelper;->getPref(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V
    .locals 3
    .param p1    # Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/Thread;

    .line 4
    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/analytics/a;

    invoke-direct {v1, p1, p2}, Lcom/combateafraude/faceauthenticator/controller/analytics/a;-><init>(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 7
    :cond_1
    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParam;

    .line 8
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getPeopleId$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-direct {v1, v2, p1, p2}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParam;-><init>(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 10
    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getInstance$cp()Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$getAnalyticsApi$p(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v0, v1}, Lcom/combateafraude/faceauthenticator/controller/server/api/AnalyticsApi;->addEvent(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/EventParam;)Lretrofit2/Call;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    new-instance p2, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion$log$1;

    invoke-direct {p2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion$log$1;-><init>()V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkParameter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->access$setInstance$cp(Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;)V

    return-void
.end method
