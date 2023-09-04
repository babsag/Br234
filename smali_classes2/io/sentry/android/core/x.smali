.class public final synthetic Lio/sentry/android/core/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Sentry$OptionsConfiguration;


# static fields
.field public static final synthetic a:Lio/sentry/android/core/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/core/x;

    invoke-direct {v0}, Lio/sentry/android/core/x;-><init>()V

    sput-object v0, Lio/sentry/android/core/x;->a:Lio/sentry/android/core/x;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lio/sentry/SentryOptions;)V
    .locals 0

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {p1}, Lio/sentry/android/core/SentryAndroid;->b(Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
