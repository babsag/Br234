.class public abstract Lcom/combateafraude/faceauthenticator/controller/utils/SentryHelper;
.super Ljava/lang/Object;
.source "SentryHelper.java"


# static fields
.field private static a:Lio/sentry/SentryOptions$BeforeSendCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/utils/a;->a:Lcom/combateafraude/faceauthenticator/controller/utils/a;

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/utils/SentryHelper;->a:Lio/sentry/SentryOptions$BeforeSendCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/SentryAndroidOptions;)V
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
    sget-object p0, Lcom/combateafraude/faceauthenticator/controller/utils/SentryHelper;->a:Lio/sentry/SentryOptions$BeforeSendCallback;

    invoke-virtual {p2, p0}, Lio/sentry/SentryOptions;->setBeforeSend(Lio/sentry/SentryOptions$BeforeSendCallback;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/combateafraude/faceauthenticator/controller/utils/SentryHelper;->a(Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method public static finish(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SDKFinish"

    .line 1
    invoke-static {p0, v0}, Lio/sentry/Sentry;->addBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 1
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/utils/b;

    invoke-direct {v0, p1, p2}, Lcom/combateafraude/faceauthenticator/controller/utils/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string p0, "SDKStart"

    .line 5
    invoke-static {p1, p0}, Lio/sentry/Sentry;->addBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
