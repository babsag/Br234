.class final Lio/sentry/android/core/b0;
.super Ljava/lang/Object;
.source "AndroidTransportGate.java"

# interfaces
.implements Lio/sentry/transport/ITransportGate;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/sentry/ILogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/android/core/b0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/sentry/android/core/b0;->b:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method a(Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;)Z
    .locals 2
    .param p1    # Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 1
    sget-object v0, Lio/sentry/android/core/b0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/b0;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/b0;->b:Lio/sentry/ILogger;

    invoke-static {v0, v1}, Lio/sentry/android/core/internal/util/ConnectivityChecker;->getConnectionStatus(Landroid/content/Context;Lio/sentry/ILogger;)Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/b0;->a(Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;)Z

    move-result v0

    return v0
.end method
