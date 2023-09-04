.class public final synthetic Lio/sentry/android/core/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Sentry$OptionsConfiguration;


# instance fields
.field public final synthetic a:Lio/sentry/ILogger;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lio/sentry/Sentry$OptionsConfiguration;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/w;->a:Lio/sentry/ILogger;

    iput-object p2, p0, Lio/sentry/android/core/w;->b:Landroid/content/Context;

    iput-object p3, p0, Lio/sentry/android/core/w;->c:Lio/sentry/Sentry$OptionsConfiguration;

    return-void
.end method


# virtual methods
.method public final configure(Lio/sentry/SentryOptions;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/w;->a:Lio/sentry/ILogger;

    iget-object v1, p0, Lio/sentry/android/core/w;->b:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/w;->c:Lio/sentry/Sentry$OptionsConfiguration;

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1, v2, p1}, Lio/sentry/android/core/SentryAndroid;->c(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
