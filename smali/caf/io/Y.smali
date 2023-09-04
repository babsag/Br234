.class public abstract Lcaf/io/Y;
.super Ljava/lang/Object;
.source "SentryHelper.java"


# static fields
.field private static final a:Lio/sentry/SentryOptions$BeforeSendCallback;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcaf/io/z0;->a:Lcaf/io/z0;

    sput-object v0, Lcaf/io/Y;->a:Lio/sentry/SentryOptions$BeforeSendCallback;

    return-void
.end method

.method private static synthetic a(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 4

    .line 7
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getLevel()Lio/sentry/SentryLevel;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getLevel()Lio/sentry/SentryLevel;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    if-eq p1, v0, :cond_0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryBaseEvent;->getBreadcrumbs()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Lio/sentry/SentryBaseEvent;->getBreadcrumbs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/Breadcrumb;

    .line 10
    invoke-virtual {v0}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDKFinish"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SDKStart"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Lio/sentry/Breadcrumb;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcaf/io/x0;

    invoke-direct {v0, p1, p2}, Lcaf/io/x0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V

    .line 2
    new-instance p2, Lio/sentry/protocol/User;

    invoke-direct {p2}, Lio/sentry/protocol/User;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lio/sentry/Sentry;->setUser(Lio/sentry/protocol/User;)V

    .line 5
    new-instance p0, Lcaf/io/y0;

    invoke-direct {p0, p3, p4}, Lcaf/io/y0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    const-string p0, "SDKStart"

    .line 6
    invoke-static {p1, p0}, Lio/sentry/Sentry;->addBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Ljava/lang/String;Ljava/lang/String;Lio/sentry/Scope;)V
    .locals 1

    const-string v0, "Tracking id"

    .line 1
    invoke-virtual {p2, v0, p0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "PersonId"

    .line 2
    invoke-virtual {p2, p0, p1}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic c(Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/sentry/SentryOptions;->setRelease(Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcaf/io/Y;->a:Lio/sentry/SentryOptions$BeforeSendCallback;

    invoke-virtual {p2, p0}, Lio/sentry/SentryOptions;->setBeforeSend(Lio/sentry/SentryOptions$BeforeSendCallback;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcaf/io/Y;->c(Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;Lio/sentry/Scope;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcaf/io/Y;->b(Ljava/lang/String;Ljava/lang/String;Lio/sentry/Scope;)V

    return-void
.end method

.method public static synthetic f(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 0

    invoke-static {p0, p1}, Lcaf/io/Y;->a(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object p0

    return-object p0
.end method
