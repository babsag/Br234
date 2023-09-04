.class final Lio/sentry/android/ndk/c;
.super Ljava/lang/Object;
.source "SentryNdkUtil.java"


# direct methods
.method static a(Lio/sentry/protocol/SdkVersion;)V
    .locals 2
    .param p0    # Lio/sentry/protocol/SdkVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "maven:io.sentry:sentry-android-ndk"

    const-string v1, "6.8.0"

    .line 1
    invoke-virtual {p0, v0, v1}, Lio/sentry/protocol/SdkVersion;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
